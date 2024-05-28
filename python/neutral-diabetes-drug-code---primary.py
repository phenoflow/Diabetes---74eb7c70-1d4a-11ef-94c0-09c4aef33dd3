# Ellie Paige, Jessica Barret, David Stevens, Ruth H Keogh, Michael J Sweeting, Irwin Nazareth, Irene Peterson, Angela M Wood, 2024.

import sys, csv, re

codes = [{"code":"94477992","system":"readv2"},{"code":"99553998","system":"readv2"},{"code":"86173998","system":"readv2"},{"code":"86314998","system":"readv2"},{"code":"97322998","system":"readv2"},{"code":"88851998","system":"readv2"},{"code":"86316998","system":"readv2"},{"code":"98982998","system":"readv2"},{"code":"95158992","system":"readv2"},{"code":"98227998","system":"readv2"},{"code":"96048998","system":"readv2"},{"code":"86183998","system":"readv2"},{"code":"99557998","system":"readv2"},{"code":"88413998","system":"readv2"},{"code":"96286992","system":"readv2"},{"code":"95162992","system":"readv2"},{"code":"86312998","system":"readv2"},{"code":"88999998","system":"readv2"},{"code":"86182998","system":"readv2"},{"code":"96047998","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('diabetes-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["neutral-diabetes-drug-code---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["neutral-diabetes-drug-code---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["neutral-diabetes-drug-code---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
