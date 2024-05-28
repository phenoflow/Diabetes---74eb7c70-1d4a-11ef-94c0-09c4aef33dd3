# Ellie Paige, Jessica Barret, David Stevens, Ruth H Keogh, Michael J Sweeting, Irwin Nazareth, Irene Peterson, Angela M Wood, 2024.

import sys, csv, re

codes = [{"code":"87434979","system":"readv2"},{"code":"81164998","system":"readv2"},{"code":"60064979","system":"readv2"},{"code":"98198998","system":"readv2"},{"code":"91509998","system":"readv2"},{"code":"87442979","system":"readv2"},{"code":"86264998","system":"readv2"},{"code":"86265998","system":"readv2"},{"code":"86263998","system":"readv2"},{"code":"87435979","system":"readv2"},{"code":"99402998","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('diabetes-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["diabetes-drug-code-aspart---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["diabetes-drug-code-aspart---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["diabetes-drug-code-aspart---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
