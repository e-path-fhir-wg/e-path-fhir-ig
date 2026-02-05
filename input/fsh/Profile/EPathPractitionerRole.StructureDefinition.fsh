Alias: $JP_PractitionerRole = http://jpfhir.jp/fhir/core/StructureDefinition/JP_PractitionerRole

Profile: EPathPractitionerRole
Parent: $JP_PractitionerRole
Id: EPathPractitionerRole
Title: "EPath PractitionerRole"
Description: "実施者職種、評価者職種"
* meta 1..
* meta.profile 1.. MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitionerRole|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitionerRole|x.y.z を設定する。"