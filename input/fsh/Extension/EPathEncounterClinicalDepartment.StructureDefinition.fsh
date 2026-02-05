Alias: $EPathDepartmentCodeVS = http://e-path.jp/fhir/ePath/ValueSet/EPathDepartmentCodeVS

Extension: EPathEncounterClinicalDepartment
Id: EPathEncounterClinicalDepartment
Title: "EPath Encounter ClinicalDepartment"
Description: "診療科コード・名称"
Context: Encounter
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $EPathDepartmentCodeVS (preferred)
* value[x] ^short = "診療科"
* value[x] ^definition = "診療科を表すコード・名称\r\n付録1. コード一覧「診療科」より設定する。\r\n要素繰り返しの記述で施設等のローカル内で定めたコードを追加で設定してもよい。但し、その場合コード一覧で定める「診療科」は1番目に設定すること。"
* value[x] ^binding.description = "診療科コード"
* value[x].coding from $EPathDepartmentCodeVS (example)
* value[x].coding ^binding.description = "診療科コード"
* value[x].coding.system 1..
* value[x].coding.code 1..
* value[x].coding.display 1..