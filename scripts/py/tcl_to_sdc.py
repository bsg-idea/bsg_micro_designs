import sys
import os

def main():
  #input argument assignment
  
  design_list = sys.argv[1]
  #fo4 = str(sys.argv[2])
  #load = str(sys.argv[3])
  
  #read each design in the design list, replace the fo4 value and load value
  dl_file = open(os.environ['TOP_DIR'] + '/cfg/design_list.txt', 'r')
  for each_line in dl_file:
    os.chdir(os.environ['TOP_DIR'] + '/' + each_line.rstrip('\n'))
    if not os.path.exists('sdc'):
      os.mkdir('sdc')
    os.system("find . -type f -name '*.tcl' -print0 | xargs -0 sed -i'' -e 's/$::env(FO4_VAL)/" + os.environ['FO4_VALUE'] + "/g'")
    os.system("find . -type f -name '*.tcl' -print0 | xargs -0 sed -i'' -e 's#\[load_of \[get_lib_pin \*\/$::env(LOAD)\]\]#" + os.environ['LOAD_VALUE'] + "#g'")
    os.system("find . -type f -name '*.tcl' -print0 | xargs -0 sed -i'' -e 's/\(^.*bsg_async.*$\)/\#\1/'")
    #os.chdir(os.environ['TOP_DIR'] + '/tools/bsg_sv2v')
    
    # for each constraint file in the directory
    for param_dir, tcl_dir, const_file in os.walk(os.environ['TOP_DIR'] + '/' + each_line.rstrip('\n')):
      for const in const_file:
        if const.endswith(".tcl"):
          sdc_path = param_dir.replace('tcl','sdc')
          if not os.path.exists(sdc_path):
            os.mkdir(sdc_path)
          sdc_name = const.replace('tcl','sdc') + '.sdc'
          os.system('make DESIGN_CONSTRAINTS_FILE=' + os.path.join(param_dir,const) + ' -C ' + os.environ['TOP_DIR'] + '/tools/bsg_sv2v')
          os.system('mv ' + os.environ['TOP_DIR'] + '/tools/bsg_sv2v/results/gcd.elab.v.sdc ' + sdc_path + '/' + sdc_name) 
          #print(os.path.join(param_dir,const))
          #print(const.split('.')[:1])
          #print(param_dir.replace('tcl','sdc')) 
    

if __name__ == '__main__':
  main()
