Alias: $EPathUsesTypeCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathUsesTypeCS
Instance: List.Repository.Sample
InstanceOf: List
Usage: #example
Description: "ePathリポジトリ"
* meta.lastUpdated = "2025-10-27T16:12:01.223+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathListEPathRepository"
* extension[0].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathListPathCode"
* extension[=].valueCanonical = "http://e-path.jp/fhir/ePath/PlanDifinition/EP01.CN05I00511-0L"
* extension[+].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathListPathCode"
* extension[=].valueCanonical = "http://e-path.jp/fhir/ePath/PlanDifinition/EP02.4311234567.CN05I00511-0"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00"
* identifier.assigner.identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no"
* identifier.assigner.identifier.value = "4311234567"
* identifier.assigner.display = "ePathテスト病院"
* status = #current
* mode = #working
* title = "PCI（2泊3日）NP"
* code.coding[0] = $EPathUsesTypeCS#ePath
* code.text = "ePath"
* subject.identifier.system = "urn:oid:1.2.392.100495.20.3.51.1.4311234567"
* subject.identifier.value = "0001014360"
* subject.display = "駿河 葵"
* date = "2018-06-05T00:00:00+09:00"
* entry[0].date = "2025-10-27T16:12:01+09:00"
* entry[=].item.display = "1.入院日"
* entry[=].item.reference = "Bundle/bundle-00001"
* entry[=].item.type = "Bundle"
* entry[+].date = "2025-10-27T16:12:01+09:00"
* entry[=].item.display = "4.退院日"
* entry[=].item.reference = "Bundle/bundle-00002"
* entry[=].item.type = "Bundle"