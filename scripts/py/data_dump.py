import os
import csv
import re

def main():
  filename_csv = []
  gate_csv = []
  period_csv = []
  slack_csv = []
  area_csv = []

  result_dir = os.path.join(os.environ['TOP_DIR'], 'results')
  for dirName, subdirList, fileList in os.walk(result_dir):
    for each_file in fileList:
      if each_file.endswith('.yosys.output.log'):
        
        yosys_output_file = os.path.join(dirName, each_file)
        #print('==================================================')
        #print(each_file)
        with open(yosys_output_file, 'r') as f_handle:
          for each_line in f_handle:
    
            if 'upsize -D' in each_line:
              period = re.findall(r'\d+\.\d+|\d+', each_line)[0]
              period_csv.append(period)

            if 'Gates' and 'Cap' and 'Area' and 'Delay' in each_line:
              #print(each_line.split())
              gates = re.findall(r'\d+\.\d+|\d+', each_line)[-8]
              area = re.findall(r'\d+\.\d+|\d+', each_line)[-4]
              delay = re.findall(r'\d+\.\d+|\d+', each_line)[-2]
              slack = str(float(period) - float(delay))
              slack_csv.append(slack)

              filename_csv.append(each_file)
              gate_csv.append(gates)
              area_csv.append(area)
              #print('gates = {}, area = {}, delay = {}'.format(gates, area, delay))
              #print('period = {}, slack = {}'.format(period,slack))

  csv_file_path = os.path.join(result_dir, 'yosys_report.csv')
  with open (csv_file_path, mode='w') as csv_file:
    fieldnames = ['Filename', 'Period(ps)', 'Slack(ps)', 'Gate Count', 'Area (um^2)']
    writer = csv.DictWriter(csv_file, fieldnames=fieldnames)
    writer.writeheader()
    for i in range(len(filename_csv)):
      writer.writerow({'Filename':filename_csv[i], 'Period(ps)':period_csv[i], 'Slack(ps)':slack_csv[i], 'Gate Count':gate_csv[i], 'Area (um^2)':area_csv[i]})
  
if __name__ ==  '__main__':
  main()
      
