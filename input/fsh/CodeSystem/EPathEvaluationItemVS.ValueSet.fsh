Alias: $EPathEvaluationItemCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathEvaluationItemCS

ValueSet: EPathEvaluationItemVS
Id: EPathEvaluationItemVS
Title: "EPath EvaluationItem VS"
Description: "評価項目 バリューセット"
* ^url = "http://e-path.jp/fhir/ePath/ValueSet/EPathEvaluationItemVS"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-10-24"
* ^publisher = "ePath Project"
* ^contact.name = "ePath Project"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://e-path.jp"
* ^jurisdiction = urn:iso:std:iso:3166#JP
* include codes from system $EPathEvaluationItemCS