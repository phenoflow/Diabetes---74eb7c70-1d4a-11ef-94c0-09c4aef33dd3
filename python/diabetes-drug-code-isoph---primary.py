# Ellie Paige, Jessica Barret, David Stevens, Ruth H Keogh, Michael J Sweeting, Irwin Nazareth, Irene Peterson, Angela M Wood, 2024.

import sys, csv, re

codes = [{"code":"90686998","system":"readv2"},{"code":"98228997","system":"readv2"},{"code":"98481998","system":"readv2"},{"code":"99533998","system":"readv2"},{"code":"86275998","system":"readv2"},{"code":"86270998","system":"readv2"},{"code":"86269998","system":"readv2"},{"code":"95163992","system":"readv2"},{"code":"97323998","system":"readv2"},{"code":"96291992","system":"readv2"},{"code":"87385979","system":"readv2"},{"code":"91505998","system":"readv2"},{"code":"81962998","system":"readv2"},{"code":"96287992","system":"readv2"},{"code":"86180998","system":"readv2"},{"code":"99532998","system":"readv2"},{"code":"98048990","system":"readv2"},{"code":"86177998","system":"readv2"},{"code":"96055998","system":"readv2"},{"code":"94322998","system":"readv2"},{"code":"86178998","system":"readv2"},{"code":"97526998","system":"readv2"},{"code":"97599992","system":"readv2"},{"code":"86179998","system":"readv2"},{"code":"96056998","system":"readv2"},{"code":"86193998","system":"readv2"},{"code":"86081998","system":"readv2"},{"code":"96045998","system":"readv2"},{"code":"90688998","system":"readv2"},{"code":"86271998","system":"readv2"},{"code":"96282992","system":"readv2"},{"code":"99554998","system":"readv2"},{"code":"86267998","system":"readv2"},{"code":"86194998","system":"readv2"},{"code":"86274998","system":"readv2"},{"code":"86191998","system":"readv2"},{"code":"90687998","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('diabetes-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["diabetes-drug-code-isoph---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["diabetes-drug-code-isoph---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["diabetes-drug-code-isoph---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
