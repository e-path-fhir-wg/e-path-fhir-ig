Extension: EPathPlanDefinitionMajorEventExtensions
Id: EPathPlanDefinitionMajorEventExtensions
Title: "EPath PlanDefinition MajorEventExtensions"
Description: "主要イベント情報（ひな型）"
Context: PlanDefinition
* . ^short = "主要イベント情報"
* . ^definition = "手術・治療/処置/主要検査などの主要となるイベントの情報\r\n例)手術、内視鏡治療、放射線治療、内視鏡検査、心臓カテーテル検査、等"
* extension ^short = "主要イベントコード・名称"
* extension contains
    Code 1..1 and
    Category 0..1 and
    AnesthesiaCode 0..1
* extension[Code] ^short = "主要イベントコード・名称"
* extension[Code].value[x] 1..
* extension[Code].value[x] only CodeableConcept
* extension[Code].value[x].coding.system 1..
* extension[Code].value[x].coding.system ^short = "コード体系"
* extension[Code].value[x].coding.code 1..
* extension[Code].value[x].coding.code ^short = "コード"
* extension[Code].value[x].coding.display 1..
* extension[Code].value[x].coding.display ^short = "コード表記"
* extension[Code].value[x].text ^short = "主要イベント名称"
* extension[Code].value[x].text ^definition = "イベントに応じた術式・処置の名称"
* extension[Category] ^short = "診療区分"
* extension[Category] ^definition = "処方、処置、手術等の診療を識別するコード・名称・コード体系"
* extension[Category].value[x] 1..
* extension[Category].value[x] only CodeableConcept
* extension[Category].value[x].coding.system 1..
* extension[Category].value[x].coding.code 1..
* extension[Category].value[x].coding.display 1..
* extension[AnesthesiaCode] ^short = "麻酔種別"
* extension[AnesthesiaCode] ^definition = "処置、手術等で麻酔を用いた場合の麻酔の種別を表すコード・名称・コード体系"
* extension[AnesthesiaCode].value[x] 1..
* extension[AnesthesiaCode].value[x] only CodeableConcept
* extension[AnesthesiaCode].value[x].coding.system 1..
* extension[AnesthesiaCode].value[x].coding.code 1..
* extension[AnesthesiaCode].value[x].coding.display 1..