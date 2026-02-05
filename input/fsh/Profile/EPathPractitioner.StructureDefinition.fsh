Alias: $JP_Practitioner = http://jpfhir.jp/fhir/core/StructureDefinition/JP_Practitioner

Profile: EPathPractitioner
Parent: $JP_Practitioner
Id: EPathPractitioner
Title: "EPath Practitioner"
Description: "実施者、評価者"
* meta 1..
* meta.profile 1.. MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner|x.y.z を設定する。"
* name 1..
* name.text 1.. MS