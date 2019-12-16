import sys
import os

lib_file = '/gro/cad/pdk/saed90/synopsys/SAED90_EDK/SAED_EDK90nm/Digital_Standard_cell_Library/synopsys/models/saed90nm_typ.lib'

def main():
  design_list = sys.argv[1]
  dl_file = open(os.environ['TOP_DIR'] + '/cfg/design_list.txt', 'r')
  for each_line in dl_file:
    os.chdir(os.environ['TOP_DIR'] + '/' + each_line.rstrip('\n'))
    for param_dir, tcl, sdc in os.walk('.'):
      for sdc_file in sdc:
        if sdc_file.endswith(".sdc"):
          yosys_tcl_path = param_dir.replace('sdc','yosys_tcl')
          if not os.path.exists(yosys_tcl_path):
            os.mkdir(yosys_tcl_path)
          # extracting clock info
          clk_per, clk_port = clock_info(os.path.join(param_dir,sdc_file))
          #print (clk_per)
          #print (clk_port)

          # extract design name from each_line
          output_v_name = param_dir.split('/')[-2] + '.' + sdc_file.split('.')[0] + '.yosys.v'
          #print (output_v_name)
          yosys_tcl_creation(yosys_tcl_path, os.path.join(param_dir,sdc_file), output_v_name, clk_per, clk_port, param_dir.replace('sdc','top.v'))
          os.chdir(os.environ['TOP_DIR'] + '/' + each_line.rstrip('\n'))


def rreplace(str, old, new, occurence):
  li = str.rsplit(old, occurence)
  return new.join(li)

def yosys_tcl_creation( yosys_tcl_path, in_sdc_file, out_v_file, clock_period, clock_port, in_v_file ):
  os.chdir(yosys_tcl_path)
  yosys_tcl_name = rreplace(out_v_file, '.v', '.tcl', 1)
  #print(yosys_tcl_name)
  f = open(yosys_tcl_name,"w+")
  f.write('yosys -import\n\n' \
          'set design_name top\n' \
          'set lib_file ' + lib_file + '\n' 
          'set clock_period ' + clock_period + '\n' \
          'set clock_port ' + clock_port + '\n' \
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
          'write_verilog -noattr -noexpr -nohex -nodec $out_v_file\n' \
  )
  f.close()

def clock_info ( sdc_input_path ):
  with open (sdc_input_path) as f:
    lines = f.readlines()
    for each_line in lines:
      if each_line.startswith('create_clock'):
        clk_period = each_line.split()[4]
      if each_line.startswith('set_input_delay'):
        if 'clk' in each_line.split()[5]:
          clk_port = each_line.split()[5].replace(']','')

  return clk_period, clk_port   
    
if __name__ == '__main__':
  main()
