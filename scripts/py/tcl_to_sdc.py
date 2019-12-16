import sys
import os

def main():
  #input argument assignment
  
  design_list = sys.argv[1]
  #fo4 = str(sys.argv[2])
  #load = str(sys.argv[3])
  
  #read each design in the design list, replace the fo4 value with the actual value of fo4
  dl_file = open(os.environ['TOP_DIR'] + '/cfg/design_list.txt', 'r')
  for each_line in dl_file:
    os.chdir(os.environ['TOP_DIR'] + '/' + each_line.rstrip('\n'))
    os.system("find . -type f -name '*.tcl' -print0 | xargs -0 sed -i'' -e 's/$::env(FO4_VAL)/" + os.environ['FO4_VALUE'] + "/g'")
    os.system("find . -type f -name '*.tcl' -print0 | xargs -0 sed -i'' -e 's#\[load_of \[get_lib_pin \*\/$::env(LOAD)\]\]#" + os.environ['LOAD_VALUE'] + "#g'")
  #print(os.environ['TOP_DIR'])
if __name__ == '__main__':
  main()
