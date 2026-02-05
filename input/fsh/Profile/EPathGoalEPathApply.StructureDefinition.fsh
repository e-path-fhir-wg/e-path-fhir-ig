Alias: $EPathGoalStatusReason = http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalStatusReason
Alias: $JP_Patient = http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient
Alias: $EPathConditionCarePlanAddresses = http://e-path.jp/fhir/ePath/StructureDefinition/EPathConditionCarePlanAddresses

Profile: EPathGoalEPathApply
Parent: Goal
Id: EPathGoalEPathApply
Title: "EPath Goal EPathApply"
Description: "パス適用情報 目標・評価情報"
* ^url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalEPathApply"
* ^status = #active
* meta 1..
* meta.profile 1.. MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalePathApply|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalePathApply|x.y.z を設定する。"
* extension contains $EPathGoalStatusReason named ePathGoalStatusReason 0..1
* extension[ePathGoalStatusReason] ^short = "パス中止理由"
* extension[ePathGoalStatusReason] ^definition = "パスを中止した際の中止理由コードおよび名称。パス終了区分が「2:中止」の場合のみ設定する。コード、名称の設定値は利用施設・運用主体等で定め、これに則り設定する。"
* extension[ePathGoalStatusReason] ^mustSupport = false
* extension[ePathGoalStatusReason] ^isModifier = false
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains applyGoalId 1..1
* identifier[applyGoalId].system 1..
* identifier[applyGoalId].system = "http://e-path.jp/fhir/ePath/IdSystem/apply-goal-id" (exactly)
* identifier[applyGoalId].system ^short = "固定値 http://e-path.jp/fhir/ePath/IdSystem/apply-goal-id を設定する。"
* identifier[applyGoalId].system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/apply-goal-id を設定する。"
* identifier[applyGoalId].value 1.. MS
* identifier[applyGoalId].value ^short = "医療機関コード、適用時パス識別子を半角ピリオド\".\"で連結したものを設定する。"
* identifier[applyGoalId].value ^definition = "医療機関コード、適用時パス識別子を半角ピリオド\".\"で連結したものを設定する。"
* lifecycleStatus MS
* lifecycleStatus ^definition = "パス終了区分、設定できない場合は、completedを設定する。"
* description MS
* description.text 1.. MS
* description.text ^short = "施設パス名称"
* description.text ^definition = "施設パス名称"
* subject only Reference($JP_Patient)
* subject MS
* subject ^short = "パスを適用する患者リソース（Patient）への参照"
* subject ^definition = "パスを適用する患者リソース（Patient）への参照"
* addresses only Reference($EPathConditionCarePlanAddresses)
* addresses ^short = "病名（Condition）への参照"
* addresses ^definition = "病名（Condition）への参照"