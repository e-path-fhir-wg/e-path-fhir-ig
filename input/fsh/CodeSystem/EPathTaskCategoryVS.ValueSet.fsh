Alias: $EPathTaskCategoryLv1CS = http://e-path.jp/fhir/ePath/CodeSystem/EPathTaskCategoryLv1CS
Alias: $EPathTaskCategoryLv2CS = http://e-path.jp/fhir/ePath/CodeSystem/EPathTaskCategoryLv2CS

ValueSet: EPathTaskCategoryVS
Id: EPathTaskCategoryVS
Title: "EPath TaskCategory VS"
Description: "タスク分類 バリューセット"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-10-24"
* ^publisher = "ePath Project"
* ^contact.name = "ePath Project"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://e-path.jp"
* ^jurisdiction = urn:iso:std:iso:3166#JP
* include codes from system $EPathTaskCategoryLv1CS
* include codes from system $EPathTaskCategoryLv2CS