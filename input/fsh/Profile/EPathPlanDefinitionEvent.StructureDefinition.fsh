Alias: $EPathPlanDefinitionEventActionExtensions = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionEventActionExtensions
Alias: $EPathPlanDefinitionMajorEventExtensions = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionMajorEventExtensions
Alias: $EPathPlanDefinitionOATUnitActionExtensions = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionOATUnitActionExtensions
Alias: $EPathPlanDefinitionAssessmentActionExtensions = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionAssessmentActionExtensions
Alias: $EPathPlanDefinitionTaskExtensions = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionTaskExtensions
Alias: $EPathOutcomeCategoryVS = http://e-path.jp/fhir/ePath/ValueSet/EPathOutcomeCategoryVS
Alias: $EPathOutcomeSubCategoryVS = http://e-path.jp/fhir/ePath/ValueSet/EPathOutcomeSubCategoryVS
Alias: $EPathOutcomeCodeVS = http://e-path.jp/fhir/ePath/ValueSet/EPathOutcomeCodeVS
Alias: $EPathAssessmentCategoryVS = http://e-path.jp/fhir/ePath/ValueSet/EPathAssessmentCategoryVS
Alias: $EPathAssessmentCodeVS = http://e-path.jp/fhir/ePath/ValueSet/EPathAssessmentCodeVS

Profile: EPathPlanDefinitionEvent
Parent: PlanDefinition
Id: EPathPlanDefinitionEvent
Title: "EPath PlanDefinition Event"
Description: "病日・イベント情報定義"
* ^status = #active
* meta 1..
* meta.profile 1.. MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionEvent|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionEvent|x.y.z を設定する。"
* extension contains
    $EPathPlanDefinitionEventActionExtensions named ePathPlanDefinitionEventActionExtensions 1..1 MS and
    $EPathPlanDefinitionMajorEventExtensions named ePathPlanDefinitionMajorEventExtensions 0..*
* extension[ePathPlanDefinitionEventActionExtensions] ^isModifier = false
* extension[ePathPlanDefinitionMajorEventExtensions] ^isModifier = false
* url 1.. MS
* url ^short = "ベースURL/PlanDefinition/イベントテンプレート識別子 を設定する。"
* url ^definition = "ベースURL/PlanDefinition/EVT.イベントテンプレート識別子 を設定する。\r\n例）http://e-path.jp/fhir/ePath/PlanDefinition/EVT.ZZZZZZZZZZ.CN05I00511-0.1（CN05I00511-0 の 病日1を表す）"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains eventTemplateId 1..1 MS
* identifier[eventTemplateId] ^short = "イベントテンプレート識別子"
* identifier[eventTemplateId] ^definition = "イベントテンプレート識別子"
* identifier[eventTemplateId].system 1..
* identifier[eventTemplateId].system = "http://e-path.jp/fhir/ePath/IdSystem/event-template-id" (exactly)
* identifier[eventTemplateId].system ^short = "The names固定値 http://e-path.jp/fhir/ePath/IdSystem/event-template-id を設定する。pace for the identifier value"
* identifier[eventTemplateId].system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/event-template-id を設定する。"
* identifier[eventTemplateId].value 1.. MS
* identifier[eventTemplateId].value ^short = "イベントテンプレート識別子。パス識別（パスコード）、病日[-パスステップ]を半角ピリオド"."で連結したものを設定する。"
* identifier[eventTemplateId].value ^definition = "イベントテンプレート識別子。パス識別（パスコード）、病日[-パスステップ]を半角ピリオド"."で連結したものを設定する。"
* name ^short = "パス識別、病日を半角ピリオド\".\"で連結したものを設定する。"
* name ^definition = "パス識別、病日を半角ピリオド\".\"で連結したものを設定する。"
* action ^slicing.discriminator.type = #value
* action ^slicing.discriminator.path = "extension.url"
* action ^slicing.rules = #open
* action ^short = "OATユニット"
* action ^definition = "OATユニット"
* action contains
    oatUnit 0..*
* action[oatUnit] ^short = "OATユニット"
* action[oatUnit] ^definition = "OATユニット"
* action[oatUnit].id 1.. MS
* action[oatUnit].id ^short = "OATユニット識別子[-リピート番号]を設定する。"
* action[oatUnit].id ^definition = "OATユニット識別子[-リピート番号]を設定する。"
* action[oatUnit].extension 1..
* action[oatUnit].extension contains $EPathPlanDefinitionOATUnitActionExtensions named ePathPlanDefinitionOATUnitActionExtensions 1..1
* action[oatUnit].extension[ePathPlanDefinitionOATUnitActionExtensions] ^isModifier = false
* action[oatUnit].code ^slicing.discriminator.type = #value
* action[oatUnit].code ^slicing.discriminator.path = "coding.system"
* action[oatUnit].code ^slicing.rules = #open
* action[oatUnit].code contains
    BOMCategory 0..* and
    LocalCategory 0..* and
    BOMSubCategory 0..* and
    LocalSubCategory 0..* and
    BOMOutcomeCode 0..* and
    LocalOutcomeCode 0..*
* action[oatUnit].code[BOMCategory] ^short = "BOM大分類コード・名称"
* action[oatUnit].code[BOMCategory] ^definition = "BOM大分類コード・名称\r\n「BOM大分類コード」より設定する。"
* action[oatUnit].code[BOMCategory].coding 1..1 MS
* action[oatUnit].code[BOMCategory].coding from $EPathOutcomeCategoryVS (preferred)
* action[oatUnit].code[BOMCategory].coding.system 1..
* action[oatUnit].code[BOMCategory].coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMOutcomeCategoryCS" (exactly)
* action[oatUnit].code[BOMCategory].coding.code 1.. MS
* action[oatUnit].code[BOMCategory].coding.display 1.. MS
* action[oatUnit].code[LocalCategory] ^short = "アウトカム大分類コード・名称"
* action[oatUnit].code[LocalCategory] ^definition = "アウトカム大分類コード・名称"
* action[oatUnit].code[LocalCategory].coding MS
* action[oatUnit].code[LocalCategory].coding.system 1..
* action[oatUnit].code[LocalCategory].coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathLocalOutcomeCategoryCS" (exactly)
* action[oatUnit].code[LocalCategory].coding.code 1.. MS
* action[oatUnit].code[LocalCategory].coding.display 0.. MS
* action[oatUnit].code[BOMSubCategory] ^short = "BOM中分類コード・名称"
* action[oatUnit].code[BOMSubCategory] ^definition = "BOM中分類コード・名称\r\n「BOM中分類コード」より設定する。"
* action[oatUnit].code[BOMSubCategory].coding 1..1 MS
* action[oatUnit].code[BOMSubCategory].coding from $EPathOutcomeSubCategoryVS (preferred)
* action[oatUnit].code[BOMSubCategory].coding.system 1..
* action[oatUnit].code[BOMSubCategory].coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMOutcomeSubCategoryCS" (exactly)
* action[oatUnit].code[BOMSubCategory].coding.code 1.. MS
* action[oatUnit].code[BOMSubCategory].coding.display 1.. MS
* action[oatUnit].code[LocalSubCategory] ^short = "アウトカム中分類コード・名称"
* action[oatUnit].code[LocalSubCategory] ^definition = "アウトカム中分類コード・名称"
* action[oatUnit].code[LocalSubCategory].coding MS
* action[oatUnit].code[LocalSubCategory].coding.system 1..
* action[oatUnit].code[LocalSubCategory].coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathLocalOutcomeSubCategoryCS" (exactly)
* action[oatUnit].code[LocalSubCategory].coding.code 1.. MS
* action[oatUnit].code[LocalSubCategory].coding.display 0.. MS
* action[oatUnit].code[BOMOutcomeCode] ^short = "BOMアウトカムコード・名称"
* action[oatUnit].code[BOMOutcomeCode] ^definition = "BOMアウトカムコード・名称\r\n「BOMアウトカムコード」より設定する。\r\nコード一覧で示すコード・名称が設定できない場合、施設等のローカル内で定めたローカルコード・名称・コード体系を設定してもよい。"
* action[oatUnit].code[BOMOutcomeCode].coding 1..1 MS
* action[oatUnit].code[BOMOutcomeCode].coding from $EPathOutcomeCodeVS (preferred)
* action[oatUnit].code[BOMOutcomeCode].coding.system 1..
* action[oatUnit].code[BOMOutcomeCode].coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMOutcomeCodeCS" (exactly)
* action[oatUnit].code[BOMOutcomeCode].coding.code 1.. MS
* action[oatUnit].code[BOMOutcomeCode].coding.display 1.. MS
* action[oatUnit].code[LocalOutcomeCode] ^short = "アウトカムコード・名称"
* action[oatUnit].code[LocalOutcomeCode] ^definition = "アウトカムコード・名称"
* action[oatUnit].code[LocalOutcomeCode].coding MS
* action[oatUnit].code[LocalOutcomeCode].coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathLocalOutcomeCodeCS" (exactly)
* action[oatUnit].code[LocalOutcomeCode].coding.code 1.. MS
* action[oatUnit].code[LocalOutcomeCode].coding.display 1.. MS
* action[oatUnit].action ^slicing.discriminator.type = #value
* action[oatUnit].action ^slicing.discriminator.path = "extension.url"
* action[oatUnit].action ^slicing.rules = #open
* action[oatUnit].action ^short = "観察項目"
* action[oatUnit].action ^definition = "観察項目"
* action[oatUnit].action contains
    assessment 0..*
* action[oatUnit].action[assessment] ^short = "観察項目"
* action[oatUnit].action[assessment] ^definition = "観察項目"
* action[oatUnit].action[assessment].id 1.. MS
* action[oatUnit].action[assessment].id ^short = "パス識別、病日、OATユニット識別子、観察項目識別子を半角ピリオド\".\"で連結したものを設定する。"
* action[oatUnit].action[assessment].id ^definition = "パス識別、病日、OATユニット識別子、観察項目識別子を半角ピリオド\".\"で連結したものを設定する。"
* action[oatUnit].action[assessment].extension 1..
* action[oatUnit].action[assessment].extension contains $EPathPlanDefinitionAssessmentActionExtensions named ePathPlanDefinitionAssessmentActionExtensions 1..1 MS
* action[oatUnit].action[assessment].extension[ePathPlanDefinitionAssessmentActionExtensions] ^isModifier = false
* action[oatUnit].action[assessment].code ^slicing.discriminator.type = #value
* action[oatUnit].action[assessment].code ^slicing.discriminator.path = "coding.system"
* action[oatUnit].action[assessment].code ^slicing.rules = #open
* action[oatUnit].action[assessment].code contains
    BOMAssessmentCategory 0..* and
    LocalAssessmentCategory 0..* and
    BOMAssessmentCode 0..* and
    LocalAssessmentCode 0..* and
    AssesmentCodeEmpty 0..*
* action[oatUnit].action[assessment].code[BOMAssessmentCategory] ^short = "BOM観察項目分類コード・名称"
* action[oatUnit].action[assessment].code[BOMAssessmentCategory] ^definition = "BOM観察項目分類コード・名称\r\n「BOM観察項目分類コード」より設定する。"
* action[oatUnit].action[assessment].code[BOMAssessmentCategory].coding 1..1 MS
* action[oatUnit].action[assessment].code[BOMAssessmentCategory].coding from $EPathAssessmentCategoryVS (preferred)
* action[oatUnit].action[assessment].code[BOMAssessmentCategory].coding.system 1..
* action[oatUnit].action[assessment].code[BOMAssessmentCategory].coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMAssessmentCategoryCS" (exactly)
* action[oatUnit].action[assessment].code[BOMAssessmentCategory].coding.code 1..
* action[oatUnit].action[assessment].code[BOMAssessmentCategory].coding.display 1..
* action[oatUnit].action[assessment].code[LocalAssessmentCategory] ^short = "観察項目分類コード・名称"
* action[oatUnit].action[assessment].code[LocalAssessmentCategory] ^definition = "観察項目分類コード・名称"
* action[oatUnit].action[assessment].code[LocalAssessmentCategory].coding 1..1 MS
* action[oatUnit].action[assessment].code[LocalAssessmentCategory].coding.system 1..
* action[oatUnit].action[assessment].code[LocalAssessmentCategory].coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathLocalAssessmentCategoryCS" (exactly)
* action[oatUnit].action[assessment].code[LocalAssessmentCategory].coding.code 1.. MS
* action[oatUnit].action[assessment].code[LocalAssessmentCategory].coding.display 0.. MS
* action[oatUnit].action[assessment].code[BOMAssessmentCode] ^short = "BOM観察項目コード・名称"
* action[oatUnit].action[assessment].code[BOMAssessmentCode] ^definition = "BOM観察項目コード・名称\r\n「BOM観察項目コード」より設定する。"
* action[oatUnit].action[assessment].code[BOMAssessmentCode].coding 1..1 MS
* action[oatUnit].action[assessment].code[BOMAssessmentCode].coding from $EPathAssessmentCodeVS (preferred)
* action[oatUnit].action[assessment].code[BOMAssessmentCode].coding.system 1..
* action[oatUnit].action[assessment].code[BOMAssessmentCode].coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMAssessmentCodeCS" (exactly)
* action[oatUnit].action[assessment].code[BOMAssessmentCode].coding.code 1.. MS
* action[oatUnit].action[assessment].code[BOMAssessmentCode].coding.display 1.. MS
* action[oatUnit].action[assessment].code[LocalAssessmentCode] ^short = "観察項目コード・名称"
* action[oatUnit].action[assessment].code[LocalAssessmentCode] ^definition = "観察項目コード・名称"
* action[oatUnit].action[assessment].code[LocalAssessmentCode].coding 1..1 MS
* action[oatUnit].action[assessment].code[LocalAssessmentCode].coding.system 1..
* action[oatUnit].action[assessment].code[LocalAssessmentCode].coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathLocalAssessmentCodeCS" (exactly)
* action[oatUnit].action[assessment].code[LocalAssessmentCode].coding.code 1.. MS
* action[oatUnit].action[assessment].code[LocalAssessmentCode].coding.display 1.. MS
* action[oatUnit].action[assessment].code[AssesmentCodeEmpty] ^short = "観察項目なし"
* action[oatUnit].action[assessment].code[AssesmentCodeEmpty] ^definition = "タスクのみの観察項目でBOMやローカル観察項目コードを設定できない場合に使用する。"
* action[oatUnit].action[assessment].code[AssesmentCodeEmpty].coding 1..1 MS
* action[oatUnit].action[assessment].code[AssesmentCodeEmpty].coding from $EPathAssessmentCodeVS (required)
* action[oatUnit].action[assessment].code[AssesmentCodeEmpty].coding.system 1..
* action[oatUnit].action[assessment].code[AssesmentCodeEmpty].coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathAssessmentCodeEmptyCS" (exactly)
* action[oatUnit].action[assessment].code[AssesmentCodeEmpty].coding.code 1.. MS
* action[oatUnit].action[assessment].code[AssesmentCodeEmpty].coding.code = #ZZZZZZZZZZ (exactly)
* action[oatUnit].action[assessment].relatedAction.extension contains $EPathPlanDefinitionTaskExtensions named ePathPlanDefinitionTaskExtensions 0..* MS
* action[oatUnit].action[assessment].relatedAction.extension[ePathPlanDefinitionTaskExtensions] ^isModifier = false