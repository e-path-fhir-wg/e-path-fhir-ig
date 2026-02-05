Alias: $EPathYNIdentificationVS = http://e-path.jp/fhir/ePath/ValueSet/EPathYNIdentificationVS

Extension: EPathEncounterPatientDeathIndicator
Id: EPathEncounterPatientDeathIndicator
Title: "EPath Encounter PatientDeathIndicator"
Description: "死亡有無"
Context: Encounter
* value[x] 1..
* value[x] only code
* value[x] from $EPathYNIdentificationVS (required)
* value[x] ^short = "死亡有無"
* value[x] ^definition = "死亡有無を表すコード。付録1. コード一覧の「YN識別」で定めるコードを設定する。例）Y (死亡)"
* value[x] ^binding.description = "YN識別"