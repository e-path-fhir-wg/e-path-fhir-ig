Alias: $JP_Patient = http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient
Alias: $JP_Condition = http://jpfhir.jp/fhir/core/StructureDefinition/JP_Condition
Alias: $master-disease-keyNumberVS = http://medis.or.jp/ValueSet/master-disease-keyNumber
Alias: $ICD10-2013-fullVS = http://jpfhir.jp/fhir/core/mhlw/ValueSet/ICD10-2013-full

Profile: EPathConditionCarePlanAddresses
Parent: JP_Condition
Id: EPathConditionCarePlanAddresses
Title: "EPath Condition CarePlanAddresses"
Description: "病名を識別するコード・名称"
* ^status = #active
* meta 1..
* meta.profile 1.. MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathConditionCarePlanAddresses|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathConditionCarePlanAddresses|x.y.z を設定する。"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains resourceInstanceIdentifier 1..1 MS
* identifier[resourceInstanceIdentifier].system 1..
* identifier[resourceInstanceIdentifier].system = "http://e-path.jp/fhir/ePath/IdSystem/resourceInstance-identifier" (exactly)
* identifier[resourceInstanceIdentifier].value 1.. MS
* clinicalStatus 1.. MS
* clinicalStatus.coding.system 1..
* clinicalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-clinical" (exactly)
* clinicalStatus.coding.code 1.. MS
* clinicalStatus.coding.code = #active (exactly)
* verificationStatus 1.. MS
* verificationStatus.coding.system 1..
* verificationStatus.coding.system = "http://terminology.hl7.org/CodeSystem/condition-ver-status" (exactly)
* verificationStatus.coding.code 1.. MS
* verificationStatus.coding.code = #confirmed (exactly)
* code 1.. MS
* code ^short = "病名を識別するコード・名称"
* code ^definition = "病名を識別するコード・名称\r\nMEDIS-DC標準病名、ICD10の病名コード・名称は、下記の付録1コード一覧の項目より要素繰り返しで設定する。\r\n1. MEDIS-DC 標準病名マスタ管理番号\r\n2. ICD10 標準病名コード\r\n要素繰り返しの順序もこれに沿って記述すること。\r\n施設等のローカル内で定めたコードを追加で設定してもよい。但し、その場合、上記の標準病名コードは必ず１つは設定し、ローカルコードの記述順は繰り返しの最後になること。"
* code.coding from $master-disease-keyNumberVS (example)
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    masterDiseaseKeyNumber 0..* and
    ICD10-2013-full 0..*
* code.coding[masterDiseaseKeyNumber] from $master-disease-keyNumberVS (preferred)
* code.coding[masterDiseaseKeyNumber] ^short = "MEDIS ICD10対応標準病名マスター(管理番号)"
* code.coding[masterDiseaseKeyNumber] ^definition = "MEDIS ICD10対応標準病名マスター(管理番号)"
* code.coding[masterDiseaseKeyNumber].system 1..
* code.coding[masterDiseaseKeyNumber].system = "http://medis.or.jp/CodeSystem/master-disease-keyNumber" (exactly)
* code.coding[masterDiseaseKeyNumber].code 1.. MS
* code.coding[masterDiseaseKeyNumber].display 1.. MS
* code.coding[ICD10-2013-full] from $ICD10-2013-fullVS (preferred)
* code.coding[ICD10-2013-full] ^short = "MHLW 厚生労働省ICD102013版"
* code.coding[ICD10-2013-full] ^definition = "MHLW 厚生労働省ICD102013版"
* code.coding[ICD10-2013-full].system 1..
* code.coding[ICD10-2013-full].system = "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/ICD10-2013-full" (exactly)
* code.coding[ICD10-2013-full].code 1.. MS
* code.coding[ICD10-2013-full].display 1.. MS
* code.text MS
* subject only Reference($JP_Patient)
* subject MS
* subject ^short = "パスを適用する患者リソース（Patient）への参照"
* subject ^definition = "パスを適用する患者リソース（Patient）への参照"