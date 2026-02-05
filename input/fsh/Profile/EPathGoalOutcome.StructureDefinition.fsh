Alias: $EPathPractitioner = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner
Alias: $EPathPractitionerRole = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitionerRole
Alias: $EPathObservationEvaluation = http://e-path.jp/fhir/ePath/StructureDefinition/EPathObservationEvaluation
Alias: $EPathObservationExecution = http://e-path.jp/fhir/ePath/StructureDefinition/EPathObservationExecution
Alias: $JP_Patient = http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient
Alias: $EPathStateOfAchievementVS = http://e-path.jp/fhir/ePath/ValueSet/EPathStateOfAchievementVS

Profile: EPathGoalOutcome
Parent: Goal
Id: EPathGoalOutcome
Title: "EPath Goal Outcome"
Description: "アウトカム 目標・評価情報"
* ^url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalOutcome"
* ^status = #active
* meta 1..
* meta.profile 1.. MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalOutcome|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalOutcome|x.y.z を設定する。"
* contained ^slicing.discriminator.type = #profile
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #open
* contained contains
    author 0..* MS and
    authorJob 0..* MS and
    judgement 0..* MS and
    achievement 0..* MS
* contained[author] only $EPathPractitioner
* contained[author] ^short = "評価者"
* contained[author] ^definition = "評価者"
* contained[authorJob] only $EPathPractitionerRole
* contained[authorJob] ^short = "評価者職種"
* contained[authorJob] ^definition = "評価者職種"
* contained[judgement] only $EPathObservationEvaluation
* contained[judgement] ^short = "アウトカム単位の評価"
* contained[judgement] ^definition = "アウトカム単位の評価"
* contained[achievement] only $EPathObservationExecution
* contained[achievement] ^short = "達成記録"
* contained[achievement] ^definition = "達成記録"
* contained[achievement].identifier ^slicing.discriminator.type = #value
* contained[achievement].identifier ^slicing.discriminator.path = "system"
* contained[achievement].identifier ^slicing.rules = #open
* contained[achievement].category ^slicing.discriminator.type = #value
* contained[achievement].category ^slicing.discriminator.path = "coding.system"
* contained[achievement].category ^slicing.rules = #open
* contained[achievement].code.coding ^slicing.discriminator.type = #value
* contained[achievement].code.coding ^slicing.discriminator.path = "system"
* contained[achievement].code.coding ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains outcomeGoalId 1..1 MS
* identifier[outcomeGoalId].system 1..
* identifier[outcomeGoalId].system = "http://e-path.jp/fhir/ePath/IdSystem/outcome-goal-id" (exactly)
* identifier[outcomeGoalId].system ^short = "固定値 http://e-path.jp/fhir/ePath/IdSystem/outcome-goal-id を設定する。"
* identifier[outcomeGoalId].system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/outcome-goal-id を設定する。"
* identifier[outcomeGoalId].value 1.. MS
* identifier[outcomeGoalId].value ^short = "医療機関コード、適用時パス識別子、病日[-パスステップ]、OATユニット識別子[-リピート番号]を半角ピリオド\".\"で連結したものを設定する。"
* identifier[outcomeGoalId].value ^definition = "医療機関コード、適用時パス識別子、病日[-パスステップ]、OATユニット識別子[-リピート番号]を半角ピリオド\".\"で連結したものを設定する。"
* lifecycleStatus MS
* lifecycleStatus ^definition = "設定できない場合は、completedを設定する。"
* achievementStatus 1.. MS
* achievementStatus from $EPathStateOfAchievementVS (preferred)
* achievementStatus ^short = "評価状況"
* achievementStatus ^definition = "アウトカムに対する評価状況を表す区分。付録1 コード一覧「評価状況」に定めるコードを設定する。\r\n例）1：達成、2：未達成（バリアンス）、3：未評価"
* achievementStatus ^binding.description = "評価状況"
* achievementStatus.coding 1..1 MS
* achievementStatus.coding.system 1..
* achievementStatus.coding.code 1.. MS
* description MS
* description ^short = "アウトカム目標の説明"
* description ^definition = "アウトカム目標の説明"
* description.text 1..
* description.text ^short = "目標の説明テキスト、アウトカム名称を設定する。"
* description.text ^definition = "目標の説明テキスト、アウトカム名称を設定する。"
* subject only Reference($JP_Patient)
* subject MS
* subject ^short = "パスを適用する患者リソース（Patient）への参照"
* subject ^definition = "パスを適用する患者リソース（Patient）への参照"
* outcomeReference MS
* outcomeReference ^short = "アウトカム単位の評価、または達成記録（Observation）への参照"
* outcomeReference ^definition = "アウトカム単位の評価、または達成記録（Observation）への参照"