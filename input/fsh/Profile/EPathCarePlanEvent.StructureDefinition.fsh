Alias: $EPathCarePlanEventElapsedDays = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanEventElapsedDays
Alias: $EPathCarePlanPathStep = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanPathStep
Alias: $EPathCarePlanPathStepName = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanPathStepName
Alias: $EPathCarePlanPathStepInpatientOutpatientType = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanPathStepInpatientOutpatientType
Alias: $EPathCarePlanPathStepStartDate = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanPathStepStartDate
Alias: $EPathCarePlanAllowableElapsedDaysConditionType = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAllowableElapsedDaysConditionType
Alias: $EPathCarePlanAllowableElapsedDaysConditionDays = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAllowableElapsedDaysConditionDays
Alias: $EPathCarePlanAllowableElapsedDaysConditionDate = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAllowableElapsedDaysConditionDate
Alias: $EPathCarePlanAllowableElapsedDaysConditionRangeLow = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAllowableElapsedDaysConditionRangeLow
Alias: $EPathCarePlanAllowableElapsedDaysConditionRangeHigh = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAllowableElapsedDaysConditionRangeHigh
Alias: $EPathCarePlanEPathApply = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanEPathApply
Alias: $JP_Patient = http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient
Alias: $EPathGoalEvent = http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalEvent
Alias: $EPathProcedureMajorEvent = http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureMajorEvent

Profile: EPathCarePlanEvent
Parent: CarePlan
Id: EPathCarePlanEvent
Title: "EPath CarePlan Event"
Description: "病日・イベント情報"
* ^url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanEvent"
* ^status = #active
* meta 1..
* meta.profile 1.. MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanEvent|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinitionEPathCarePlanEvent|x.y.z を設定する。"
* extension contains
    $EPathCarePlanEventElapsedDays named ePathCarePlanEventElapsedDays 0..1 MS and
    $EPathCarePlanPathStep named ePathCarePlanPathStep 0..1 and
    $EPathCarePlanPathStepName named ePathCarePlanPathStepName 0..1 and
    $EPathCarePlanPathStepInpatientOutpatientType named ePathCarePlanPathStepInpatientOutpatientType 0..1 and
    $EPathCarePlanPathStepStartDate named ePathCarePlanPathStepStartDate 0..1 and
    $EPathCarePlanAllowableElapsedDaysConditionType named ePathCarePlanAllowableElapsedDaysConditionType 0..1 MS and
    $EPathCarePlanAllowableElapsedDaysConditionDays named ePathCarePlanAllowableElapsedDaysConditionDays 0..1 and
    $EPathCarePlanAllowableElapsedDaysConditionDate named ePathCarePlanAllowableElapsedDaysConditionDate 0..1 and
    $EPathCarePlanAllowableElapsedDaysConditionRangeLow named ePathCarePlanAllowableElapsedDaysConditionRangeLow 0..1 MS and
    $EPathCarePlanAllowableElapsedDaysConditionRangeHigh named ePathCarePlanAllowableElapsedDaysConditionRangeHigh 0..1 MS
* extension[ePathCarePlanEventElapsedDays] ^isModifier = false
* extension[ePathCarePlanPathStep] ^isModifier = false
* extension[ePathCarePlanPathStepName] ^short = "パスステップ名称"
* extension[ePathCarePlanPathStepName] ^definition = "パスステップの名称。"
* extension[ePathCarePlanPathStepName] ^isModifier = false
* extension[ePathCarePlanPathStepInpatientOutpatientType] ^short = "パスステップ入外区分"
* extension[ePathCarePlanPathStepInpatientOutpatientType] ^definition = "パスステップにおける患者の入院・外来を表す区分。\r\n付録1. コード一覧「入外区分」より設定する。\r\n例）I：入院、O：外来"
* extension[ePathCarePlanPathStepInpatientOutpatientType] ^isModifier = false
* extension[ePathCarePlanPathStepStartDate] ^short = "パスステップ開始日"
* extension[ePathCarePlanPathStepStartDate] ^definition = "同一ステップ回数目での起算日となる日付を設定する。"
* extension[ePathCarePlanPathStepStartDate] ^isModifier = false
* extension[ePathCarePlanAllowableElapsedDaysConditionType] ^short = "許容経過日数条件 起点日種別"
* extension[ePathCarePlanAllowableElapsedDaysConditionType] ^definition = "起点となる日の種別。\r\n1:前回イベント\r\n2:適用開始日（パス開始日）\r\n3:指定日付\r\n\r\n種別が3:指定日付のケースにおいて、パス状態が「適用後」の場合は指定起点日の設定値が起点日を表し、パス状態が「疾患別」または「施設別」の場合は起点となる日をパス開始日から指定起点病日の経過日で求める形で表現する。"
* extension[ePathCarePlanAllowableElapsedDaysConditionType] ^isModifier = false
* extension[ePathCarePlanAllowableElapsedDaysConditionDays] ^short = "許容経過日数条件 指定起点病日"
* extension[ePathCarePlanAllowableElapsedDaysConditionDays] ^definition = "起点日種別が3:指定日付の場合に、起点となる日をパス開始日からの病日で設定する。"
* extension[ePathCarePlanAllowableElapsedDaysConditionDays] ^isModifier = false
* extension[ePathCarePlanAllowableElapsedDaysConditionDate] ^short = "許容経過日数条件 指定起点日"
* extension[ePathCarePlanAllowableElapsedDaysConditionDate] ^definition = "起点日種別が3:指定日付の場合に指定する起点となる日を設定する。"
* extension[ePathCarePlanAllowableElapsedDaysConditionDate] ^isModifier = false
* extension[ePathCarePlanAllowableElapsedDaysConditionRangeLow] ^short = "許容経過日数条件指定許容日数期間下限値"
* extension[ePathCarePlanAllowableElapsedDaysConditionRangeLow] ^definition = "許容経過日数条件指定許容日数期間下限値"
* extension[ePathCarePlanAllowableElapsedDaysConditionRangeLow] ^isModifier = false
* extension[ePathCarePlanAllowableElapsedDaysConditionRangeHigh] ^short = "許容経過日数条件指定許容日数期間上限値"
* extension[ePathCarePlanAllowableElapsedDaysConditionRangeHigh] ^definition = "許容経過日数条件指定許容日数期間上限値"
* extension[ePathCarePlanAllowableElapsedDaysConditionRangeHigh] ^isModifier = false
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains eventId 1..1 MS
* identifier[eventId] ^short = "リソース一意識別子（イベント）"
* identifier[eventId] ^definition = "リソース一意識別子（イベント）"
* identifier[eventId].system 1..
* identifier[eventId].system = "http://e-path.jp/fhir/ePath/IdSystem/event-id" (exactly)
* identifier[eventId].system ^short = "固定値 http://e-path.jp/fhir/ePath/IdSystem/event-id を設定する。"
* identifier[eventId].system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/event-id を設定する。"
* identifier[eventId].value 1.. MS
* identifier[eventId].value ^short = "医療機関コード、適用時パス識別子、病日[-パスステップ]を半角ピリオド\".\"で連結したものを設定する。イベント識別子は、病日、パスステップを半角ハイフン\"-\"で連結し、生成する。"
* identifier[eventId].value ^definition = "医療機関コード、適用時パス識別子、病日[-パスステップ]を半角ピリオド\".\"で連結したものを設定する。イベント識別子は、病日、パスステップを半角ハイフン\"-\"で連結し、生成する。"
* partOf 1..1 MS
* partOf only Reference($EPathCarePlanEPathApply)
* partOf.identifier 1.. MS
* partOf.identifier ^short = "リソース一意識別子（パス）"
* partOf.identifier ^definition = "リソース一意識別子（パス）"
* partOf.identifier.system 1..
* partOf.identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id" (exactly)
* partOf.identifier.system ^short = "固定値 http://e-path.jp/fhir/ePath/IdSystem/apply-id を設定する。"
* partOf.identifier.system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/apply-id を設定する。"
* partOf.identifier.value 1.. MS
* status MS
* status ^definition = "active（有効かつ対応する準備ができている）、completed（完了）、revoked（中止）を設定する。"
* intent = #plan (exactly)
* intent MS
* category MS
* category ^short = "イベントコード"
* category ^definition = "病日または同一病日内でのイベントを識別するコード\r\nコードの設定値は利用施設・運用主体等で定め、これに則り設定する。"
* category.coding.system 1..
* category.coding.code 1..
* category.coding.code ^mustSupport = false
* category.coding.display 1..
* category.text ^short = "イベント名"
* category.text ^definition = "病日または同一病日内でのイベントの名称\r\n例) 1日目、2日前、当日、1日目術前、術前、術中、術後\r\n　　visit1、vist2"
* category.text ^mustSupport = false
* title MS
* title ^short = "イベント名"
* title ^definition = "病日または同一病日内でのイベントの名称\r\n例) 1日目、2日前、当日、1日目術前、術前、術中、術後\r\n　　visit1、vist2"
* subject only Reference($JP_Patient)
* subject MS
* subject ^short = "パスを適用する患者リソース（Patient）への参照"
* subject ^definition = "パスを適用する患者リソース（Patient）への参照"
* encounter MS
* encounter ^short = "受診情報を記述しているEncounterリソースへの参照"
* encounter ^definition = "受診情報を記述しているEncounterリソースへの参照"
* goal only Reference($EPathGoalEvent)
* goal ^short = "病日・イベント目標・評価情報（Goal）への参照"
* goal ^definition = "病日・イベント目標・評価情報（Goal）への参照"
* activity.outcomeReference only Reference($EPathProcedureMajorEvent)
* activity.outcomeReference ^short = "主要イベント情報"
* activity.outcomeReference ^definition = "主要イベント情報への参照を設定する。"