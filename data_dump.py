import os
import csv
import re

def main():
  designname_csv = []
  gate_csv = []
  period_csv = []
  slack_csv = []
  area_csv = []
  max_delay_csv = []
  print('INFO: data_dump is running...\n')

  result_dir = os.path.join(os.environ['TOP_DIR'], 'results')
  for dirName, subdirList, fileList in os.walk(result_dir):
    for each_file in fileList:
      if each_file.endswith('.sdc.log'):

        yosys_output_file = os.path.join(dirName, each_file)

        with open(yosys_output_file, 'r') as f_handle:
          for each_line in f_handle:
    
            if 'upsize -D' in each_line:
              period = re.findall(r'\d+\.\d+|\d+', each_line)[0]

            if 'Gates' and 'Cap' and 'Area' and 'Delay' in each_line:
              gates = re.findall(r'\d+\.\d+|\d+', each_line)[-8]
              area = re.findall(r'\d+\.\d+|\d+', each_line)[-4]
              delay = re.findall(r'\d+\.\d+|\d+', each_line)[-2]
              slack = str(float(period) - float(delay))

              max_delay_csv.append(delay)
              slack_csv.append(slack)
              gate_csv.append(gates)
              area_csv.append(area)
              designname_csv.append(dirName.split('/')[-1])
              period_csv.append(period)

  csv_file_path = os.path.join(result_dir, 'yosys_report.csv')
  with open (csv_file_path, mode='w') as csv_file:
    fieldnames = ['DesignName', 'Period(ps)', 'Max Delay(ps)', 'Slack(ps)', 'Gate Count', 'Area (um^2)']
    writer = csv.DictWriter(csv_file, fieldnames=fieldnames)
    writer.writeheader()
    for i in range(len(designname_csv)):
      writer.writerow({'DesignName':designname_csv[i], 'Period(ps)':period_csv[i], 'Max Delay(ps)':max_delay_csv[i], 'Slack(ps)':slack_csv[i], 'Gate Count':gate_csv[i], 'Area (um^2)':area_csv[i]})
  
  print('INFO: data_dump is complete!\n')

if __name__ ==  '__main__':
  main()
      
