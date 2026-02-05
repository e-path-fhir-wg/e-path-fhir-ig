Alias: $EPathBOMOutcomeCodeCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMOutcomeCodeCS

ValueSet: EPathOutcomeCodeVS
Id: EPathOutcomeCodeVS
Title: "EPath OutcomeCode VS"
Description: "アウトカムコード バリューセット"
* ^version = "4.0.1"
* ^status = #active
* ^experimental = false
* ^date = "2024-10-24"
* ^publisher = "ePath Project"
* ^contact.name = "ePath Project"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://e-path.jp"
* ^jurisdiction = urn:iso:std:iso:3166#JP
* include codes from system $EPathBOMOutcomeCodeCS