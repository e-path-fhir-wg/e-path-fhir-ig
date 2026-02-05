Alias: $EPathCarePlanStatusTypeWhenOccured = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanStatusTypeWhenOccured
Alias: $EPathCarePlanCriticalIndicator = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanCriticalIndicator
Alias: $EPathCarePlanUnplannedKind = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanUnplannedKind
Alias: $EPathCarePlanRepeatNo = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanRepeatNo
Alias: $EPathCarePlanEPathApply = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanEPathApply
Alias: $EPathCarePlanEvent = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanEvent
Alias: $JP_Patient = http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient
Alias: $EPathGoalOutcome = http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalOutcome
Alias: $EPathOutcomeCategoryVS = http://e-path.jp/fhir/ePath/ValueSet/EPathOutcomeCategoryVS
Alias: $EPathOutcomeSubCategoryVS = http://e-path.jp/fhir/ePath/ValueSet/EPathOutcomeSubCategoryVS
Alias: $EPathOutcomeCodeVS = http://e-path.jp/fhir/ePath/ValueSet/EPathOutcomeCodeVS

Profile: EPathCarePlanOATUnit
Parent: CarePlan
Id: EPathCarePlanOATUnit
Title: "EPath CarePlan OATUnit"
Description: "OATユニット"
* ^status = #active
* . ^short = "OATユニット"
* . ^definition = "1つのアウトカムとそれに属する観察項目・タスク（実施結果・評価・バリアンス含む）を診療最小単位：ユニットとして表した情報"
* meta 1..
* meta.profile 1.. MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanOATUnit|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanOATUnit|x.y.z を設定する。"
* extension contains
    $EPathCarePlanStatusTypeWhenOccured named ePathCarePlanStatusTypeWhenOccured 1..1 MS and
    $EPathCarePlanCriticalIndicator named ePathCarePlanCriticalIndicator 0..1 and
    $EPathCarePlanUnplannedKind named ePathCarePlanUnplannedKind 0..1 and
    $EPathCarePlanRepeatNo named ePathCarePlanRepeatNo 0..1
* extension[ePathCarePlanStatusTypeWhenOccured] ^short = "発生時パス状態区分"
* extension[ePathCarePlanStatusTypeWhenOccured] ^definition = "当該OATユニットの要素が新規に記述された際のパス状態区分\r\n付録1. コード一覧「パス状態区分」より設定する。\r\n例）01：ひな型パス、02：施設パス、12：適用後パス"
* extension[ePathCarePlanStatusTypeWhenOccured] ^isModifier = false
* extension[ePathCarePlanCriticalIndicator] ^isModifier = false
* extension[ePathCarePlanUnplannedKind] ^short = "予定外区分"
* extension[ePathCarePlanUnplannedKind] ^definition = "当該アウトカムがイベント・病日の概念のない予定外(unscheduled)であるかの識別。\r\n付録1. コード一覧「YN識別」より設定する 。\r\n例）Y (予定外)/N (イベント[予定]内)"
* extension[ePathCarePlanUnplannedKind] ^isModifier = false
* extension[ePathCarePlanRepeatNo] ^isModifier = false
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains oatUnitId 1..1 MS
* identifier[oatUnitId] ^short = "リソース一意識別子（OATユニット）"
* identifier[oatUnitId] ^definition = "リソース一意識別子（OATユニット）"
* identifier[oatUnitId].system 1..
* identifier[oatUnitId].system = "http://e-path.jp/fhir/ePath/IdSystem/oat-unit-id" (exactly)
* identifier[oatUnitId].system ^short = "固定値 http://e-path.jp/fhir/ePath/IdSystem/oat-unit-id を設定する。"
* identifier[oatUnitId].system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/oat-unit-id を設定する。"
* identifier[oatUnitId].value 1.. MS
* identifier[oatUnitId].value ^short = "医療機関コード、適用時パス識別子、病日[-パスステップ]、OATユニット識別子[-リピート番号]を半角ピリオド\".\"で連結したものを設定する。"
* identifier[oatUnitId].value ^definition = "医療機関コード、適用時パス識別子、病日[-パスステップ]、OATユニット識別子[-リピート番号]を半角ピリオド\".\"で連結したものを設定する。"
* instantiatesCanonical ^short = "患者記録から発生したOATユニットであれば、患者記録（Questionnaire）の正規URLを指定する。"
* instantiatesCanonical ^definition = "患者記録から発生したOATユニットであれば、患者記録（Questionnaire）の正規URLを指定する。"
* partOf ^slicing.discriminator.type = #value
* partOf ^slicing.discriminator.path = "identifier.system"
* partOf ^slicing.rules = #open
* partOf contains
    applyId 1..1 MS and
    eventId 1..1 MS
* partOf[applyId] only Reference($EPathCarePlanEPathApply)
* partOf[applyId].identifier 1..
* partOf[applyId].identifier ^short = "リソース一意識別子（パス）"
* partOf[applyId].identifier ^definition = "リソース一意識別子（パス）"
* partOf[applyId].identifier.system 1..
* partOf[applyId].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id" (exactly)
* partOf[applyId].identifier.system ^short = "固定値 http://e-path.jp/fhir/ePath/IdSystem/apply-id を設定する。"
* partOf[applyId].identifier.system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/apply-id を設定する。"
* partOf[applyId].identifier.system ^mustSupport = false
* partOf[applyId].identifier.value 1.. MS
* partOf[eventId] only Reference($EPathCarePlanEvent)
* partOf[eventId].identifier 1..
* partOf[eventId].identifier ^short = "リソース一意識別子（イベント）"
* partOf[eventId].identifier ^definition = "リソース一意識別子（イベント）"
* partOf[eventId].identifier.system 1..
* partOf[eventId].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/event-id" (exactly)
* partOf[eventId].identifier.system ^short = "固定値 http://e-path.jp/fhir/ePath/IdSystem/event-id を設定する。"
* partOf[eventId].identifier.system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/event-id を設定する。"
* partOf[eventId].identifier.system ^mustSupport = false
* partOf[eventId].identifier.value 1.. MS
* status MS
* status ^definition = "active（有効かつ対応する準備ができている）、completed（完了）、revoked（中止）を設定する。"
* intent = #plan (exactly)
* intent MS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category ^mustSupport = false
* category contains
    BOMCategory 0..1 and
    LocalCategory 0..1 and
    BOMSubCategory 0..1 and
    LocalSubCategory 0..1 and
    BOMOutcomeCode 0..1 and
    LocalOutcomeCode 0..1
* category[BOMCategory] ^short = "BOM大分類コード・名称"
* category[BOMCategory] ^definition = "BOM大分類コード・名称\r\n「BOM大分類コード」より設定する。"
* category[BOMCategory].coding 1..1 MS
* category[BOMCategory].coding from $EPathOutcomeCategoryVS (preferred)
* category[BOMCategory].coding ^binding.description = "BOM大分類コード"
* category[BOMCategory].coding.system 1.. MS
* category[BOMCategory].coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMOutcomeCategoryCS" (exactly)
* category[BOMCategory].coding.code 1.. MS
* category[BOMCategory].coding.display 1.. MS
* category[LocalCategory] ^short = "アウトカム大分類コード・名称"
* category[LocalCategory] ^definition = "アウトカム大分類コード・名称"
* category[LocalCategory].coding MS
* category[LocalCategory].coding.system 1..
* category[LocalCategory].coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathLocalOutcomeCategoryCS" (exactly)
* category[LocalCategory].coding.code 1.. MS
* category[LocalCategory].coding.display 0.. MS
* category[BOMSubCategory] ^short = "BOM中分類コード・名称"
* category[BOMSubCategory] ^definition = "BOM中分類コード・名称\r\n「BOM中分類コード」より設定する。"
* category[BOMSubCategory].coding 1..1 MS
* category[BOMSubCategory].coding from $EPathOutcomeSubCategoryVS (preferred)
* category[BOMSubCategory].coding ^binding.description = "BOM中分類コード"
* category[BOMSubCategory].coding.system 1..
* category[BOMSubCategory].coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMOutcomeSubCategoryCS" (exactly)
* category[BOMSubCategory].coding.code 1.. MS
* category[BOMSubCategory].coding.display 1.. MS
* category[LocalSubCategory] ^short = "アウトカム中分類コード・名称"
* category[LocalSubCategory] ^definition = "アウトカム中分類コード・名称"
* category[LocalSubCategory].coding MS
* category[LocalSubCategory].coding.system 1..
* category[LocalSubCategory].coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathLocalOutcomeSubCategoryCS" (exactly)
* category[LocalSubCategory].coding.code 1.. MS
* category[LocalSubCategory].coding.display 0.. MS
* category[BOMOutcomeCode] ^short = "BOMアウトカムコード・名称"
* category[BOMOutcomeCode] ^definition = "BOMアウトカムコード・名称\r\n「BOMアウトカムコード」より設定する。\r\nコード一覧で示すコード・名称が設定できない場合、施設等のローカル内で定めたローカルコード・名称・コード体系を設定してもよい。"
* category[BOMOutcomeCode].coding 1..1 MS
* category[BOMOutcomeCode].coding from $EPathOutcomeCodeVS (preferred)
* category[BOMOutcomeCode].coding ^binding.description = "アウトカムコード"
* category[BOMOutcomeCode].coding.system 1..
* category[BOMOutcomeCode].coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMOutcomeCodeCS" (exactly)
* category[BOMOutcomeCode].coding.code 1.. MS
* category[BOMOutcomeCode].coding.display 1.. MS
* category[LocalOutcomeCode] ^short = "アウトカムコード・名称"
* category[LocalOutcomeCode] ^definition = "アウトカムコード・名称"
* category[LocalOutcomeCode].coding MS
* category[LocalOutcomeCode].coding.system 1..
* category[LocalOutcomeCode].coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathLocalOutcomeCodeCS" (exactly)
* category[LocalOutcomeCode].coding.code 1.. MS
* category[LocalOutcomeCode].coding.display 1.. MS
* subject only Reference($JP_Patient)
* subject MS
* subject ^short = "パスを適用する患者リソース（Patient）への参照"
* subject ^definition = "パスを適用する患者リソース（Patient）への参照"
* goal only Reference($EPathGoalOutcome)
* goal ^short = "アウトカム目標・評価情報（Goal）への参照"
* goal ^definition = "アウトカム目標・評価情報（Goal）への参照"