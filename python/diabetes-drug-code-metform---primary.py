# Ellie Paige, Jessica Barret, David Stevens, Ruth H Keogh, Michael J Sweeting, Irwin Nazareth, Irene Peterson, Angela M Wood, 2024.

import sys, csv, re

codes = [{"code":"91221997","system":"readv2"},{"code":"98125989","system":"readv2"},{"code":"98654989","system":"readv2"},{"code":"87054998","system":"readv2"},{"code":"54904979","system":"readv2"},{"code":"95270992","system":"readv2"},{"code":"97110990","system":"readv2"},{"code":"91221998","system":"readv2"},{"code":"96270990","system":"readv2"},{"code":"83032998","system":"readv2"},{"code":"98654990","system":"readv2"},{"code":"81344998","system":"readv2"},{"code":"99514989","system":"readv2"},{"code":"98493990","system":"readv2"},{"code":"89129979","system":"readv2"},{"code":"54786979","system":"readv2"},{"code":"93167990","system":"readv2"},{"code":"98125990","system":"readv2"},{"code":"83619998","system":"readv2"},{"code":"94235992","system":"readv2"},{"code":"82918998","system":"readv2"},{"code":"82068998","system":"readv2"},{"code":"81701998","system":"readv2"},{"code":"94248990","system":"readv2"},{"code":"95271992","system":"readv2"},{"code":"99513990","system":"readv2"},{"code":"95272992","system":"readv2"},{"code":"99149990","system":"readv2"},{"code":"95600990","system":"readv2"},{"code":"97087997","system":"readv2"},{"code":"99514990","system":"readv2"},{"code":"87536998","system":"readv2"},{"code":"96111990","system":"readv2"},{"code":"54907979","system":"readv2"},{"code":"81158998","system":"readv2"},{"code":"89870979","system":"readv2"},{"code":"83031998","system":"readv2"},{"code":"96850990","system":"readv2"},{"code":"99590998","system":"readv2"},{"code":"89868979","system":"readv2"},{"code":"99513989","system":"readv2"},{"code":"82919998","system":"readv2"},{"code":"87053998","system":"readv2"},{"code":"95880998","system":"readv2"},{"code":"54905979","system":"readv2"},{"code":"79510979","system":"readv2"},{"code":"97087998","system":"readv2"},{"code":"82917998","system":"readv2"},{"code":"97110989","system":"readv2"},{"code":"85625998","system":"readv2"},{"code":"85624998","system":"readv2"},{"code":"54906979","system":"readv2"},{"code":"85674998","system":"readv2"},{"code":"58558979","system":"readv2"},{"code":"92983990","system":"readv2"},{"code":"99590997","system":"readv2"},{"code":"82916998","system":"readv2"},{"code":"85673998","system":"readv2"},{"code":"85555998","system":"readv2"},{"code":"98493989","system":"readv2"},{"code":"87883998","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('diabetes-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["diabetes-drug-code-metform---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["diabetes-drug-code-metform---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["diabetes-drug-code-metform---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
