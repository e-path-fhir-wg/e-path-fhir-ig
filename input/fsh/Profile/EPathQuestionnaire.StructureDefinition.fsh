Alias: $EPathQuestionnaireItemExtensions = http://e-path.jp/fhir/ePath/StructureDefinition/EPathQuestionnaireItemExtensions
Alias: $EPathOutcomeCategoryVS = http://e-path.jp/fhir/ePath/ValueSet/EPathOutcomeCategoryVS
Alias: $EPathOutcomeSubCategoryVS = http://e-path.jp/fhir/ePath/ValueSet/EPathOutcomeSubCategoryVS
Alias: $EPathOutcomeCodeVS = http://e-path.jp/fhir/ePath/ValueSet/EPathOutcomeCodeVS
Alias: $EPathAssessmentCategoryVS = http://e-path.jp/fhir/ePath/ValueSet/EPathAssessmentCategoryVS
Alias: $EPathAssessmentCodeVS = http://e-path.jp/fhir/ePath/ValueSet/EPathAssessmentCodeVS

Profile: EPathQuestionnaire
Parent: Questionnaire
Id: EPathQuestionnaire
Title: "EPath Questionnaire"
Description: "入力フォーム定義（病日・イベント単位）"
* ^version = "1.0.0"
* ^status = #active
* . ^short = "患者入力フォーム"
* . ^definition = "患者入力フォーム、病日単位でリソースを作成を想定する。"
* meta 1..
* meta.profile 1.. MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathQuestionnaire|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathQuestionnaire|x.y.z を設定する。"
* url 1.. MS
* url ^short = "ベースURL/Questionnaire/入力フォーム識別子 を設定する。"
* url ^definition = "ベースURL/Questionnaire/入力フォーム識別子 を設定する。例）http://e-path.jp/fhir/ePath/Questionnaire/CN05I00511-0.1（CN05I00511-0 の 病日1用の入力フォームテンプレートを表す）"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains eventQuisId 1..1 MS
* identifier[eventQuisId] ^short = "入力フォーム単位の識別子"
* identifier[eventQuisId] ^definition = "入力フォーム単位の識別子"
* identifier[eventQuisId].system 1..
* identifier[eventQuisId].system = "http://e-path.jp/fhir/ePath/IdSystem/quis-id" (exactly)
* identifier[eventQuisId].system ^short = "固定値 http://e-path.jp/fhir/ePath/IdSystem/quis-id を設定する。"
* identifier[eventQuisId].system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/quis-id を設定する。"
* identifier[eventQuisId].value 1.. MS
* identifier[eventQuisId].value ^short = "入力フォーム単位の識別子"
* identifier[eventQuisId].value ^definition = "入力フォーム単位の識別子"
* title 1.. MS
* title ^short = "入力フォームタイトル"
* title ^definition = "入力フォームのタイトルを設定する。"
* description ^short = "入力フォームの説明"
* description ^definition = "ヒューマンリーダブルな形式で入力フォームの説明を設定する。"
* description ^mustSupport = false
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "type"
* item ^slicing.rules = #open
* item ^short = "入力コントロール"
* item ^definition = "1階層目にOATユニット、2階層目を観察項目の内容を設定する。入力コントロールの定義（ePathメッセージの観察項目結果値定義）は、ElementDefinitionではなく、拡張で対応する。"
* item.extension contains $EPathQuestionnaireItemExtensions named ePathQuestionnaireItemExtensions 0..*
* item.extension[ePathQuestionnaireItemExtensions] ^isModifier = false
* item contains
    oatUnit 0..* MS
* item[oatUnit] ^short = "フォームグループ（OATユニット単位）"
* item[oatUnit] ^definition = "フォームグループ（OATユニット単位）"
* item[oatUnit].linkId MS
* item[oatUnit].linkId ^short = "OATユニット識別子[-リピート番号]を半角ピリオド\".\"で連結したものを設定する。"
* item[oatUnit].linkId ^definition = "OATユニット識別子[-リピート番号]を半角ピリオド\".\"で連結したものを設定する。"
* item[oatUnit].code ^slicing.discriminator.type = #value
* item[oatUnit].code ^slicing.discriminator.path = "system"
* item[oatUnit].code ^slicing.rules = #open
* item[oatUnit].code contains
    BOMCategory 0..1 and
    LocalCategory 0..1 and
    BOMSubCategory 0..1 and
    LocalSubCategory 0..1 and
    BOMOutcomeCode 0..1 and
    LocalOutcomeCode 0..1
* item[oatUnit].code[BOMCategory] ^short = "BOM大分類コード・名称"
* item[oatUnit].code[BOMCategory] ^definition = "BOM大分類コード・名称\r\n「BOM大分類コード」より設定する。"
* item[oatUnit].code[BOMCategory] from $EPathOutcomeCategoryVS (preferred)
* item[oatUnit].code[BOMCategory].system 1..
* item[oatUnit].code[BOMCategory].system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMOutcomeCategoryCS" (exactly)
* item[oatUnit].code[BOMCategory].code 1.. MS
* item[oatUnit].code[BOMCategory].display 1.. MS
* item[oatUnit].code[LocalCategory] ^short = "アウトカム大分類コード・名称"
* item[oatUnit].code[LocalCategory] ^definition = "アウトカム大分類コード・名称"
* item[oatUnit].code[LocalCategory].system 1..
* item[oatUnit].code[LocalCategory].system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathLocalOutcomeCategoryCS" (exactly)
* item[oatUnit].code[LocalCategory].code 1.. MS
* item[oatUnit].code[LocalCategory].display 0.. MS
* item[oatUnit].code[BOMSubCategory] ^short = "BOM中分類コード・名称"
* item[oatUnit].code[BOMSubCategory] ^definition = "BOM中分類コード・名称\r\n「BOM中分類コード」より設定する。"
* item[oatUnit].code[BOMSubCategory] from $EPathOutcomeSubCategoryVS (preferred)
* item[oatUnit].code[BOMSubCategory].system 1..
* item[oatUnit].code[BOMSubCategory].system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMOutcomeSubCategoryCS" (exactly)
* item[oatUnit].code[BOMSubCategory].code 1.. MS
* item[oatUnit].code[BOMSubCategory].display 1.. MS
* item[oatUnit].code[LocalSubCategory] ^short = "アウトカム中分類コード・名称"
* item[oatUnit].code[LocalSubCategory] ^definition = "アウトカム中分類コード・名称"
* item[oatUnit].code[LocalSubCategory].system 1..
* item[oatUnit].code[LocalSubCategory].system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathLocalOutcomeSubCategoryCS" (exactly)
* item[oatUnit].code[LocalSubCategory].code 1.. MS
* item[oatUnit].code[LocalSubCategory].display 0.. MS
* item[oatUnit].code[BOMOutcomeCode] from $EPathOutcomeCodeVS (preferred)
* item[oatUnit].code[BOMOutcomeCode] ^short = "BOMアウトカムコード・名称"
* item[oatUnit].code[BOMOutcomeCode] ^definition = "BOMアウトカムコード・名称\r\n「BOMアウトカムコード」より設定する。\r\nコード一覧で示すコード・名称が設定できない場合、施設等のローカル内で定めたローカルコード・名称・コード体系を設定してもよい。"
* item[oatUnit].code[BOMOutcomeCode].system 1..
* item[oatUnit].code[BOMOutcomeCode].system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMOutcomeCodeCS" (exactly)
* item[oatUnit].code[BOMOutcomeCode].code 1.. MS
* item[oatUnit].code[BOMOutcomeCode].display 1.. MS
* item[oatUnit].code[LocalOutcomeCode] ^short = "アウトカムコード・名称"
* item[oatUnit].code[LocalOutcomeCode] ^definition = "アウトカムコード・名称"
* item[oatUnit].code[LocalOutcomeCode].system 1..
* item[oatUnit].code[LocalOutcomeCode].system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathLocalOutcomeCodeCS" (exactly)
* item[oatUnit].code[LocalOutcomeCode].code 1.. MS
* item[oatUnit].code[LocalOutcomeCode].display 1.. MS
* item[oatUnit].text 1.. MS
* item[oatUnit].text ^short = "アウトカムコード表記"
* item[oatUnit].text ^definition = "アウトカムコード表記"
* item[oatUnit].type = #group (exactly)
* item[oatUnit].type ^short = "group"
* item[oatUnit].type ^definition = "groupを指定する。"
* item[oatUnit].item ^slicing.discriminator.type = #value
* item[oatUnit].item ^slicing.discriminator.path = "type"
* item[oatUnit].item ^slicing.rules = #open
* item[oatUnit].item ^short = "入力コントロール"
* item[oatUnit].item ^definition = "1階層目にOATユニット、2階層目を観察項目の内容を設定する。入力コントロールの定義（ePathメッセージの観察項目結果値定義）は、ElementDefinitionではなく、拡張で対応する。"
* item[oatUnit].item.extension contains $EPathQuestionnaireItemExtensions named ePathQuestionnaireItemExtensions 0..*
* item[oatUnit].item.extension[ePathQuestionnaireItemExtensions] ^isModifier = false
* item[oatUnit].item contains
    assessment 0..* MS and
    assessmentChoice 0..*
* item[oatUnit].item[assessment] ^short = "フォーム入力（観察項目単位）"
* item[oatUnit].item[assessment] ^definition = "フォーム入力（観察項目単位）"
* item[oatUnit].item[assessment].extension ^slicing.ordered = false
* item[oatUnit].item[assessment].extension ^slicing.rules = #open
* item[oatUnit].item[assessment].linkId MS
* item[oatUnit].item[assessment].linkId ^short = "OATユニット識別子[-リピート番号]、観察項目識別子を半角ピリオド\".\"で連結したものを設定する。観察項目識別子は観察項目レベルで一意の識別子を設定すること。"
* item[oatUnit].item[assessment].linkId ^definition = "OATユニット識別子[-リピート番号]、観察項目識別子を半角ピリオド\".\"で連結したものを設定する。観察項目識別子は観察項目レベルで一意の識別子を設定すること。"
* item[oatUnit].item[assessment].code ^slicing.discriminator.type = #value
* item[oatUnit].item[assessment].code ^slicing.discriminator.path = "system"
* item[oatUnit].item[assessment].code ^slicing.rules = #open
* item[oatUnit].item[assessment].code contains
    BOMAssessmentCategory 0..1 and
    LocalAssessmentCategory 0..1 and
    BOMAssessmentCode 0..1 and
    LocalAssessmentCode 0..1
* item[oatUnit].item[assessment].code[BOMAssessmentCategory] ^short = "BOM観察項目分類コード・名称"
* item[oatUnit].item[assessment].code[BOMAssessmentCategory] ^definition = "BOM観察項目分類コード・名称"
* item[oatUnit].item[assessment].code[BOMAssessmentCategory] from $EPathAssessmentCategoryVS (preferred)
* item[oatUnit].item[assessment].code[BOMAssessmentCategory].system 1..
* item[oatUnit].item[assessment].code[BOMAssessmentCategory].system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMAssessmentCategoryCS" (exactly)
* item[oatUnit].item[assessment].code[BOMAssessmentCategory].code 1.. MS
* item[oatUnit].item[assessment].code[BOMAssessmentCategory].display 1.. MS
* item[oatUnit].item[assessment].code[LocalAssessmentCategory] ^short = "観察項目分類コード・名称"
* item[oatUnit].item[assessment].code[LocalAssessmentCategory] ^definition = "観察項目分類コード・名称"
* item[oatUnit].item[assessment].code[LocalAssessmentCategory].system 1..
* item[oatUnit].item[assessment].code[LocalAssessmentCategory].system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathLocalAssessmentCategoryCS" (exactly)
* item[oatUnit].item[assessment].code[LocalAssessmentCategory].code 1.. MS
* item[oatUnit].item[assessment].code[LocalAssessmentCategory].display 0.. MS
* item[oatUnit].item[assessment].code[BOMAssessmentCode] ^short = "BOM観察項目コード・名称"
* item[oatUnit].item[assessment].code[BOMAssessmentCode] ^definition = "BOM観察項目コード・名称"
* item[oatUnit].item[assessment].code[BOMAssessmentCode] from $EPathAssessmentCodeVS (preferred)
* item[oatUnit].item[assessment].code[BOMAssessmentCode].system 1..
* item[oatUnit].item[assessment].code[BOMAssessmentCode].system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMAssessmentCodeCS" (exactly)
* item[oatUnit].item[assessment].code[BOMAssessmentCode].code 1.. MS
* item[oatUnit].item[assessment].code[BOMAssessmentCode].display 1.. MS
* item[oatUnit].item[assessment].code[LocalAssessmentCode] ^short = "観察項目コード・名称"
* item[oatUnit].item[assessment].code[LocalAssessmentCode] ^definition = "観察項目コード・名称"
* item[oatUnit].item[assessment].code[LocalAssessmentCode].system 1..
* item[oatUnit].item[assessment].code[LocalAssessmentCode].system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathLocalAssessmentCodeCS" (exactly)
* item[oatUnit].item[assessment].code[LocalAssessmentCode].code 1.. MS
* item[oatUnit].item[assessment].code[LocalAssessmentCode].display 1.. MS
* item[oatUnit].item[assessment].text 1.. MS
* item[oatUnit].item[assessment].text ^short = "質問の内容（観察項目コード表記）"
* item[oatUnit].item[assessment].text ^definition = "質問の内容（観察項目コード表記）"
* item[oatUnit].item[assessment].type = #string (exactly)
* item[oatUnit].item[assessment].type ^short = "string"
* item[oatUnit].item[assessment].type ^definition = "string を指定する。"
* item[oatUnit].item[assessment].answerOption ^short = "選択肢"
* item[oatUnit].item[assessment].answerOption ^definition = "選択肢"
* item[oatUnit].item[assessmentChoice] ^short = "フォーム選択肢（観察項目単位）"
* item[oatUnit].item[assessmentChoice] ^definition = "フォーム選択肢（観察項目単位）"
* item[oatUnit].item[assessmentChoice].extension ^slicing.ordered = false
* item[oatUnit].item[assessmentChoice].extension ^slicing.rules = #open
* item[oatUnit].item[assessmentChoice].linkId MS
* item[oatUnit].item[assessmentChoice].linkId ^short = "OATユニット識別子[-リピート番号]、観察項目識別子を半角ピリオド\".\"で連結したものを設定する。観察項目識別子は観察項目レベルで一意の識別子を設定すること。"
* item[oatUnit].item[assessmentChoice].linkId ^definition = "OATユニット識別子[-リピート番号]、観察項目識別子を半角ピリオド\".\"で連結したものを設定する。観察項目識別子は観察項目レベルで一意の識別子を設定すること。"
* item[oatUnit].item[assessmentChoice].code ^slicing.discriminator.type = #value
* item[oatUnit].item[assessmentChoice].code ^slicing.discriminator.path = "system"
* item[oatUnit].item[assessmentChoice].code ^slicing.rules = #open
* item[oatUnit].item[assessmentChoice].code contains
    BOMAssessmentCategory 0..1 and
    BOMAssessmentCode 0..1 and
    LocalAssessmentCode 0..1
* item[oatUnit].item[assessmentChoice].code[BOMAssessmentCategory] from $EPathAssessmentCategoryVS (preferred)
* item[oatUnit].item[assessmentChoice].code[BOMAssessmentCategory].system 1..
* item[oatUnit].item[assessmentChoice].code[BOMAssessmentCategory].system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMAssessmentCategoryCS" (exactly)
* item[oatUnit].item[assessmentChoice].code[BOMAssessmentCategory].code 1.. MS
* item[oatUnit].item[assessmentChoice].code[BOMAssessmentCategory].display 1.. MS
* item[oatUnit].item[assessmentChoice].code[BOMAssessmentCode] from $EPathAssessmentCodeVS (preferred)
* item[oatUnit].item[assessmentChoice].code[BOMAssessmentCode].system 1..
* item[oatUnit].item[assessmentChoice].code[BOMAssessmentCode].system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMAssessmentCodeCS" (exactly)
* item[oatUnit].item[assessmentChoice].code[BOMAssessmentCode].code 1.. MS
* item[oatUnit].item[assessmentChoice].code[BOMAssessmentCode].display 1.. MS
* item[oatUnit].item[assessmentChoice].code[LocalAssessmentCode].system 1..
* item[oatUnit].item[assessmentChoice].code[LocalAssessmentCode].system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathLocalAssessmentCodeCS" (exactly)
* item[oatUnit].item[assessmentChoice].code[LocalAssessmentCode].code 1.. MS
* item[oatUnit].item[assessmentChoice].code[LocalAssessmentCode].display 1.. MS
* item[oatUnit].item[assessmentChoice].text 1.. MS
* item[oatUnit].item[assessmentChoice].text ^short = "質問の内容（観察項目コード表記）"
* item[oatUnit].item[assessmentChoice].text ^definition = "質問の内容（観察項目コード表記）"
* item[oatUnit].item[assessmentChoice].type = #choice (exactly)
* item[oatUnit].item[assessmentChoice].type ^short = "choice"
* item[oatUnit].item[assessmentChoice].type ^definition = "choice を指定する。"
* item[oatUnit].item[assessmentChoice].answerOption MS
* item[oatUnit].item[assessmentChoice].answerOption ^short = "選択肢"
* item[oatUnit].item[assessmentChoice].answerOption ^definition = "選択肢"
* item[oatUnit].item[assessmentChoice].answerOption.value[x] MS