Alias: $EPathPlanDefinitionEP01 = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionEP01
Alias: $EPathPlanDefinitionEvent = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionEvent
Alias: $EPathQuestionnaire = http://e-path.jp/fhir/ePath/StructureDefinition/EPathQuestionnaire
Alias: $EPathUsesTypeVS = http://e-path.jp/fhir/ePath/ValueSet/EPathUsesTypeVS

Profile: EPathBundleMessageEP01
Parent: Bundle
Id: EPathBundleMessageEP01
Title: "EPath Bundle Message EP01"
Description: "ePathデータ構造 ひな型パス"
* meta 1..
* meta.profile 1.. MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathBundleMessageEP01|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathBundleMessageEP01|x.y.z を設定する。"
* meta.tag ^slicing.discriminator.type = #value
* meta.tag ^slicing.discriminator.path = "system"
* meta.tag ^slicing.rules = #open
* meta.tag contains UsesType 0..1
* meta.tag[UsesType] from $EPathUsesTypeVS (required)
* meta.tag[UsesType] ^short = "用途種別"
* meta.tag[UsesType] ^definition = "パスの代替用途の種別\r\nePathメッセージをワークシートとして用いる等、通常のクリニカルパスと区別する必要がある場合に代替体用途である識別としての種別を設定する。設定値は利用施設・運用主体等で定めたルールに則る。通常のクリニカルパスの場合はePathを設定する。"
* meta.tag[UsesType] ^mustSupport = false
* meta.tag[UsesType].system 1..
* meta.tag[UsesType].system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathUsesTypeCS" (exactly)
* meta.tag[UsesType].system ^short = "固定値 http://e-path.jp/fhir/ePath/CodeSystem/EPathUsesTypeCS を指定する。"
* meta.tag[UsesType].system ^definition = "固定値 http://e-path.jp/fhir/ePath/CodeSystem/EPathUsesTypeCS を指定する。"
* meta.tag[UsesType].code 1.. MS
* meta.tag[UsesType].code ^short = "代替え用途種別"
* meta.tag[UsesType].code ^definition = "代替え用途種別"
* identifier 1.. MS
* identifier ^short = "標準クリニカルパスコード"
* identifier ^definition = "標準クリニカルパスコード"
* identifier.system 1..
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/ep01-bundle-id" (exactly)
* identifier.system ^short = "固定値 http://e-path.jp/fhir/ePath/IdSystem/ep01-bundle-id を設定する。"
* identifier.system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/ep01-bundle-id を設定する。"
* identifier.value 1.. MS
* identifier.value ^short = "標準クリニカルパスコード"
* identifier.value ^definition = "標準クリニカルパスコード"
* type = #collection (exactly)
* type MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^mustSupport = false
* entry contains
    standardPathDefinition 1..1 MS and
    eventDefinition 0..* MS and
    questionnaire 0..*
* entry[standardPathDefinition] ^short = "Pひな型パス"
* entry[standardPathDefinition] ^definition = "ひな型パス"
* entry[standardPathDefinition].fullUrl 1.. MS
* entry[standardPathDefinition].resource only $EPathPlanDefinitionEP01
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
* entry[questionnaire].resource.identifier 1..
* entry[questionnaire].resource.identifier ^slicing.discriminator.type = #value
* entry[questionnaire].resource.identifier ^slicing.discriminator.path = "system"
* entry[questionnaire].resource.identifier ^slicing.rules = #open