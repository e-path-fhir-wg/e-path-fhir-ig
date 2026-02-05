Alias: $EPathCarePlanStatusTypeWhenOccured = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanStatusTypeWhenOccured
Alias: $EPathCarePlanEPathApply = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanEPathApply
Alias: $JP_Patient = http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient
Alias: $EPathGoalAssessmentExecution = http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalAssessmentExecution
Alias: $EPathProcedureTask = http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureTask
Alias: $EPathAssessmentCategoryVS = http://e-path.jp/fhir/ePath/ValueSet/EPathAssessmentCategoryVS
Alias: $EPathAssessmentCodeVS = http://e-path.jp/fhir/ePath/ValueSet/EPathAssessmentCodeVS

Profile: EPathCarePlanAssessment
Parent: CarePlan
Id: EPathCarePlanAssessment
Title: "EPath CarePlan Assessment"
Description: "観察項目情報"
* ^url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAssessment"
* ^status = #active
* meta 1..
* meta.profile 1.. MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAssessment|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAssessment|x.y.z を設定する。"
* extension contains $EPathCarePlanStatusTypeWhenOccured named ePathCarePlanStatusTypeWhenOccured 1..1
* extension[ePathCarePlanStatusTypeWhenOccured] ^isModifier = false
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains assessmentId 1..1 MS
* identifier[assessmentId] ^short = "リソース一意識別子（観察項目）"
* identifier[assessmentId] ^definition = "リソース一意識別子（観察項目）"
* identifier[assessmentId].system 1..
* identifier[assessmentId].system = "http://e-path.jp/fhir/ePath/IdSystem/assessment-id" (exactly)
* identifier[assessmentId].value 1.. MS
* identifier[assessmentId].value ^short = "医療機関コード、適用時パス識別子、病日[-パスステップ]、OATユニット識別子[-リピート番号]、観察項目識別子を半角ピリオド\".\"で連結したものを設定する。観察項目識別子は観察項目レベルで一意の識別子を設定すること。"
* identifier[assessmentId].value ^definition = "医療機関コード、適用時パス識別子、病日[-パスステップ]、OATユニット識別子[-リピート番号]、観察項目識別子を半角ピリオド\".\"で連結したものを設定する。観察項目識別子は観察項目レベルで一意の識別子を設定すること。"
* partOf ^slicing.discriminator.type = #value
* partOf ^slicing.discriminator.path = "identifier.system"
* partOf ^slicing.rules = #open
* partOf contains
    applyId 1..1 and
    eventId 1..1 and
    oatUnitId 1..1
* partOf[applyId] only Reference($EPathCarePlanEPathApply)
* partOf[applyId].identifier 1.. MS
* partOf[applyId].identifier ^short = "リソース一意識別子（パス）"
* partOf[applyId].identifier ^definition = "リソース一意識別子（パス）"
* partOf[applyId].identifier.system 1.. MS
* partOf[applyId].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id" (exactly)
* partOf[applyId].identifier.system ^short = "固定値 http://e-path.jp/fhir/ePath/IdSystem/apply-id を設定する。"
* partOf[applyId].identifier.system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/apply-id を設定する。"
* partOf[applyId].identifier.value 1.. MS
* partOf[eventId].identifier 1.. MS
* partOf[eventId].identifier ^short = "リソース一意識別子（イベント）"
* partOf[eventId].identifier ^definition = "リソース一意識別子（イベント）"
* partOf[eventId].identifier.system 1.. MS
* partOf[eventId].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/event-id" (exactly)
* partOf[eventId].identifier.system ^short = "固定値 http://e-path.jp/fhir/ePath/IdSystem/event-id を設定する。"
* partOf[eventId].identifier.system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/event-id を設定する。"
* partOf[eventId].identifier.value 1.. MS
* partOf[oatUnitId].identifier 1.. MS
* partOf[oatUnitId].identifier ^short = "リソース一意識別子（OATユニット）"
* partOf[oatUnitId].identifier ^definition = "リソース一意識別子（OATユニット）"
* partOf[oatUnitId].identifier.system 1..
* partOf[oatUnitId].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/oat-unit-id" (exactly)
* partOf[oatUnitId].identifier.system ^short = "固定値 http://e-path.jp/fhir/ePath/IdSystem/oat-unit-id を設定する。"
* partOf[oatUnitId].identifier.system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/oat-unit-id を設定する。"
* partOf[oatUnitId].identifier.system ^mustSupport = false
* partOf[oatUnitId].identifier.value 1.. MS
* status MS
* status ^definition = "active（有効かつ対応する準備ができている）、completed（完了）、revoked（中止）を設定する。"
* intent = #plan (exactly)
* intent MS
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category ^mustSupport = false
* category contains
    BOMAssessmentCategory 0..1 and
    LocalAssessmentCategory 0..1 and
    BOMAssessmentCode 0..1 and
    LocalAssessmentCode 0..1 and
    AssesmentCodeEmpty 0..1
* category[BOMAssessmentCategory] ^short = "BOM観察項目分類コード・名称"
* category[BOMAssessmentCategory] ^definition = "BOM観察項目分類コード・名称\r\n「BOM観察項目分類コード」より設定する。"
* category[BOMAssessmentCategory].coding 1..1 MS
* category[BOMAssessmentCategory].coding from $EPathAssessmentCategoryVS (preferred)
* category[BOMAssessmentCategory].coding.system 1..
* category[BOMAssessmentCategory].coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMAssessmentCategoryCS" (exactly)
* category[BOMAssessmentCategory].coding.code 1.. MS
* category[BOMAssessmentCategory].coding.display 1.. MS
* category[LocalAssessmentCategory] ^short = "観察項目コード・名称"
* category[LocalAssessmentCategory] ^definition = "観察項目コード・名称"
* category[LocalAssessmentCategory].coding 1..1 MS
* category[LocalAssessmentCategory].coding.system 1..
* category[LocalAssessmentCategory].coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathLocalAssessmentCategoryCS" (exactly)
* category[LocalAssessmentCategory].coding.code 1.. MS
* category[LocalAssessmentCategory].coding.display 0.. MS
* category[BOMAssessmentCode] ^short = "BOM観察項目コード・名称"
* category[BOMAssessmentCode] ^definition = "BOM観察項目コード・名称\r\n「BOM観察項目コード」より設定する。"
* category[BOMAssessmentCode].coding 1..1 MS
* category[BOMAssessmentCode].coding from $EPathAssessmentCodeVS (preferred)
* category[BOMAssessmentCode].coding.system 1..
* category[BOMAssessmentCode].coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMAssessmentCodeCS" (exactly)
* category[BOMAssessmentCode].coding.code 1.. MS
* category[BOMAssessmentCode].coding.display 1.. MS
* category[LocalAssessmentCode] ^short = "観察項目コード・名称"
* category[LocalAssessmentCode] ^definition = "観察項目コード・名称"
* category[LocalAssessmentCode].coding 1..1 MS
* category[LocalAssessmentCode].coding.system 1..
* category[LocalAssessmentCode].coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathLocalAssessmentCodeCS" (exactly)
* category[LocalAssessmentCode].coding.code 1.. MS
* category[LocalAssessmentCode].coding.display 1.. MS
* category[AssesmentCodeEmpty] ^short = "観察項目なし"
* category[AssesmentCodeEmpty] ^definition = "タスクのみの観察項目でBOMやローカル観察項目コードを設定できない場合に使用する。"
* category[AssesmentCodeEmpty].coding 1..1 MS
* category[AssesmentCodeEmpty].coding from $EPathAssessmentCodeVS (required)
* category[AssesmentCodeEmpty].coding.system 1..
* category[AssesmentCodeEmpty].coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathAssessmentCodeEmptyCS" (exactly)
* category[AssesmentCodeEmpty].coding.code 1.. MS
* category[AssesmentCodeEmpty].coding.code = #ZZZZZZZZZZ (exactly)
* title 1.. MS
* title ^short = "観察項目名称"
* title ^definition = "観察項目名称"
* subject only Reference($JP_Patient)
* subject MS
* subject ^short = "パスを適用する患者リソース（Patient）への参照"
* subject ^definition = "パスを適用する患者リソース（Patient）への参照"
* goal only Reference($EPathGoalAssessmentExecution)
* goal ^short = "観察項目実施目標・評価情報（Goal）への参照"
* goal ^definition = "観察項目実施目標・評価情報（Goal）への参照"
* goal ^mustSupport = false
* activity.outcomeReference ..1
* activity.outcomeReference only Reference($EPathProcedureTask)
* activity.outcomeReference ^short = "観察項目にひもづくタスク（Procedure）への参照"
* activity.outcomeReference ^definition = "観察項目にひもづくタスク（Procedure）への参照"
* activity.outcomeReference ^mustSupport = false