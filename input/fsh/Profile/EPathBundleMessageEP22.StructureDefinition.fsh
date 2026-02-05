Alias: $EPathOrganization = http://e-path.jp/fhir/ePath/StructureDefinition/EPathOrganization
Alias: $EPathPatient = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPatient
Alias: $EPathQuestionnaireResponse = http://e-path.jp/fhir/ePath/StructureDefinition/EPathQuestionnaireResponse
Alias: $EPathUsesTypeVS = http://e-path.jp/fhir/ePath/ValueSet/EPathUsesTypeVS

Profile: EPathBundleMessageEP22
Parent: Bundle
Id: EPathBundleMessageEP22
Title: "EPath Bundle Message EP22"
Description: "入力フォーム回答の返信"
* ^url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathBundleMessageEP22"
* meta 1..
* meta.source MS
* meta.source ^short = "フォーム回答送信元"
* meta.source ^definition = "フォーム回答送信元となるPHRなどのURIを指定する。"
* meta.profile 1.. MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathBundleMessageEP22|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathBundleMessageEP22|x.y.z を設定する。"
* meta.tag ^slicing.discriminator.type = #value
* meta.tag ^slicing.discriminator.path = "system"
* meta.tag ^slicing.rules = #open
* meta.tag contains UsesType 0..1 MS
* meta.tag[UsesType] from $EPathUsesTypeVS (required)
* meta.tag[UsesType] ^short = "用途種別"
* meta.tag[UsesType] ^definition = "パスの代替用途の種別\r\nePathメッセージをワークシートとして用いる等、通常のクリニカルパスと区別する必要がある場合に代替体用途である識別としての種別を設定する。設定値は利用施設・運用主体等で定めたルールに則る。通常のクリニカルパスの場合はePathを設定する。"
* meta.tag[UsesType].system 1..
* meta.tag[UsesType].system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathUsesTypeCS" (exactly)
* meta.tag[UsesType].code 1.. MS
* identifier 1..
* identifier.system 1..
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/ep22-bundle-id" (exactly)
* identifier.system ^short = "固定値 http://e-path.jp/fhir/ePath/IdSystem/ep22-bundle-id を設定する。"
* identifier.system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/ep22-bundle-id を設定する。"
* identifier.value 1.. MS
* type = #collection (exactly)
* timestamp 1.. MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    receiverOrganization 1..1 MS and
    patient 1..1 MS and
    questionnaireResponse 1..* MS
* entry[receiverOrganization] ^short = "フォーム回答送信先施設"
* entry[receiverOrganization] ^definition = "フォーム回答送信先施設"
* entry[receiverOrganization].fullUrl 1.. MS
* entry[receiverOrganization].resource 1.. MS
* entry[receiverOrganization].resource only $EPathOrganization
* entry[patient] ^short = "患者基本情報"
* entry[patient] ^definition = "フォーム回答を反映する患者基本情報"
* entry[patient].fullUrl 1.. MS
* entry[patient].resource 1.. MS
* entry[patient].resource only $EPathPatient
* entry[questionnaireResponse].fullUrl 1.. MS
* entry[questionnaireResponse].resource 1.. MS
* entry[questionnaireResponse].resource only $EPathQuestionnaireResponse
* entry[questionnaireResponse].resource.basedOn ^slicing.discriminator.type = #value
* entry[questionnaireResponse].resource.basedOn ^slicing.discriminator.path = "identifier.system"
* entry[questionnaireResponse].resource.basedOn ^slicing.rules = #open