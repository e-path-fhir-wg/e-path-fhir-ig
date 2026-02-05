Alias: $EPathPractitioner = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner
Alias: $EPathPractitionerRole = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitionerRole
Alias: $EPathEvaluationItemVS = http://e-path.jp/fhir/ePath/ValueSet/EPathEvaluationItemVS
Alias: $EPathStateOfAchievementVS = http://e-path.jp/fhir/ePath/ValueSet/EPathStateOfAchievementVS

Profile: EPathObservationEvaluation
Parent: Observation
Id: EPathObservationEvaluation
Title: "EPath Observation Evaluation"
Description: "病日・イベント、アウトカム、観察項目に対する評価"
* ^url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathObservationEvaluation"
* meta 1..
* meta.profile 1..1 MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathObservationEvaluation|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathObservationEvaluation|x.y.z を設定する。"
* identifier 1..
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains evaluationId 0..* MS
* identifier[evaluationId] ^short = "リソース一意識別子（評価）"
* identifier[evaluationId] ^definition = "リソース一意識別子（評価）"
* identifier[evaluationId].system 1..
* identifier[evaluationId].system = "http://e-path.jp/fhir/ePath/IdSystem/observation-evaluation-id" (exactly)
* identifier[evaluationId].system ^short = "固定値 http://e-path.jp/fhir/ePath/IdSystem/observation-evaluation-id を設定する。"
* identifier[evaluationId].system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/observation-evaluation-id を設定する。"
* identifier[evaluationId].value 1.. MS
* identifier[evaluationId].value ^short = "評価を通して、一意の識別子を設定する。"
* identifier[evaluationId].value ^definition = "評価を通して、一意の識別子を設定する。"
* code MS
* code.coding 1..1 MS
* code.coding from $EPathEvaluationItemVS (required)
* code.coding.system 1..
* code.coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathEvaluationItemCS" (exactly)
* code.coding.code 1.. MS
* subject ^short = "パスを適用する患者リソース（Patient）への参照"
* subject ^definition = "パスを適用する患者リソース（Patient）への参照"
* effective[x] only dateTime
* effective[x] MS
* effective[x] ^short = "評価日時"
* effective[x] ^definition = "評価日時"
* performer only Reference($EPathPractitioner or $EPathPractitionerRole)
* performer MS
* performer ^short = "評価者、評価者職種"
* performer ^definition = "評価者、評価者職種"
* performer.type 1..
* performer.display 1.. MS
* value[x] MS
* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #open
* value[x] ^short = "総合評価などを設定する。"
* value[x] ^definition = "総合評価などを設定する。SOAPを設定する場合は、componentを指定する。"
* valueString only string
* valueString MS
* valueString ^sliceName = "valueString"
* valueString ^short = "総合評価などを設定する。"
* valueString ^definition = "総合評価などを設定する。"
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept from $EPathStateOfAchievementVS (example)
* valueCodeableConcept ^sliceName = "valueCodeableConcept"
* valueCodeableConcept ^short = "評価などを設定する。"
* valueCodeableConcept ^definition = "評価などを設定する。"
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code.coding.code"
* component ^slicing.rules = #open
* component contains
    subjective 0..1 and
    objective 0..1 and
    plan 0..1 and
    action 0..1
* component[subjective] ^short = "SOAP：S"
* component[subjective] ^definition = "SOAP：S"
* component[subjective].code MS
* component[subjective].code.coding 1..1 MS
* component[subjective].code.coding from $EPathEvaluationItemVS (required)
* component[subjective].code.coding.system 1..
* component[subjective].code.coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathEvaluationItemCS" (exactly)
* component[subjective].code.coding.code 1.. MS
* component[subjective].code.coding.code = #S (exactly)
* component[subjective].value[x] 1.. MS
* component[subjective].value[x] only string
* component[objective] ^short = "SOAP：O"
* component[objective] ^definition = "SOAP：O"
* component[objective].code MS
* component[objective].code.coding 1..1 MS
* component[objective].code.coding from $EPathEvaluationItemVS (required)
* component[objective].code.coding.system 1..
* component[objective].code.coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathEvaluationItemCS" (exactly)
* component[objective].code.coding.code 1..
* component[objective].code.coding.code = #O (exactly)
* component[objective].value[x] 1.. MS
* component[objective].value[x] only string
* component[plan] ^short = "SOAP：P"
* component[plan] ^definition = "SOAP：P"
* component[plan].code MS
* component[plan].code.coding 1..1 MS
* component[plan].code.coding from $EPathEvaluationItemVS (required)
* component[plan].code.coding.system 1..
* component[plan].code.coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathEvaluationItemCS" (exactly)
* component[plan].code.coding.code 1..
* component[plan].code.coding.code = #P (exactly)
* component[plan].value[x] only string
* component[plan].value[x] MS
* component[action] ^short = "SOAP：A"
* component[action] ^definition = "SOAP：A"
* component[action].code MS
* component[action].code.coding 1..1 MS
* component[action].code.coding from $EPathEvaluationItemVS (required)
* component[action].code.coding.system 1..
* component[action].code.coding.system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathEvaluationItemCS" (exactly)
* component[action].code.coding.code 1..
* component[action].code.coding.code = #A (exactly)
* component[action].value[x] only string
* component[action].value[x] MS
* derivedFrom only Reference(QuestionnaireResponse)
* derivedFrom ^short = "評価の派生元"
* derivedFrom ^definition = "例えば、患者入力フォームのデータを目標の結果として反映した場合に元となるQuestionnaireResponseの識別子を設定する。"
* derivedFrom ^mustSupport = false
* derivedFrom.identifier MS
* derivedFrom.identifier ^short = "入力フォーム回答の識別子"
* derivedFrom.identifier ^definition = "入力フォーム回答の識別子"
* derivedFrom.identifier.system 1..
* derivedFrom.identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/quis-response-id" (exactly)
* derivedFrom.identifier.system ^short = "固定値 http://e-path.jp/fhir/ePath/IdSystem/quis-response-id を設定する。"
* derivedFrom.identifier.system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/quis-response-id を設定する。"
* derivedFrom.identifier.value 1.. MS