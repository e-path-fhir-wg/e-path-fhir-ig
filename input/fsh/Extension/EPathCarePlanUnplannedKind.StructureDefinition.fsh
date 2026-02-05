Alias: $EPathYNIdentificationVS = http://e-path.jp/fhir/ePath/ValueSet/EPathYNIdentificationVS

Extension: EPathCarePlanUnplannedKind
Id: EPathCarePlanUnplannedKind
Title: "EPath CarePlan UnplannedKind"
Description: "予定外区分"
Context: CarePlan
* value[x] 1..
* value[x] only code
* value[x] from $EPathYNIdentificationVS (required)
* value[x] ^short = "予定外区分"
* value[x] ^definition = "当該アウトカムがイベント・病日の概念のない予定外(unscheduled)であるかの識別。\r\n付録1. コード一覧「YN識別」より設定する 。\r\n例）Y (予定外)/N (イベント[予定]内)"