Alias: $JP_Organization = http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization
Alias: $EPathOrganization = http://e-path.jp/fhir/ePath/StructureDefinition/EPathOrganization
Alias: $EPathPlanDefinitionEP01 = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionEP01
Alias: $EPathPlanDefinitionEP02 = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionEP02
Alias: $EPathPlanDefinitionEvent = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionEvent
Alias: $EPathQuestionnaire = http://e-path.jp/fhir/ePath/StructureDefinition/EPathQuestionnaire
Alias: $EPathUsesTypeVS = http://e-path.jp/fhir/ePath/ValueSet/EPathUsesTypeVS

Profile: EPathBundleMessageEP02
Parent: Bundle
Id: EPathBundleMessageEP02
Title: "EPath Bundle Message EP02"
Description: "ePathデータ構造 施設パス"
* meta 1..
* meta.profile 1.. MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathBundleMessageEP02|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathBundleMessageEP02|x.y.z を設定する。"
* meta.tag ^slicing.discriminator.type = #value
* meta.tag ^slicing.discriminator.path = "system"
* meta.tag ^slicing.rules = #open
* meta.tag contains UsesType 0..1 MS
* meta.tag[UsesType] from $EPathUsesTypeVS (required)
* meta.tag[UsesType] ^short = "用途種別"
* meta.tag[UsesType] ^definition = "パスの代替用途の種別\r\nePathメッセージをワークシートとして用いる等、通常のクリニカルパスと区別する必要がある場合に代替体用途である識別としての種別を設定する。設定値は利用施設・運用主体等で定めたルールに則る。通常のクリニカルパスの場合はePathを設定する。"
* meta.tag[UsesType].system 1.. MS
* meta.tag[UsesType].system = "http://e-path.jp/fhir/ePath/CodeSystem/EPath_UsesType_CS" (exactly)
* meta.tag[UsesType].code 1.. MS
* identifier 1.. MS
* identifier ^short = "施設（ローカル）パスコード"
* identifier ^definition = "施設（ローカル）パスコード"
* identifier.system 1..
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/ep02-bundle-id" (exactly)
* identifier.system ^short = "固定値 http://e-path.jp/fhir/ePath/IdSystem/ep02-bundle-id を設定する。"
* identifier.system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/ep02-bundle-id を設定する。"
* identifier.value 1.. MS
* identifier.value ^short = "施設（ローカル）パスコード"
* identifier.value ^definition = "施設（ローカル）パスコード"
* identifier.assigner 1.. MS
* identifier.assigner only Reference($JP_Organization)
* identifier.assigner ^short = "施設パスコードを割り当てた医療機関情報"
* identifier.assigner ^definition = "施設パスコードを割り当てた医療機関情報"
* identifier.assigner.identifier MS
* identifier.assigner.identifier.system 1.. MS
* identifier.assigner.identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no" (exactly)
* identifier.assigner.identifier.value 1.. MS
* type = #collection (exactly)
* type MS
* entry 1..
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open
* entry ^mustSupport = false
* entry contains
    organization 1..1 MS and
    standardPathDefinition 0..1 MS and
    facilityPathDefinition 1..1 MS and
    eventDefinition 0..* MS and
    questionnaire 0..*
* entry[organization] ^short = "医療機関情報"
* entry[organization] ^definition = "医療機関情報"
* entry[organization].fullUrl 1.. MS
* entry[organization].resource 1.. MS
* entry[organization].resource only $EPathOrganization
* entry[standardPathDefinition] ^short = "ひな型パス"
* entry[standardPathDefinition] ^definition = "ひな型パス"
* entry[standardPathDefinition].fullUrl 1.. MS
* entry[standardPathDefinition].resource 1.. MS
* entry[standardPathDefinition].resource only $EPathPlanDefinitionEP01
* entry[facilityPathDefinition] ^short = "施設パス"
* entry[facilityPathDefinition] ^definition = "施設パス"
* entry[facilityPathDefinition].fullUrl 1.. MS
* entry[facilityPathDefinition].resource 1.. MS
* entry[facilityPathDefinition].resource only $EPathPlanDefinitionEP02
* entry[eventDefinition] ^short = "病日イベント"
* entry[eventDefinition] ^definition = "病日イベント"
* entry[eventDefinition].fullUrl 1.. MS
* entry[eventDefinition].resource 1.. MS
* entry[eventDefinition].resource only $EPathPlanDefinitionEvent
* entry[questionnaire] ^short = "患者入力フォーム"
* entry[questionnaire] ^definition = "患者入力フォーム"
* entry[questionnaire].fullUrl 1.. MS
* entry[questionnaire].resource 1.. MS
* entry[questionnaire].resource only $EPathQuestionnaire