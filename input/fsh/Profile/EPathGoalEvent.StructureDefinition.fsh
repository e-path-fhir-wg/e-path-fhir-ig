Alias: $EPathPractitioner = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner
Alias: $EPathPractitionerRole = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitionerRole
Alias: $EPathObservationEvaluation = http://e-path.jp/fhir/ePath/StructureDefinition/EPathObservationEvaluation
Alias: $JP_Patient = http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient

Profile: EPathGoalEvent
Parent: Goal
Id: EPathGoalEvent
Title: "EPath Goal Event"
Description: "病日・イベント 目標・評価情報"
* ^url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalEvent"
* ^status = #active
* meta 1..
* meta.profile 1.. MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalEvent|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalEvent|x.y.z を設定する。"
* contained ^slicing.discriminator.type = #profile
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #open
* contained contains
    author 0..* MS and
    authorJob 0..* MS and
    compAssessment 0..* MS
* contained[author] only $EPathPractitioner
* contained[author] ^short = "評価者"
* contained[author] ^definition = "評価者"
* contained[authorJob] only $EPathPractitionerRole
* contained[authorJob] ^short = "記録者職種"
* contained[authorJob] ^definition = "記録者職種"
* contained[compAssessment] only $EPathObservationEvaluation
* contained[compAssessment] ^short = "総合評価"
* contained[compAssessment] ^definition = "総合評価"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains eventGoalId 1..1 MS
* identifier[eventGoalId] ^short = "resourceInstanceIdentifier"
* identifier[eventGoalId].system 1..
* identifier[eventGoalId].system = "http://e-path.jp/fhir/ePath/IdSystem/event-goal-id" (exactly)
* identifier[eventGoalId].system ^short = "固定値 http://e-path.jp/fhir/ePath/IdSystem/event-goal-id を設定する。"
* identifier[eventGoalId].system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/event-goal-id を設定する。"
* identifier[eventGoalId].value 1.. MS
* identifier[eventGoalId].value ^short = "医療機関コード、適用時パス識別子、病日[-パスステップ]を半角ピリオド\".\"で連結したものを設定する。イベント識別子は、病日、パスステップを半角ハイフン\"-\"で連結し、生成する。"
* identifier[eventGoalId].value ^definition = "医療機関コード、適用時パス識別子、病日[-パスステップ]を半角ピリオド\".\"で連結したものを設定する。イベント識別子は、病日、パスステップを半角ハイフン\"-\"で連結し、生成する。"
* lifecycleStatus MS
* lifecycleStatus ^definition = "設定できない場合は、completedを設定する。"
* description ^short = "病日、またはイベント目標の説明"
* description ^definition = "病日、またはイベント目標の説明"
* description.text 1.. MS
* description.text ^short = "病日、またはイベント名称を設定する。"
* description.text ^definition = "病日、またはイベント名称を設定する。"
* subject only Reference($JP_Patient)
* subject MS
* subject ^short = "パスを適用する患者リソース（Patient）への参照"
* subject ^definition = "パスを適用する患者リソース（Patient）への参照"
* statusDate ^short = "記録日"
* statusDate ^definition = "記録日時の日付部分を設定する。"
* statusDate ^mustSupport = false
* statusReason ^short = "総合評価フリーテキスト"
* statusReason ^definition = "総合評価フリーテキスト"
* statusReason ^mustSupport = false
* outcomeReference MS
* outcomeReference ^short = "イベント単位の総合評価（Observation）への参照"
* outcomeReference ^definition = "イベント単位の総合評価（Observation）への参照"