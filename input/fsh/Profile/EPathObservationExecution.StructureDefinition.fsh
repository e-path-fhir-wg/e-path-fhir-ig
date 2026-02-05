Alias: $JP_Patient = http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient
Alias: $EPathPatient = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPatient
Alias: $EPathPractitioner = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner
Alias: $EPathPractitionerRole = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitionerRole
Alias: $EPathAssessmentCategoryVS = http://e-path.jp/fhir/ePath/ValueSet/EPathAssessmentCategoryVS
Alias: $EPathAssessmentCodeVS = http://e-path.jp/fhir/ePath/ValueSet/EPathAssessmentCodeVS

Profile: EPathObservationExecution
Parent: Observation
Id: EPathObservationExecution
Title: "EPath Observation Execution"
Description: "観察結果"
* ^url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathObservationExecution"
* meta 1..
* meta.profile 1.. MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathObservationExecution|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathObservationExecution|x.y.z を設定する。"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains observationResultId 1..1 MS
* identifier[observationResultId] ^short = "リソース一意識別子（観察結果）"
* identifier[observationResultId] ^definition = "リソース一意識別子（観察結果）"
* identifier[observationResultId].system 1..
* identifier[observationResultId].system = "http://e-path.jp/fhir/ePath/IdSystem/observation-result-id" (exactly)
* identifier[observationResultId].system ^short = "固定値 http://e-path.jp/fhir/ePath/IdSystem/observation-result-id を設定する。"
* identifier[observationResultId].system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/observation-result-id を設定する。"
* identifier[observationResultId].value 1.. MS
* identifier[observationResultId].value ^short = "観察結果を通して、一意の識別子を設定する。"
* identifier[observationResultId].value ^definition = "観察結果を通して、一意の識別子を設定する。"
* status MS
* status ^definition = "実施情報の場合、finalを設定する。修正情報の場合、cancelledを設定する。"
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category contains BOMAssessmentCategory 0..*
* category[BOMAssessmentCategory] ^short = "BOM観察項目分類コード・名称"
* category[BOMAssessmentCategory] ^definition = "BOM観察項目分類コード・名称\r\n「BOM観察項目分類コード」より設定する。"
* category[BOMAssessmentCategory] ^mustSupport = false
* category[BOMAssessmentCategory].coding from $EPathAssessmentCategoryVS (preferred)
* category[BOMAssessmentCategory].coding.system 1.. MS
* category[BOMAssessmentCategory].coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMAssessmentCategoryCS" (exactly)
* category[BOMAssessmentCategory].coding.code 1.. MS
* category[BOMAssessmentCategory].coding.display 1.. MS
* code MS
* code ^short = "観察項目コード"
* code ^binding.strength = #example
* code ^binding.description = "観察項目コード"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    BOMAssessmentCode 0..1 and
    LocalAssessmentCode 0..1
* code.coding[BOMAssessmentCode] from $EPathAssessmentCodeVS (preferred)
* code.coding[BOMAssessmentCode] ^short = "BOM観察項目分類コード・名称"
* code.coding[BOMAssessmentCode] ^definition = "BOM観察項目コード・名称\r\n「BOM観察項目コード」より設定する。"
* code.coding[BOMAssessmentCode].system 1..
* code.coding[BOMAssessmentCode].system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMAssessmentCodeCS" (exactly)
* code.coding[BOMAssessmentCode].code 1.. MS
* code.coding[BOMAssessmentCode].display 1.. MS
* code.coding[LocalAssessmentCode] ^short = "観察項目コード・名称"
* code.coding[LocalAssessmentCode].system 1..
* code.coding[LocalAssessmentCode].system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathLocalAssessmentCodeCS" (exactly)
* code.coding[LocalAssessmentCode].code 1.. MS
* code.coding[LocalAssessmentCode].display 1.. MS
* subject only Reference($JP_Patient)
* effective[x] only dateTime
* effective[x] MS
* effective[x] ^short = "測定日時"
* performer only Reference($EPathPatient or $EPathPractitioner or $EPathPractitionerRole)
* performer MS
* performer ^short = "実施者、実施者職種"
* performer ^definition = "実施者、実施者職種"
* performer.type 1..
* performer.display 1.. MS
* value[x] MS
* value[x] ^short = "結果値・結果値単位"
* note ^short = "修正事由"
* note ^definition = "修正情報の場合、修正事由を設定する。"
* derivedFrom only Reference(QuestionnaireResponse)
* derivedFrom ^short = "観察結果の派生元"
* derivedFrom ^definition = "例えば、患者入力フォームのデータを観察結果として反映した場合に元となるQuestionnaireResponseの識別子を設定する。"
* derivedFrom ^mustSupport = false
* derivedFrom.identifier MS
* derivedFrom.identifier ^short = "入力フォーム回答の識別子"
* derivedFrom.identifier ^definition = "入力フォーム回答の識別子"
* derivedFrom.identifier.system 1..
* derivedFrom.identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/quis-response-id" (exactly)
* derivedFrom.identifier.system ^short = "固定値 http://e-path.jp/fhir/ePath/IdSystem/quis-response-id を設定する。"
* derivedFrom.identifier.system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/quis-response-id を設定する。"
* derivedFrom.identifier.value 1.. MS