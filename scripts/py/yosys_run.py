import sys
import os

#lib_file = '/gro/cad/pdk/saed90/synopsys/SAED90_EDK/SAED_EDK90nm/Digital_Standard_cell_Library/synopsys/models/saed90nm_typ.lib'

def main():
  print('INFO: yosys_run is running...\n')
  design_list = sys.argv[1]
  dl_file = open(os.environ['TOP_DIR'] + '/cfg/design_list.txt', 'r')
  for each_line in dl_file:
    if each_line == '\n' or each_line == '':
      break
    os.chdir(os.environ['TOP_DIR'] + '/' + each_line.rstrip('\n'))
    for param_dir, tcl, sdc in os.walk(os.environ['TOP_DIR'] + '/' + each_line.rstrip('\n')):
      for sdc_file in sdc:
        if sdc_file.endswith(".sdc"):
          yosys_tcl_path = param_dir.replace('sdc','yosys_tcl')
          if not os.path.exists(yosys_tcl_path):
            os.mkdir(yosys_tcl_path)
          # extracting clock info
          #clk_per, clk_port = clock_info(os.path.join(param_dir,sdc_file))
          clk_per = clock_info(os.path.join(param_dir,sdc_file))
          # extract design name from each_line
          output_v_name = param_dir.split('/')[-2] + '.' + sdc_file.split('.')[0] + '.yosys.v'
          result_path_per_design = os.environ['TOP_DIR'] + '/results/' + each_line.split('/')[-1].rstrip('\n') + '/' +output_v_name.split('.')[0]
          if not os.path.exists(result_path_per_design):
            os.makedirs(result_path_per_design)
          yosys_tcl_creation(yosys_tcl_path, os.path.join(param_dir,sdc_file), output_v_name, clk_per, param_dir.replace('sdc','top.v'), result_path_per_design)
          os.chdir(os.environ['TOP_DIR'] + '/' + each_line.rstrip('\n'))
  print('INFO: yosys_run is complete!\n')

def rreplace(str, old, new, occurence):
  li = str.rsplit(old, occurence)
  return new.join(li)

# generating yosys tcl scripts for each design
def yosys_tcl_creation( yosys_tcl_path, in_sdc_file, out_v_file, clock_period, in_v_file, result_path_per_design ):
  print (in_v_file)
  lib_file = os.environ['LIB_PATH']
  os.chdir(yosys_tcl_path)
  yosys_tcl_name = rreplace(out_v_file, '.v', '.tcl', 1)
  f = open(yosys_tcl_name,"w+")
  f.write('yosys -import\n\n' \
          'set design_name top\n' \
          'set lib_file ' + lib_file + '\n' 
          'set clock_period ' + clock_period + '\n' \
          #'set clock_port ' + clock_port + '\n' \
          'set run_dir ' + os.environ['TOP_DIR'] + '/tools/yosys\n' \
          'set in_v_file ' + in_v_file + '\n' \
          'set in_sdc_file ' + in_sdc_file + '\n' \
          'set out_v_file ' + out_v_file + '\n\n'
          'read_verilog $in_v_file\n' \
          'hierarchy -check -top $design_name\n' \
          'synth -top $design_name -flatten\n' \
          'opt -purge\n' \
          'techmap\n' \
          'dfflibmap -liberty $lib_file\n' \
          'opt\n' \
          'abc -D $clock_period -constr $in_sdc_file -liberty $lib_file -showtmp\n' \
          'stat -liberty $lib_file\n' \
          'write_verilog -noattr -noexpr -nohex -nodec ' + result_path_per_design + '/$out_v_file\n' \
  )
  f.close()
  yosys_run(yosys_tcl_name, result_path_per_design)

# running yosys with a given tcl
def yosys_run( yosys_tcl_name , result_path):
  yosys_tool_path = os.path.join(os.environ['TOP_DIR'], 'tools/yosys')
  yosys_output_log = os.path.join(result_path, yosys_tcl_name.replace('yosys.tcl','yosys.output.log'))
  os.system(yosys_tool_path + '/yosys ./' + yosys_tcl_name + ' > ' + yosys_output_log)

# returns the clock_port and the clock_period for yosys_tcl_creation
def clock_info ( sdc_input_path ):
  #clk_port = 0
  with open (sdc_input_path) as f:
    lines = f.readlines()
    for each_line in lines:
      if each_line.startswith('create_clock'):
        clk_period = each_line.split()[4]
      #if each_line.startswith('set_input_delay'):
        #if 'clk' in each_line.split()[5]:
          #clk_port = each_line.split()[5].replace(']','')

  #return clk_period, clk_port   
  return clk_period
  
if __name__ == '__main__':
  main()
