Alias: $JP_Organization = http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization

Profile: EPathOrganization
Parent: $JP_Organization
Id: EPathOrganization
Title: "EPath Organization"
Description: "医療機関情報"
* meta 1..
* meta.profile 1.. MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathOrganization|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathOrganization|x.y.z を設定する。"
* identifier[medicalInstitutionCode].value 1.. MS
* name 1.. MS