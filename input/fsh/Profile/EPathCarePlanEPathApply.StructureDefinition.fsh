Alias: $EPathCarePlanAdaptiveCriteriaConfirmation = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAdaptiveCriteriaConfirmation
Alias: $EPathCarePlanAdaptiveCriteriaText = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAdaptiveCriteriaText
Alias: $EPathCarePlanScheduledDays = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanScheduledDays
Alias: $EPathPlanDefinitionEP01 = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionEP01
Alias: $EPathPlanDefinitionEP02 = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionEP02
Alias: $JP_Patient = http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient
Alias: $EPathGoalEPathApply = http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalEPathApply
Alias: $EPathProcedureMajorEvent = http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureMajorEvent

Profile: EPathCarePlanEPathApply
Parent: CarePlan
Id: EPathCarePlanEPathApply
Title: "EPath CarePlan EPathApply"
Description: "パス適用情報"
* ^status = #active
* meta 1..
* meta.profile 1.. MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanePathApply|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanePathApply|x.y.z を設定する。"
* extension contains
    $EPathCarePlanAdaptiveCriteriaConfirmation named ePathCarePlanAdaptiveCriteriaConfirmation 1..1 MS and
    $EPathCarePlanAdaptiveCriteriaText named ePathCarePlanAdaptiveCriteriaText 1..1 MS and
    $EPathCarePlanScheduledDays named ePathCarePlanScheduledDays 0..1
* extension[ePathCarePlanAdaptiveCriteriaConfirmation] ^short = "適応基準 確認区分"
* extension[ePathCarePlanAdaptiveCriteriaConfirmation] ^definition = "パスの適応基準を満たしたかの確認情報\r\n1：適応基準を確認"
* extension[ePathCarePlanAdaptiveCriteriaConfirmation] ^isModifier = false
* extension[ePathCarePlanAdaptiveCriteriaText] ^short = "適応基準 内容"
* extension[ePathCarePlanAdaptiveCriteriaText] ^definition = "適応基準の内容。複数の要素で構成される基準であってもテキスト1文で表記する。"
* extension[ePathCarePlanAdaptiveCriteriaText] ^isModifier = false
* extension[ePathCarePlanScheduledDays] ^short = "パス予定日数"
* extension[ePathCarePlanScheduledDays] ^definition = "予定時のパス設定日数"
* extension[ePathCarePlanScheduledDays] ^isModifier = false
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains applyId 1..1 MS
* identifier[applyId] ^short = "リソース一意識別子（パス）"
* identifier[applyId] ^definition = "リソース一意識別子（パス）"
* identifier[applyId].system 1..
* identifier[applyId].system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id" (exactly)
* identifier[applyId].system ^short = "固定値 http://e-path.jp/fhir/ePath/IdSystem/apply-id を設定する。"
* identifier[applyId].system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/apply-id を設定する。"
* identifier[applyId].system ^mustSupport = false
* identifier[applyId].value 1.. MS
* identifier[applyId].value ^short = "医療機関コード、適用時パス識別子を半角ピリオド\".\"で連結したものを設定する。"
* identifier[applyId].value ^definition = "医療機関コード、適用時パス識別子を半角ピリオド\".\"で連結したものを設定する。"
* instantiatesCanonical only Canonical($EPathPlanDefinitionEP01 or $EPathPlanDefinitionEP02)
* instantiatesCanonical MS
* instantiatesCanonical ^short = "ひな型パス（PlanDefinition）、施設パス（PlanDefinition）の正規URLを指定する。"
* instantiatesCanonical ^definition = "ひな型パス（PlanDefinition）、施設パス（PlanDefinition）の正規URLを指定する。"
* status MS
* status ^definition = "パス終了区分として、active（有効かつ対応する準備ができている）、completed（完了）、revoked（中止）を設定する。"
* intent = #plan (exactly)
* intent MS
* title 1.. MS
* title ^short = "施設パス名称"
* title ^definition = "施設パス名称"
* subject only Reference($JP_Patient)
* subject MS
* subject ^short = "パスを適用する患者リソース（Patient）への参照"
* subject ^definition = "パスを適用する患者リソース（Patient）への参照"
* encounter MS
* encounter ^short = "受診情報を記述しているEncounterリソースへの参照"
* encounter ^definition = "受診情報を記述しているEncounterリソースへの参照"
* period 1.. MS
* period ^short = "パス実施期間"
* period ^definition = "パス実施期間"
* period.start 1.. MS
* period.start ^short = "パス実施期間開始日時"
* period.start ^definition = "パス実施期間開始日時"
* period.end ^short = "パス実施期間終了日時"
* period.end ^definition = "パス実施期間終了日時"
* goal only Reference($EPathGoalEPathApply)
* goal ^short = "パス適用情報 目標・評価情報（Goal）への参照"
* goal ^definition = "パス適用情報 目標・評価情報（Goal）への参照"
* activity.outcomeReference only Reference($EPathProcedureMajorEvent)
* activity.outcomeReference ^short = "主要イベント情報（Procedure）への参照"
* activity.outcomeReference ^definition = "主要イベント情報（Procedure）への参照"
* activity.detail ..0
* activity.detail ^short = "後のFHIRバージョンとの整合性のため削除"