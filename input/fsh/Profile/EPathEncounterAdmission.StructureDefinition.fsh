Alias: $EPathEncounterClinicalDepartment = http://e-path.jp/fhir/ePath/StructureDefinition/EPathEncounterClinicalDepartment
Alias: $EPathEncounterPatientDeathIndicator = http://e-path.jp/fhir/ePath/StructureDefinition/EPathEncounterPatientDeathIndicator
Alias: $JP_Encounter = http://jpfhir.jp/fhir/core/StructureDefinition/JP_Encounter

Profile: EPathEncounterAdmission
Parent: JP_Encounter
Id: EPathEncounterAdmission
Title: "EPath Encounter Admission"
Description: "入院情報"
* ^status = #active
* meta 1..
* meta.profile 1.. MS
* extension contains
    $EPathEncounterClinicalDepartment named ePathEncounterClinicalDepartment 1..* MS and
    $EPathEncounterPatientDeathIndicator named ePathEncounterPatientDeathIndicator 0..1
* extension[ePathEncounterClinicalDepartment] ^short = "診療科"
* extension[ePathEncounterClinicalDepartment] ^definition = "診療科を表すコード・名称\r\n付録1. コード一覧「診療科」より設定する。\r\n要素繰り返しの記述で施設等のローカル内で定めたコードを追加で設定してもよい。但し、その場合コード一覧で定める「診療科」は1番目に設定すること。"
* extension[ePathEncounterClinicalDepartment] ^isModifier = false
* extension[ePathEncounterPatientDeathIndicator] ^short = "死亡有無"
* extension[ePathEncounterPatientDeathIndicator] ^definition = "死亡有無を表すコード。付録1. コード一覧の「YN識別」で定めるコードを設定する。例）Y (死亡)"
* extension[ePathEncounterPatientDeathIndicator] ^isModifier = false
* identifier ..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains resourceInstanceIdentifier 0..1
* identifier[resourceInstanceIdentifier] ^mustSupport = false
* identifier[resourceInstanceIdentifier].system 1.. MS
* identifier[resourceInstanceIdentifier].system = "http://e-path.jp/fhir/ePath/IdSystem/resourceInstance-identifier" (exactly)
* identifier[resourceInstanceIdentifier].value 1.. MS
* status MS
* class MS
* class.system 1.. MS
* class.code 1.. MS
* period MS
* period ^short = "入院期間"
* period.start 1.. MS
* period.start ^short = "入院日"
* period.end ^short = "退院日"