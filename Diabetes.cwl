cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  diabetes-drug-code-500microgram---primary:
    run: diabetes-drug-code-500microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  diabetes-drug-code-isoph---primary:
    run: diabetes-drug-code-isoph---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-500microgram---primary/output
  diabetes-drug-code-crystalline---primary:
    run: diabetes-drug-code-crystalline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-isoph---primary/output
  diabetes-drug-code-bipha---primary:
    run: diabetes-drug-code-bipha---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-crystalline---primary/output
  diabetes-drug-code-glimepiride---primary:
    run: diabetes-drug-code-glimepiride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-bipha---primary/output
  diabetes-drug-code-humulin---primary:
    run: diabetes-drug-code-humulin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-glimepiride---primary/output
  diabetes-drug-code-glipizide---primary:
    run: diabetes-drug-code-glipizide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-humulin---primary/output
  diabetes-drug-code-glargine---primary:
    run: diabetes-drug-code-glargine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-glipizide---primary/output
  diabetes-drug-code-aspart---primary:
    run: diabetes-drug-code-aspart---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-glargine---primary/output
  neutral-diabetes-drug-code---primary:
    run: neutral-diabetes-drug-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-aspart---primary/output
  diabetes-drug-code-metform---primary:
    run: diabetes-drug-code-metform---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: neutral-diabetes-drug-code---primary/output
  diabetes-drug-code-400mg---primary:
    run: diabetes-drug-code-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-metform---primary/output
  diabetes-drug-code-250mg---primary:
    run: diabetes-drug-code-250mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-400mg---primary/output
  diabetes-drug-code-180mg---primary:
    run: diabetes-drug-code-180mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-250mg---primary/output
  diabetes-drug-code-750mg---primary:
    run: diabetes-drug-code-750mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-180mg---primary/output
  diabetes-drug-code-protamine---primary:
    run: diabetes-drug-code-protamine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-750mg---primary/output
  diabetes-drug-code-bovine---primary:
    run: diabetes-drug-code-bovine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-protamine---primary/output
  diabetes-drug-code-lispro---primary:
    run: diabetes-drug-code-lispro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-bovine---primary/output
  diabetes-drug-code-tolazamide---primary:
    run: diabetes-drug-code-tolazamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-lispro---primary/output
  diabetes-drug-code-glibenclamide---primary:
    run: diabetes-drug-code-glibenclamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-tolazamide---primary/output
  diabetes-drug-code-suspension---primary:
    run: diabetes-drug-code-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-glibenclamide---primary/output
  diabetes-drug-code-lente---primary:
    run: diabetes-drug-code-lente---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-suspension---primary/output
  diabetes-drug-code-troglitazone---primary:
    run: diabetes-drug-code-troglitazone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-lente---primary/output
  diabetes-drug-code-tolbutamide---primary:
    run: diabetes-drug-code-tolbutamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-troglitazone---primary/output
  mixed-diabetes-drug-code---primary:
    run: mixed-diabetes-drug-code---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-tolbutamide---primary/output
  diabetes-drug-code-cartridge---primary:
    run: diabetes-drug-code-cartridge---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: mixed-diabetes-drug-code---primary/output
  diabetes-drug-code-modifiedrelease---primary:
    run: diabetes-drug-code-modifiedrelease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-cartridge---primary/output
  diabetes-drug-code-100mg---primary:
    run: diabetes-drug-code-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-modifiedrelease---primary/output
  diabetes-drug-code-002ml---primary:
    run: diabetes-drug-code-002ml---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-100mg---primary/output
  diabetes-drug-code-repaglinide---primary:
    run: diabetes-drug-code-repaglinide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-002ml---primary/output
  diabetes-drug-code-linagliptin---primary:
    run: diabetes-drug-code-linagliptin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-repaglinide---primary/output
  diabetes-drug-code-rosigl---primary:
    run: diabetes-drug-code-rosigl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-linagliptin---primary/output
  diabetes-drug-code-glibornuride---primary:
    run: diabetes-drug-code-glibornuride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-rosigl---primary/output
  diabetes-drug-code-gliquidone---primary:
    run: diabetes-drug-code-gliquidone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-glibornuride---primary/output
  diabetes-drug-code-soluble---primary:
    run: diabetes-drug-code-soluble---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-gliquidone---primary/output
  diabetes-drug-code-insuln---primary:
    run: diabetes-drug-code-insuln---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-soluble---primary/output
  diabetes-drug-code-syrng---primary:
    run: diabetes-drug-code-syrng---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-insuln---primary/output
  diabetes-drug-code-pioglitazone---primary:
    run: diabetes-drug-code-pioglitazone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-syrng---primary/output
  diabetes-drug-code-dapagliflozin---primary:
    run: diabetes-drug-code-dapagliflozin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-pioglitazone---primary/output
  diabetes-drug-code-exenatide---primary:
    run: diabetes-drug-code-exenatide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-dapagliflozin---primary/output
  diabetes-drug-code-sterile---primary:
    run: diabetes-drug-code-sterile---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-exenatide---primary/output
  diabetes-drug-code-glulisine---primary:
    run: diabetes-drug-code-glulisine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-sterile---primary/output
  diabetes-drug-code-tablet---primary:
    run: diabetes-drug-code-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-glulisine---primary/output
  diabetes-drug-code-004ml---primary:
    run: diabetes-drug-code-004ml---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-tablet---primary/output
  diabetes-drug-code-vilda---primary:
    run: diabetes-drug-code-vilda---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-004ml---primary/output
  diabetes-drug-code-acetohexamide---primary:
    run: diabetes-drug-code-acetohexamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-vilda---primary/output
  diabetes-drug-code-chlorpropamide---primary:
    run: diabetes-drug-code-chlorpropamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-acetohexamide---primary/output
  diabetes-drug-code-blister---primary:
    run: diabetes-drug-code-blister---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-chlorpropamide---primary/output
  diabetes-drug-code-liraglutide---primary:
    run: diabetes-drug-code-liraglutide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-blister---primary/output
  diabetes-drug-code-porcine---primary:
    run: diabetes-drug-code-porcine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-liraglutide---primary/output
  diabetes-drug-code-acarbose---primary:
    run: diabetes-drug-code-acarbose---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-porcine---primary/output
  diabetes-drug-code-gliclazide---primary:
    run: diabetes-drug-code-gliclazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-acarbose---primary/output
  diabetes-drug-code-sitagliptin---primary:
    run: diabetes-drug-code-sitagliptin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-gliclazide---primary/output
  diabetes-drug-code-semitard---primary:
    run: diabetes-drug-code-semitard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-sitagliptin---primary/output
  diabetes-drug-code-saxagliptin---primary:
    run: diabetes-drug-code-saxagliptin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-semitard---primary/output
  diabetes-drug-code-detemir---primary:
    run: diabetes-drug-code-detemir---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-saxagliptin---primary/output
  diabetes-drug-code-120mg---primary:
    run: diabetes-drug-code-120mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-detemir---primary/output
  diabetes-drug-code-200mg---primary:
    run: diabetes-drug-code-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-120mg---primary/output
  diabetes-drug-code-nateglinide---primary:
    run: diabetes-drug-code-nateglinide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-200mg---primary/output
  diabetes-drug-code-inhalation---primary:
    run: diabetes-drug-code-inhalation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-nateglinide---primary/output
  diabetes-drug-code-powder---primary:
    run: diabetes-drug-code-powder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-inhalation---primary/output
  diabetes-drug-code-device---primary:
    run: diabetes-drug-code-device---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-powder---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: diabetes-drug-code-device---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
