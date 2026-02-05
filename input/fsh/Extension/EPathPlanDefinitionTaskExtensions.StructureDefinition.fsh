Alias: $EPathTaskCategoryVS = http://e-path.jp/fhir/ePath/ValueSet/EPathTaskCategoryVS

Extension: EPathPlanDefinitionTaskExtensions
Id: EPathPlanDefinitionTaskExtensions
Title: "EPath PlanDefinition TaskExtensions"
Description: "タスク情報（ひな型）"
Context: PlanDefinition.action.action.relatedAction
* ^url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionTaskExtensions"
* . ^short = "タスク情報"
* . ^definition = "手術・治療/処置/主要検査などの主要となるイベントの情報\r\n例)手術、内視鏡治療、放射線治療、内視鏡検査、心臓カテーテル検査、等"
* extension ^short = "主要イベントコード・名称"
* extension contains
    Category 1..1 and
    Code 1..1
* extension[Category] ^short = "タスク分類"
* extension[Category].value[x] 1..
* extension[Category].value[x] only CodeableConcept
* extension[Category].value[x].coding MS
* extension[Category].value[x].coding from $EPathTaskCategoryVS (preferred)
* extension[Category].value[x].coding ^binding.description = "タスク分類"
* extension[Category].value[x].coding.system 1..
* extension[Category].value[x].coding.code 1.. MS
* extension[Code] ^short = "タスクコード・名称"
* extension[Code].value[x] 1..
* extension[Code].value[x] only CodeableConcept
* extension[Code].value[x].coding.system 1..
* extension[Code].value[x].coding.system ^short = "コード体系"
* extension[Code].value[x].coding.code 1.. MS
* extension[Code].value[x].coding.code ^short = "コード"
* extension[Code].value[x].coding.display 1.. MS
* extension[Code].value[x].coding.display ^short = "コード表記"
* url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionTaskExtensions" (exactly)