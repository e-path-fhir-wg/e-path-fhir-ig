Alias: $JP_Patient = http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient

Profile: EPathPatient
Parent: $JP_Patient
Id: EPathPatient
Title: "EPath Patient"
Description: "患者基本情報"
* meta 1..
* meta.profile 1.. MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathPatient|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathPatient|x.y.z を設定する。"
* identifier MS
* identifier.system 1.. MS
* identifier.system ^definition = "urn:oid:1.2.392.100495.20.3.51.医療機関識別OID番号を使用する。 "
* identifier.value MS
* name 1.. MS
* name.family 1..1 MS
* gender 1..1 MS
* birthDate 1.. MS
* link ^short = "患者関連ID"
* link ^definition = "事実上の同一患者をリンクする別のPatientリソース。ePathメッセージ構造の患者関連IDを設定する。"