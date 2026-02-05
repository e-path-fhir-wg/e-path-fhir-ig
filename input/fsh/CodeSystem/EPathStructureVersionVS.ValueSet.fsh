Alias: $EPathStructureVersionCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathStructureVersionCS

ValueSet: EPathStructureVersionVS
Id: EPathStructureVersionVS
Title: "EPath StructureVersion VS"
Description: "ePathのデータ要素と構造に関する仕様書バージョン バリューセット"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-10-24"
* ^publisher = "ePath Project"
* ^contact.name = "ePath Project"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://e-path.jp"
* ^jurisdiction = urn:iso:std:iso:3166#JP
* include codes from system $EPathStructureVersionCS