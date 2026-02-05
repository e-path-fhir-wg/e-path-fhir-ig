Alias: $EPathBOMAssessmentCodeCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMAssessmentCodeCS
Alias: $EPathAssessmentCodeEmptyCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathAssessmentCodeEmptyCS

ValueSet: EPathAssessmentCodeVS
Id: EPathAssessmentCodeVS
Title: "EPath AssessmentCode VS"
Description: "観察項目コード バリューセット"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-10-24"
* ^publisher = "ePath Project"
* ^contact.name = "ePath Project"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://e-path.jp"
* ^jurisdiction = urn:iso:std:iso:3166#JP
* include codes from system $EPathBOMAssessmentCodeCS
* include codes from system $EPathAssessmentCodeEmptyCS