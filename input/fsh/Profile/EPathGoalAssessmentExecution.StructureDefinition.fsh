Alias: $EPathPractitioner = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner
Alias: $EPathPractitionerRole = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitionerRole
Alias: $EPathObservationEvaluation = http://e-path.jp/fhir/ePath/StructureDefinition/EPathObservationEvaluation
Alias: $EPathObservationExecution = http://e-path.jp/fhir/ePath/StructureDefinition/EPathObservationExecution
Alias: $JP_Patient = http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient
Alias: $EPathStateOfAchievementVS = http://e-path.jp/fhir/ePath/ValueSet/EPathStateOfAchievementVS
Alias: $EPathAssessmentCategoryVS = http://e-path.jp/fhir/ePath/ValueSet/EPathAssessmentCategoryVS
Alias: $EPathAssessmentCodeVS = http://e-path.jp/fhir/ePath/ValueSet/EPathAssessmentCodeVS

Profile: EPathGoalAssessmentExecution
Parent: Goal
Id: EPathGoalAssessmentExecution
Title: "EPath Goal AssessmentExecution"
Description: "観察項目実施 目標・評価情報"
* ^url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalAssessmentExecution"
* ^status = #active
* meta 1..
* meta.profile 1.. MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalAssessmentExecution|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalAssessmentExecution|x.y.z を設定する。"
* contained ^slicing.discriminator.type = #profile
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #open
* contained contains
    author 0..* MS and
    authorJob 0..* MS and
    evaluation 0..* MS and
    observationResult 0..* MS
* contained[author] only $EPathPractitioner
* contained[author] ^short = "評価者"
* contained[authorJob] only $EPathPractitionerRole
* contained[authorJob] ^short = "評価者職種"
* contained[evaluation] only $EPathObservationEvaluation
* contained[evaluation] ^short = "観察項目単位の評価"
* contained[evaluation] ^definition = "観察項目単位の評価"
* contained[observationResult] only $EPathObservationExecution
* contained[observationResult] ^short = "観察結果"
* contained[observationResult] ^definition = "観察結果"
* contained[observationResult].identifier ^slicing.discriminator.type = #value
* contained[observationResult].identifier ^slicing.discriminator.path = "system"
* contained[observationResult].identifier ^slicing.rules = #open
* contained[observationResult].category ^slicing.discriminator.type = #value
* contained[observationResult].category ^slicing.discriminator.path = "coding.system"
* contained[observationResult].category ^slicing.rules = #open
* contained[observationResult].code.coding ^slicing.discriminator.type = #value
* contained[observationResult].code.coding ^slicing.discriminator.path = "system"
* contained[observationResult].code.coding ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains assessmentGoalId 1..1 MS
* identifier[assessmentGoalId].system 1..
* identifier[assessmentGoalId].system = "http://e-path.jp/fhir/ePath/IdSystem/assessment-goal-id" (exactly)
* identifier[assessmentGoalId].system ^short = "固定値 http://e-path.jp/fhir/ePath/IdSystem/assessment-goal-id を設定する。"
* identifier[assessmentGoalId].system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/assessment-goal-id を設定する。"
* identifier[assessmentGoalId].value 1.. MS
* identifier[assessmentGoalId].value ^short = "医療機関コード、適用時パス識別子、病日[-パスステップ]、OATユニット識別子[-リピート番号]、観察項目識別子、観察項目実施識別子を半角ピリオド\".\"で連結したものを設定する。観察項目識別子は観察項目レベルで一意の識別子を設定すること。"
* identifier[assessmentGoalId].value ^definition = "医療機関コード、適用時パス識別子、病日[-パスステップ]、OATユニット識別子[-リピート番号]、観察項目識別子、観察項目実施識別子を半角ピリオド\".\"で連結したものを設定する。観察項目識別子は観察項目レベルで一意の識別子を設定すること。"
* lifecycleStatus MS
* lifecycleStatus ^definition = "設定できない場合は、completedを設定する。."
* achievementStatus MS
* achievementStatus from $EPathStateOfAchievementVS (preferred)
* achievementStatus ^short = "評価状況"
* achievementStatus ^definition = "観察項目に対する評価状況を表す区分。付録1 コード一覧「評価状況」に定めるコードを設定する。\r\n例）1：達成、2：未達成（バリアンス）、3：未評価\r\n１．観察項目実施がすべて1：達成の場合、1：達成\r\n２．観察項目実施に1件以上の2：未達成がある場合、2：未達成\r\n３．1,2以外の場合、3：未評価"
* achievementStatus ^binding.description = "評価状況"
* achievementStatus.coding 1..1
* achievementStatus.coding.system 1..
* achievementStatus.coding.code 1..
* description MS
* description ^short = "観察項目目標の説明"
* description ^definition = "観察項目目標の説明"
* description.text 1..
* description.text ^short = "観察項目名称を設定する。"
* description.text ^definition = "観察項目名称を設定する。"
* subject only Reference($JP_Patient)
* subject MS
* subject ^short = "パスを適用する患者リソース（Patient）への参照"
* subject ^definition = "パスを適用する患者リソース（Patient）への参照"
* target ..1 MS
* target.measure 1.. MS
* target.measure.coding from $EPathAssessmentCategoryVS (example)
* target.measure.coding ^slicing.discriminator.type = #value
* target.measure.coding ^slicing.discriminator.path = "system"
* target.measure.coding ^slicing.rules = #open
* target.measure.coding ^short = "観察項目コード"
* target.measure.coding ^mustSupport = false
* target.measure.coding contains
    BOMAssessmentCode 0..* and
    LocalAssessmentCode 0..*
* target.measure.coding[BOMAssessmentCode] from $EPathAssessmentCodeVS (preferred)
* target.measure.coding[BOMAssessmentCode] ^short = "BOM観察項目コード・名称"
* target.measure.coding[BOMAssessmentCode] ^definition = "BOM観察項目コード・名称\r\n「BOM観察項目コード」より設定する。"
* target.measure.coding[BOMAssessmentCode].system 1..
* target.measure.coding[BOMAssessmentCode].system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMAssessmentCodeCS" (exactly)
* target.measure.coding[BOMAssessmentCode].code 1.. MS
* target.measure.coding[BOMAssessmentCode].display 1.. MS
* target.measure.coding[LocalAssessmentCode] ^short = "観察項目コード・名称"
* target.measure.coding[LocalAssessmentCode].system 1..
* target.measure.coding[LocalAssessmentCode].system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathLocalAssessmentCodeCS" (exactly)
* target.measure.coding[LocalAssessmentCode].code 1.. MS
* target.measure.coding[LocalAssessmentCode].display 1.. MS
* target.detail[x] MS
* target.detail[x] ^short = "適正値"
* target.detail[x] ^definition = "観察項目の評価基準となる適正値。疾患別ひな型パスで定める適正値、または施設等のローカル内で定めた適正値を設定する。"
* outcomeReference MS
* outcomeReference ^short = "観察項目単位の評価、または観察結果（Observation）への参照"
* outcomeReference ^definition = "観察項目単位の評価、または観察結果（Observation）への参照"