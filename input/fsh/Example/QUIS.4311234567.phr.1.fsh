Alias: $EPathBOMOutcomeCategoryCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMOutcomeCategoryCS
Alias: $EPathLocalOutcomeCodeCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathLocalOutcomeCodeCS
Alias: $EPathLocalAssessmentCodeCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathLocalAssessmentCodeCS
Alias: $EPathYNIdentificationCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathYNIdentificationCS

Instance: QUIS.4311234567.phr.1
InstanceOf: Questionnaire
Usage: #example
Description: "患者アウトカム 入力フォーム"
* meta.lastUpdated = "2025-10-27T12:17:47.446+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathQuestionnaire"
* url = "http://e-path.jp/fhir/ePath/Questionnaire/QUIS.4311234567.phr.1"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/quis-id"
* identifier.value = "phr.1"
* identifier.assigner.identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no"
* identifier.assigner.identifier.value = "4311234567"
* identifier.assigner.display = "ePathテスト病院"
* title = "糖尿病外来パス：病日1"
* status = #active
* description = "糖尿病外来パス"
* item[0].linkId = "OAT0-00-00000132-00000132-MID"
* item[=].code[0] = $EPathBOMOutcomeCategoryCS#G "患者目標"
* item[=].code[+] = $EPathLocalOutcomeCodeCS#OA0001 "食事管理ができている（炭水化物）"
* item[=].text = "食事管理ができている（炭水化物）"
* item[=].type = #group
* item[=].item[0].linkId = "OAT0-00-00000132-00000132-MID.9990000100"
* item[=].item[=].code = $EPathLocalAssessmentCodeCS#9990000100 "今日、ご飯のおかわりやラーメン・うどんを大盛りにしましたか"
* item[=].item[=].text = "今日、ご飯のおかわりやラーメン・うどんを大盛りにしましたか"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = $EPathYNIdentificationCS#Y "Yes"
* item[=].item[=].answerOption[+].valueCoding = $EPathYNIdentificationCS#N "No"
* item[=].item[+].linkId = "OAT0-00-00000132-00000132-MID.9990000200"
* item[=].item[=].code = $EPathLocalAssessmentCodeCS#9990000200 "今日、1食の食パンは1枚、ロールパンは2個以下にしましたか"
* item[=].item[=].text = "今日、1食の食パンは1枚、ロールパンは2個以下にしましたか"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = $EPathYNIdentificationCS#Y "Yes"
* item[=].item[=].answerOption[+].valueCoding = $EPathYNIdentificationCS#N "No"
* item[=].item[+].linkId = "OAT0-00-00000132-00000132-MID.9990000300"
* item[=].item[=].code = $EPathLocalAssessmentCodeCS#9990000300 "今日、腹八分目にしましたか"
* item[=].item[=].text = "今日、腹八分目にしましたか"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = $EPathYNIdentificationCS#Y "Yes"
* item[=].item[=].answerOption[+].valueCoding = $EPathYNIdentificationCS#N "No"
* item[=].item[+].linkId = "OAT0-00-00000132-00000132-MID.9990000400"
* item[=].item[=].code = $EPathLocalAssessmentCodeCS#9990000400 "今日、果物は食べすぎませんでしたか（1日リンゴ半分、バナナ中1個、柿1個、みかん2個、いちご12粒以下）"
* item[=].item[=].text = "今日、果物は食べすぎませんでしたか（1日リンゴ半分、バナナ中1個、柿1個、みかん2個、いちご12粒以下）"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = $EPathYNIdentificationCS#Y "Yes"
* item[=].item[=].answerOption[+].valueCoding = $EPathYNIdentificationCS#N "No"
* item[+].linkId = "OAT0-00-00000132-00000132-DAY"
* item[=].code[0] = $EPathBOMOutcomeCategoryCS#G "患者目標"
* item[=].code[+] = $EPathLocalOutcomeCodeCS#OA0001 "食事管理ができている（炭水化物）"
* item[=].text = "食事管理ができている（炭水化物）"
* item[=].type = #group
* item[=].item[0].linkId = "OAT0-00-00000132-00000132-DAY.9990000100"
* item[=].item[=].code = $EPathLocalAssessmentCodeCS#9990000100 "今日、ご飯のおかわりやラーメン・うどんを大盛りにしましたか"
* item[=].item[=].text = "今日、ご飯のおかわりやラーメン・うどんを大盛りにしましたか"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = $EPathYNIdentificationCS#Y "Yes"
* item[=].item[=].answerOption[+].valueCoding = $EPathYNIdentificationCS#N "No"
* item[=].item[+].linkId = "OAT0-00-00000132-00000132-DAY.9990000200"
* item[=].item[=].code = $EPathLocalAssessmentCodeCS#9990000200 "今日、1食の食パンは1枚、ロールパンは2個以下にしましたか"
* item[=].item[=].text = "今日、1食の食パンは1枚、ロールパンは2個以下にしましたか"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = $EPathYNIdentificationCS#Y "Yes"
* item[=].item[=].answerOption[+].valueCoding = $EPathYNIdentificationCS#N "No"
* item[=].item[+].linkId = "OAT0-00-00000132-00000132-DAY.9990000300"
* item[=].item[=].code = $EPathLocalAssessmentCodeCS#9990000300 "今日、腹八分目にしましたか"
* item[=].item[=].text = "今日、腹八分目にしましたか"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = $EPathYNIdentificationCS#Y "Yes"
* item[=].item[=].answerOption[+].valueCoding = $EPathYNIdentificationCS#N "No"
* item[=].item[+].linkId = "OAT0-00-00000132-00000132-DAY.9990000400"
* item[=].item[=].code = $EPathLocalAssessmentCodeCS#9990000400 "今日、果物は食べすぎませんでしたか（1日リンゴ半分、バナナ中1個、柿1個、みかん2個、いちご12粒以下）"
* item[=].item[=].text = "今日、果物は食べすぎませんでしたか（1日リンゴ半分、バナナ中1個、柿1個、みかん2個、いちご12粒以下）"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = $EPathYNIdentificationCS#Y "Yes"
* item[=].item[=].answerOption[+].valueCoding = $EPathYNIdentificationCS#N "No"