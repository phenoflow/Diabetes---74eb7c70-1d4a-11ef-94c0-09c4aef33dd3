# Ellie Paige, Jessica Barret, David Stevens, Ruth H Keogh, Michael J Sweeting, Irwin Nazareth, Irene Peterson, Angela M Wood, 2024.

import sys, csv, re

codes = [{"code":"87770998","system":"readv2"},{"code":"87180998","system":"readv2"},{"code":"87182998","system":"readv2"},{"code":"87773998","system":"readv2"},{"code":"87771998","system":"readv2"},{"code":"87166998","system":"readv2"},{"code":"90048998","system":"readv2"},{"code":"87775998","system":"readv2"},{"code":"87772998","system":"readv2"},{"code":"90048997","system":"readv2"},{"code":"89763997","system":"readv2"},{"code":"89763996","system":"readv2"},{"code":"87774998","system":"readv2"},{"code":"90048996","system":"readv2"},{"code":"87179998","system":"readv2"},{"code":"87181998","system":"readv2"},{"code":"87165998","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('diabetes-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["diabetes-drug-code-rosigl---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["diabetes-drug-code-rosigl---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["diabetes-drug-code-rosigl---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
