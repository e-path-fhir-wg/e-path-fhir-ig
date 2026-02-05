Alias: $EPathOrganization = http://e-path.jp/fhir/ePath/StructureDefinition/EPathOrganization
Alias: $EPathPatient = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPatient
Alias: $EPathEncounterAdmission = http://e-path.jp/fhir/ePath/StructureDefinition/EPathEncounterAdmission
Alias: $EPathConditionCarePlanAddresses = http://e-path.jp/fhir/ePath/StructureDefinition/EPathConditionCarePlanAddresses
Alias: $EPathProcedureMajorEvent = http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureMajorEvent
Alias: $EPathPlanDefinitionEP01 = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionEP01
Alias: $EPathPlanDefinitionEP02 = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionEP02
Alias: $EPathCarePlanEPathApply = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanEPathApply
Alias: $EPathGoalEPathApply = http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalEPathApply
Alias: $EPathCarePlanEvent = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanEvent
Alias: $EPathGoalEvent = http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalEvent
Alias: $EPathCarePlanOATUnit = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanOATUnit
Alias: $EPathGoalOutcome = http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalOutcome
Alias: $EPathCarePlanAssessment = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAssessment
Alias: $EPathGoalAssessmentExecution = http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalAssessmentExecution
Alias: $EPathProcedureTask = http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureTask
Alias: $EPathQuestionnaire = http://e-path.jp/fhir/ePath/StructureDefinition/EPathQuestionnaire
Alias: $EPathQuestionnaireResponse = http://e-path.jp/fhir/ePath/StructureDefinition/EPathQuestionnaireResponse
Alias: $EPathUsesTypeVS = http://e-path.jp/fhir/ePath/ValueSet/EPathUsesTypeVS

Profile: EPathBundleMessageEP12
Parent: Bundle
Id: EPathBundleMessageEP12
Title: "EPath Bundle Message EP12"
Description: "ePathデータ構造 適用後パスデータ"
* ^version = "1.0.0"
* meta 1..
* meta.lastUpdated 1.. MS
* meta.profile 1.. MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathBundleMessageEP12|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathBundleMessageEP12|x.y.z を設定する。"
* meta.profile ^comment = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathBundleMessageEP12 を設定する。"
* meta.tag ^slicing.discriminator.type = #value
* meta.tag ^slicing.discriminator.path = "system"
* meta.tag ^slicing.rules = #open
* meta.tag contains UsesType 0..1 MS
* meta.tag[UsesType] from $EPathUsesTypeVS (required)
* meta.tag[UsesType] ^short = "用途種別"
* meta.tag[UsesType] ^definition = "パスの代替用途の種別\r\nePathメッセージをワークシートとして用いる等、通常のクリニカルパスと区別する必要がある場合に代替体用途である識別としての種別を設定する。設定値は利用施設・運用主体等で定めたルールに則る。通常のクリニカルパスの場合はePathを設定する。"
* meta.tag[UsesType].system 1..
* meta.tag[UsesType].system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathUsesTypeCS" (exactly)
* meta.tag[UsesType].code 1.. MS
* identifier 1.. MS
* identifier.system 1..
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/ep12-bundle-id" (exactly)
* identifier.system ^short = "固定値 http://e-path.jp/fhir/ePath/IdSystem/ep12-bundle-id を設定する。"
* identifier.system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/ep12-bundle-id を設定する。"
* identifier.value 1.. MS
* identifier.value ^short = "医療機関コード、適用時パス識別子を半角ピリオド\".\"で連結したものを設定する。"
* identifier.value ^definition = "医療機関コード、適用時パス識別子を半角ピリオド\".\"で連結したものを設定する。"
* identifier.assigner 1.. MS
* identifier.assigner.identifier 1.. MS
* identifier.assigner.identifier.system 1..
* identifier.assigner.identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no" (exactly)
* identifier.assigner.identifier.value 1.. MS
* type = #collection (exactly)
* type MS
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open
* entry ^mustSupport = false
* entry contains
    organization 1..1 MS and
    patient 1..1 MS and
    encounterAdmission 0..* MS and
    condition 0..* and
    procedureMajorEvent 0..* and
    standardPathDefinition 0..1 and
    facilityPathDefinition 0..1 and
    carePlanApply 1..1 MS and
    goalApply 0..* and
    carePlanEvent 0..* and
    goalEvent 0..* and
    carePlanOATUnit 0..* and
    goalOutcome 0..* and
    carePlanAssessment 0..* and
    goalAssessment 0..* and
    procedureTask 0..* and
    questionnaire 0..* and
    questionnaireResponse 0..*
* entry[organization] ^short = "医療機関情報"
* entry[organization] ^definition = "医療機関の情報"
* entry[organization].fullUrl 1.. MS
* entry[organization].resource 1.. MS
* entry[organization].resource only $EPathOrganization
* entry[patient] ^short = "患者基本情報"
* entry[patient] ^definition = "患者の基本情報"
* entry[patient].fullUrl 1.. MS
* entry[patient].resource 1.. MS
* entry[patient].resource only $EPathPatient
* entry[encounterAdmission] ^short = "入院情報"
* entry[encounterAdmission] ^definition = "パスを適用する際の入院情報。入院患者を前提としたクリニカルパスの場合は設定を必須とする。"
* entry[encounterAdmission].fullUrl 1.. MS
* entry[encounterAdmission].resource 1.. MS
* entry[encounterAdmission].resource only $EPathEncounterAdmission
* entry[condition] ^short = "病名"
* entry[condition] ^definition = "病名を識別するコード・名称"
* entry[condition] ^mustSupport = false
* entry[condition].fullUrl 1..
* entry[condition].resource 1.. MS
* entry[condition].resource only $EPathConditionCarePlanAddresses
* entry[procedureMajorEvent] ^short = "主要イベント情報"
* entry[procedureMajorEvent] ^definition = "手術・治療/処置/主要検査などの主要となるイベントの情報\r\n例)手術、内視鏡治療、放射線治療、内視鏡検査、心臓カテーテル検査、等"
* entry[procedureMajorEvent].fullUrl 1.. MS
* entry[procedureMajorEvent].resource 1.. MS
* entry[procedureMajorEvent].resource only $EPathProcedureMajorEvent
* entry[standardPathDefinition] ^short = "ひな型パス定義"
* entry[standardPathDefinition] ^definition = "ひな型パス定義、関連する病日イベント定義はエントリしなくてよい。また、PlanDefinition.action は設定しなくてよい。"
* entry[standardPathDefinition].fullUrl 1.. MS
* entry[standardPathDefinition].resource 1.. MS
* entry[standardPathDefinition].resource only $EPathPlanDefinitionEP01
* entry[facilityPathDefinition] ^short = "施設パス定義"
* entry[facilityPathDefinition] ^definition = "施設パス定義"
* entry[facilityPathDefinition].fullUrl 1.. MS
* entry[facilityPathDefinition].resource 1.. MS
* entry[facilityPathDefinition].resource only $EPathPlanDefinitionEP02
* entry[carePlanApply] ^short = "パス適用情報"
* entry[carePlanApply] ^definition = "パス適用情報"
* entry[carePlanApply].fullUrl 1.. MS
* entry[carePlanApply].resource 1.. MS
* entry[carePlanApply].resource only $EPathCarePlanEPathApply
* entry[goalApply] ^short = "パス適用 目標・評価情報"
* entry[goalApply] ^definition = "パス適用 目標・評価情報"
* entry[goalApply].fullUrl 1.. MS
* entry[goalApply].resource 1.. MS
* entry[goalApply].resource only $EPathGoalEPathApply
* entry[carePlanEvent] ^short = "病日・イベント情報"
* entry[carePlanEvent] ^definition = "病日・イベント情報"
* entry[carePlanEvent].fullUrl 1.. MS
* entry[carePlanEvent].resource 1.. MS
* entry[carePlanEvent].resource only $EPathCarePlanEvent
* entry[goalEvent] ^short = "病日・イベント 目標・評価情報"
* entry[goalEvent] ^definition = "病日・イベント 目標・評価情報"
* entry[goalEvent].fullUrl 1.. MS
* entry[goalEvent].resource 1.. MS
* entry[goalEvent].resource only $EPathGoalEvent
* entry[carePlanOATUnit] ^short = "OATユニット・アウトカム"
* entry[carePlanOATUnit] ^definition = "OATユニット・アウトカム"
* entry[carePlanOATUnit].fullUrl 1.. MS
* entry[carePlanOATUnit].resource 1.. MS
* entry[carePlanOATUnit].resource only $EPathCarePlanOATUnit
* entry[goalOutcome] ^short = "アウトカム 目標・評価情報"
* entry[goalOutcome] ^definition = "アウトカム 目標・評価情報"
* entry[goalOutcome].fullUrl 1.. MS
* entry[goalOutcome].resource 1.. MS
* entry[goalOutcome].resource only $EPathGoalOutcome
* entry[carePlanAssessment] ^short = "観察項目"
* entry[carePlanAssessment] ^definition = "観察項目"
* entry[carePlanAssessment].fullUrl 1.. MS
* entry[carePlanAssessment].resource 1.. MS
* entry[carePlanAssessment].resource only $EPathCarePlanAssessment
* entry[goalAssessment] ^short = "観察項目実施 目標・評価情報"
* entry[goalAssessment] ^definition = "観察項目実施 目標・評価情報"
* entry[goalAssessment].fullUrl 1.. MS
* entry[goalAssessment].resource 1.. MS
* entry[goalAssessment].resource only $EPathGoalAssessmentExecution
* entry[procedureTask] ^short = "タスク"
* entry[procedureTask] ^definition = "タスク"
* entry[procedureTask].fullUrl 1.. MS
* entry[procedureTask].resource 1.. MS
* entry[procedureTask].resource only $EPathProcedureTask
* entry[questionnaire] ^short = "入力フォーム"
* entry[questionnaire] ^definition = "入力フォーム"
* entry[questionnaire].fullUrl 1.. MS
* entry[questionnaire].resource 1.. MS
* entry[questionnaire].resource only $EPathQuestionnaire
* entry[questionnaireResponse] ^short = "入力フォーム回答"
* entry[questionnaireResponse] ^definition = "入力フォーム回答"
* entry[questionnaireResponse].fullUrl 1.. MS
* entry[questionnaireResponse].resource 1.. MS
* entry[questionnaireResponse].resource only $EPathQuestionnaireResponse