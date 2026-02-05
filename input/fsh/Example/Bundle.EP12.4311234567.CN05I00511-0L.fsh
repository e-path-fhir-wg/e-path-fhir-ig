Alias: $EPathUsesTypeCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathUsesTypeCS
Alias: $organization-type = http://terminology.hl7.org/CodeSystem/organization-type
Alias: $ClinicalDepartment = http://jami.jp/SS-MIX2/CodeSystem/ClinicalDepartment
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $condition-category = http://terminology.hl7.org/CodeSystem/condition-category
Alias: $master-disease-keyNumber = http://medis.or.jp/CodeSystem/master-disease-keyNumber
Alias: $plan-definition-type = http://terminology.hl7.org/CodeSystem/plan-definition-type
Alias: $EPathPathClosingTypeCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathPathClosingTypeCS
Alias: $EPathEvaluationItemCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathEvaluationItemCS
Alias: $EPathBOMOutcomeCategoryCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMOutcomeCategoryCS
Alias: $EPathBOMOutcomeSubCategoryCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMOutcomeSubCategoryCS
Alias: $EPathLocalOutcomeCodeCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathLocalOutcomeCodeCS
Alias: $EPathStateOfAchievementCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathStateOfAchievementCS
Alias: $EPathBOMAssessmentCategoryCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMAssessmentCategoryCS
Alias: $EPathLocalAssessmentCodeCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathLocalAssessmentCodeCS
Alias: $EPathLocalTaskCodeCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathLocalTaskCodeCS
Alias: $EPathAssessmentCodeEmptyCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathAssessmentCodeEmptyCS
Alias: $EPathTaskCategoryLv1CS = http://e-path.jp/fhir/ePath/CodeSystem/EPathTaskCategoryLv1CS

Instance: Bundle.EP12.4311234567.CN05I00511-0L
InstanceOf: Bundle
Usage: #example
Description: "適用後パスデータバンドル 経皮的冠動脈形成術（PCI）"
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathBundleMessageEP12"
* meta.tag = $EPathUsesTypeCS#ePath
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/ep12-bundle-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00"
* identifier.assigner.identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no"
* identifier.assigner.identifier.value = "4311234567"
* type = #collection
* entry[0].fullUrl = "urn:uuid:14503044-ed7c-4a4a-824e-d20a8c3fe757"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-1
* entry[+].fullUrl = "urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-2
* entry[+].fullUrl = "urn:uuid:57acdfbe-a9ae-4ee1-83b1-3d51c7295418"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-3
* entry[+].fullUrl = "urn:uuid:5886fff4-2004-475d-a359-d9d278f770b9"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-4
* entry[+].fullUrl = "urn:uuid:f19e35f0-37bb-4d9d-a144-74117a55b564"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-5
* entry[+].fullUrl = "urn:uuid:139dfe7d-7abf-4abb-9f59-9c70883e6c97"
* entry[=].resource = EP01.CN05I00511-0-SAMPLE
* entry[+].fullUrl = "urn:uuid:947f728e-1327-489a-84db-e4642938cb19"
* entry[=].resource = EP02.4311234567.CN05I00511-0L-SAMPLE
* entry[+].fullUrl = "urn:uuid:93c56eb8-46ca-4f0b-b79b-e3dbae722f32"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-6
* entry[+].fullUrl = "urn:uuid:e2c3e9a9-75c4-426a-a64c-c5f40e34f1bf"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-7
* entry[+].fullUrl = "urn:uuid:0c35ee81-60a7-418b-99fc-9b3882a2a513"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-8
* entry[+].fullUrl = "urn:uuid:ebc641d2-7304-4bfe-9f17-f6f01822800b"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-9
* entry[+].fullUrl = "urn:uuid:a6049012-62d7-4649-a3ef-33da1368245b"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-10
* entry[+].fullUrl = "urn:uuid:6cb09589-1e83-44f0-8cc0-56ddb231c58c"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-11
* entry[+].fullUrl = "urn:uuid:c06af669-9a4d-43d7-ae0f-e1565e20620c"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-12
* entry[+].fullUrl = "urn:uuid:8b8bbb32-b637-427c-9a39-11564142b10b"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-13
* entry[+].fullUrl = "urn:uuid:73fe0bd7-c1b2-4ed5-b356-ae5ede94aea7"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-14
* entry[+].fullUrl = "urn:uuid:5ab2b365-ef4c-4587-8c1a-d1841b156ce2"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-15
* entry[+].fullUrl = "urn:uuid:0efc55e3-fe94-4a63-8faa-824b5f2e7e83"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-16
* entry[+].fullUrl = "urn:uuid:03726468-3c5f-4c16-9b79-d40b4f5367b5"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-17
* entry[+].fullUrl = "urn:uuid:9b66f4e9-ec47-4e4b-a7ee-76569a9335a0"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-18
* entry[+].fullUrl = "urn:uuid:ed5f9f91-6df6-42fd-8312-351c2ce4d7ba"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-19
* entry[+].fullUrl = "urn:uuid:8746821f-2c84-4eb6-bc8b-f88a33e09520"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-20
* entry[+].fullUrl = "urn:uuid:f7361193-ee24-449b-89b2-fb48574bad10"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-21
* entry[+].fullUrl = "urn:uuid:60c42468-67d4-48ec-9f0c-d5a94e4c52d6"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-22
* entry[+].fullUrl = "urn:uuid:0b9e98ef-323a-491d-bdbc-13e3fd150ccf"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-23
* entry[+].fullUrl = "urn:uuid:79d61f41-c64b-4989-9fcc-aec91087539a"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-24
* entry[+].fullUrl = "urn:uuid:001fb191-ea84-457d-acd8-d2975d676eac"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-25
* entry[+].fullUrl = "urn:uuid:fe9d34e5-b0d3-4412-99c0-b9d5359640ed"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-26
* entry[+].fullUrl = "urn:uuid:2526571d-eaee-444c-bb8e-39ef7b340abe"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-27
* entry[+].fullUrl = "urn:uuid:fa370607-dcae-4000-98fd-0bee66e09fdb"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-28
* entry[+].fullUrl = "urn:uuid:075a2986-f3e2-40db-b331-381d17687153"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-29
* entry[+].fullUrl = "urn:uuid:2a60947a-f765-4952-83b6-624854dd2307"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-30
* entry[+].fullUrl = "urn:uuid:18e98f6f-a064-4871-a8db-85fe786195e0"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-31
* entry[+].fullUrl = "urn:uuid:b19d3584-584c-4ae0-b6be-a97bc59d2a42"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-32
* entry[+].fullUrl = "urn:uuid:4c2485a8-d4bf-4d45-bdda-0862f8e55737"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-33
* entry[+].fullUrl = "urn:uuid:3fc2252b-9e0e-4468-8205-d6df3cd8555c"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-34
* entry[+].fullUrl = "urn:uuid:00f7758b-c92d-481e-a66d-5a39b131186d"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-35
* entry[+].fullUrl = "urn:uuid:52241573-7829-4764-9388-b249bb8f44f7"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-36
* entry[+].fullUrl = "urn:uuid:3f53298a-6f50-4e22-b39b-af0e8b822bcc"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-37
* entry[+].fullUrl = "urn:uuid:57ac81ae-3153-4160-aca6-b9871cd7d31d"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-38
* entry[+].fullUrl = "urn:uuid:2dde0bdf-f015-4c85-a94b-539fd475105e"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-39
* entry[+].fullUrl = "urn:uuid:99c806ef-e0c5-4d6f-aa76-b0091424db7f"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-40
* entry[+].fullUrl = "urn:uuid:9c4eac3a-0eb7-4c00-aa93-edb320020eae"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-41
* entry[+].fullUrl = "urn:uuid:e8e544c4-260a-4425-b3c6-fc5b35176fbc"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-42
* entry[+].fullUrl = "urn:uuid:46a7a932-36f7-437e-93dd-86f2a090618c"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-43
* entry[+].fullUrl = "urn:uuid:ba90b251-b092-4202-9a27-8072744c1a41"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-44
* entry[+].fullUrl = "urn:uuid:213b9609-144a-4793-affd-0ca13179db33"
* entry[=].resource = Inline-Instance-for-Bundle.EP12.CN05I00511-0-45

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-1
InstanceOf: Organization
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathOrganization"
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no"
* identifier.value = "4311234567"
* type = $organization-type#prov
* name = "ePathテスト病院"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-2
InstanceOf: Patient
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPatient"
* identifier.system = "urn:oid:1.2.392.100495.20.3.51.1.4311234567"
* identifier.value = "0001014360"
* name[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #IDE
* name[=].family = "駿河"
* name[=].given = "葵"
* name[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-representation"
* name[=].extension.valueCode = #SYL
* name[=].family = "スルガ"
* name[=].given = "アオイ"
* gender = #male
* birthDate = "1938-06-26"
* managingOrganization = Reference(urn:uuid:14503044-ed7c-4a4a-824e-d20a8c3fe757)

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-3
InstanceOf: Encounter
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathEncounterAdmission"
* extension[0].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathEncounterClinicalDepartment"
* extension[=].valueCodeableConcept.text = "循環器内科"
* extension[+].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathEncounterClinicalDepartment"
* extension[=].valueCodeableConcept = $ClinicalDepartment#01 "内科"
* extension[=].valueCodeableConcept.text = "内科"
* extension[+].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathEncounterPatientDeathIndicator"
* extension[=].valueCode = #N
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/resourceInstance-identifier"
* identifier.value = "Admission.4311234567.d45b4072-9302-4012-85c5-962b17cb2a00"
* status = #finished
* class = $v3-ActCode#IMP
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* period.start = "2018-06-05T00:00:00+09:00"
* period.end = "2018-06-08T00:00:00+09:00"
* reasonReference = Reference(urn:uuid:5886fff4-2004-475d-a359-d9d278f770b9) "狭心症"
* serviceProvider = Reference(urn:uuid:14503044-ed7c-4a4a-824e-d20a8c3fe757)

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-4
InstanceOf: Condition
Usage: #inline
Description: "病名"
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathConditionCarePlanAddresses"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/resourceInstance-identifier"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.20058911"
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* category = $condition-category#encounter-diagnosis
* code = $master-disease-keyNumber#20058911 "狭心症"
* code.text = "狭心症"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-5
InstanceOf: Procedure
Usage: #inline
Description: "主要イベント情報"
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureMajorEvent"
* extension[0].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureAdmissionMajorEventElapsedDays"
* extension[=].valueInteger = 4
* extension[+].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureAdmissionMajorEventDate"
* extension[=].valueDate = "2018-06-07"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/resourceInstance-identifier"
* identifier.value = "MajorEvent.4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4.ope"
* status = #completed
* category.text = "手術"
* code.text = "主要イベント：手術"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* encounter = Reference(urn:uuid:57acdfbe-a9ae-4ee1-83b1-3d51c7295418)
* performedPeriod.start = "2018-06-07T10:30:00+09:00"
* performedPeriod.end = "2018-06-07T12:30:00+09:00"
* usedCode.text = "麻酔"

Instance: EP01.CN05I00511-0-SAMPLE
InstanceOf: PlanDefinition
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionEP01"
* extension[0].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionAdaptiveCriteriaText"
* extension[=].valueString = "（適用基準）"
* extension[+].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionScheduledDays"
* extension[=].valueInteger = 3
* url = "http://e-path.jp/fhir/ePath/PlanDifinition/EP01.CN05I00511-0-SAMPLE"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/standard-path-id"
* identifier.value = "CN05I00511-0-SAMPLE"
* title = "PCI（2泊3日）NP"
* type = $plan-definition-type#clinical-protocol "Clinical Protocol"
* status = #active
* goal.description.text = "PCI（2泊3日）NP"
* goal.addresses = $master-disease-keyNumber#20058911 "狭心症"

Instance: EP02.4311234567.CN05I00511-0L-SAMPLE
InstanceOf: PlanDefinition
Description: "施設パスバンドル 経皮的冠動脈形成術（PCI）"
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionEP02"
* extension[0].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionProtocolBase"
* extension[=].valueCanonical = "http://e-path.jp/fhir/ePath/PlanDifinition/EP01.CN05I00511-0"
* extension[+].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionAdaptiveCriteriaText"
* extension[=].valueString = "（適用基準）"
* extension[+].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionScheduledDays"
* extension[=].valueInteger = 3
* extension[+].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionClinicalDepartment"
* extension[=].valueCodeableConcept.text = "循環器内科"
* extension[+].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionClinicalDepartment"
* extension[=].valueCodeableConcept = $ClinicalDepartment#01 "内科"
* extension[=].valueCodeableConcept.text = "内科"
* url = "http://e-path.jp/fhir/ePath/PlanDifinition/EP02.4311234567.CN05I00511-0L-SAMPLE"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/facility-path-id"
* identifier.value = "CN05I00511-0L-SAMPLE"
* identifier.assigner.identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no"
* identifier.assigner.identifier.value = "4311234567"
* identifier.assigner.display = "ePathテスト病院"
* version = "1.0.1"
* title = "PCI（2泊3日）NP Local"
* type = $plan-definition-type#clinical-protocol "Clinical Protocol"
* status = #active
* goal.description.text = "PCI（2泊3日）NP Local"
* goal.addresses = $master-disease-keyNumber#20058911 "狭心症"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-6
InstanceOf: CarePlan
Usage: #inline
Description: "パス適用情報"
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanEPathApply"
* extension[0].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAdaptiveCriteriaConfirmation"
* extension[=].valueCode = #1
* extension[+].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAdaptiveCriteriaText"
* extension[=].valueString = "（適用基準）"
* extension[+].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanScheduledDays"
* extension[=].valueInteger = 3
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00"
* instantiatesCanonical[0] = "http://e-path.jp/fhir/ePath/PlanDefinition/EP01.CN05I00511-0-SAMPLE"
* instantiatesCanonical[+] = "http://e-path.jp/fhir/ePath/PlanDefinition/EP02.4311234567.CN05I00511-0L-SAMPLE"
* status = #completed
* intent = #plan
* title = "PCI（2泊3日）NP Local"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* encounter = Reference(urn:uuid:57acdfbe-a9ae-4ee1-83b1-3d51c7295418)
* period.start = "2018-06-05T00:00:00+09:00"
* period.end = "2018-06-07T00:00:00+09:00"
* addresses = Reference(urn:uuid:5886fff4-2004-475d-a359-d9d278f770b9) "狭心症"
* goal = Reference(urn:uuid:e2c3e9a9-75c4-426a-a64c-c5f40e34f1bf)
* activity.outcomeReference = Reference(urn:uuid:f19e35f0-37bb-4d9d-a144-74117a55b564) "主要イベント：手術"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-7
InstanceOf: Goal
Usage: #inline
Description: "パス適用情報 目標・評価"
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalEPathApply"
* extension.url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalStatusReason"
* extension.valueCodeableConcept = $EPathPathClosingTypeCS#1 "終了"
* extension.valueCodeableConcept.text = "パスの中止理由です。"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/apply-goal-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.Goal"
* lifecycleStatus = #completed
* description.text = "PCI（2泊3日）NP Local"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* statusReason = "パスの中止理由です。"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-8
InstanceOf: CarePlan
Usage: #inline
Description: "病日・イベント情報"
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanEvent"
* extension[0].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanEventElapsedDays"
* extension[=].valueInteger = 1
* extension[+].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanPathStep"
* extension[=].valueInteger = 1
* extension[+].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanPathStepName"
* extension[=].valueString = "１回目パスステップ"
* extension[+].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanPathStepInpatientOutpatientType"
* extension[=].valueCode = #I
* extension[+].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanPathStepStartDate"
* extension[=].valueDate = "2018-06-05"
* extension[+].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAllowableElapsedDaysConditionType"
* extension[=].valueCode = #3
* extension[+].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAllowableElapsedDaysConditionDays"
* extension[=].valueInteger = 1
* extension[+].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAllowableElapsedDaysConditionDate"
* extension[=].valueDate = "2018-06-05"
* extension[+].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAllowableElapsedDaysConditionRangeLow"
* extension[=].valueInteger = 2
* extension[+].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAllowableElapsedDaysConditionRangeHigh"
* extension[=].valueInteger = 5
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/event-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1"
* partOf = Reference(urn:uuid:93c56eb8-46ca-4f0b-b79b-e3dbae722f32) "PCI（2泊3日）NP Local"
* partOf.identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id"
* partOf.identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00"
* status = #completed
* intent = #plan
* category.text = "入院日"
* title = "入院日"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* encounter = Reference(urn:uuid:57acdfbe-a9ae-4ee1-83b1-3d51c7295418)
* goal = Reference(urn:uuid:ebc641d2-7304-4bfe-9f17-f6f01822800b) "入院日"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-9
InstanceOf: Goal
Usage: #inline
Description: "病日・イベント情報 目標・評価"
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalEvent"
* contained[0].resourceType = "Practitioner"
* contained[=].id = "performer"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner"
* contained[=].name.text = "記録者"
* contained[+].resourceType = "PractitionerRole"
* contained[=].id = "performer-role"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitionerRole"
* contained[=].code.text = "医師"
* contained[+].resourceType = "Observation"
* contained[=].id = "evaluation"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathObservationEvaluation"
* contained[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/observation-evaluation-id"
* contained[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.Evaluation"
* contained[=].status = #final
* contained[=].code = $EPathEvaluationItemCS#comp-assessment "総合評価"
* contained[=].subject.reference = "urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7"
* contained[=].effectiveDateTime = "2025-01-01T00:00:00+09:00"
* contained[=].performer[0].reference = "#performer"
* contained[=].performer[=].type = "Practitioner"
* contained[=].performer[=].display = "記録者"
* contained[=].performer[+].reference = "#performer-role"
* contained[=].performer[=].type = "PractitionerRole"
* contained[=].performer[=].display = "医師"
* contained[=].valueString = "総合評価"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/event-goal-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.Goal"
* lifecycleStatus = #completed
* description.text = "なし"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* statusDate = "2025-01-01"
* statusReason = "総合評価"
* outcomeReference[0].reference = "#evaluation"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-10
InstanceOf: CarePlan
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanOATUnit"
* extension[0].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanStatusTypeWhenOccured"
* extension[=].valueCode = #12
* extension[+].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanCriticalIndicator"
* extension[=].valueCode = #Y
* extension[+].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanUnplannedKind"
* extension[=].valueCode = #N
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/oat-unit-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.e89a8e7c-2f30-4a8e-88d7-41cdf3e7617a-1234"
* partOf[0] = Reference(urn:uuid:93c56eb8-46ca-4f0b-b79b-e3dbae722f32) "PCI（2泊3日）NP Local"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00"
* partOf[+] = Reference(urn:uuid:0c35ee81-60a7-418b-99fc-9b3882a2a513) "入院日"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/event-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1"
* status = #completed
* intent = #plan
* category[0] = $EPathBOMOutcomeCategoryCS#H "患者状態"
* category[+] = $EPathBOMOutcomeSubCategoryCS#H002 "その他の全身状態"
* category[+] = $EPathLocalOutcomeCodeCS#O00470 "身体的準備ができている"
* title = "身体的準備ができている"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* goal = Reference(urn:uuid:6cb09589-1e83-44f0-8cc0-56ddb231c58c)

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-11
InstanceOf: Goal
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalOutcome"
* contained[0].resourceType = "Practitioner"
* contained[=].id = "performer"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner"
* contained[=].name.text = "記録者"
* contained[+].resourceType = "PractitionerRole"
* contained[=].id = "performer-role"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitionerRole"
* contained[=].code.text = "医師"
* contained[+].resourceType = "Observation"
* contained[=].id = "evaluation"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathObservationEvaluation"
* contained[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/observation-evaluation-id"
* contained[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.e89a8e7c-2f30-4a8e-88d7-41cdf3e7617a-1234.Evaluation"
* contained[=].status = #final
* contained[=].code = $EPathEvaluationItemCS#judgement "評価"
* contained[=].subject.reference = "urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7"
* contained[=].effectiveDateTime = "2025-01-01T00:00:00+09:00"
* contained[=].performer[0].reference = "#performer"
* contained[=].performer[=].type = "Practitioner"
* contained[=].performer[=].display = "記録者"
* contained[=].performer[+].reference = "#performer-role"
* contained[=].performer[=].type = "PractitionerRole"
* contained[=].performer[=].display = "医師"
* contained[=].valueCodeableConcept = $EPathStateOfAchievementCS#1 "達成"
* contained[=].component[0].code = $EPathEvaluationItemCS#O "Objective"
* contained[=].component[=].valueString = "ECGにST変化あり【観察項目実績値】収縮期血圧：135mmHg"
* contained[=].component[+].code = $EPathEvaluationItemCS#P "Plan"
* contained[=].component[=].valueString = "ニトロール開始"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/outcome-goal-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.e89a8e7c-2f30-4a8e-88d7-41cdf3e7617a-1234.Goal"
* lifecycleStatus = #completed
* achievementStatus = $EPathStateOfAchievementCS#1 "達成"
* description.text = "身体的準備ができている"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* target.measure = $EPathLocalOutcomeCodeCS#O00470 "身体的準備ができている"
* statusDate = "2025-01-01"
* outcomeReference[0].reference = "#evaluation"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-12
InstanceOf: CarePlan
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAssessment"
* extension[0].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanStatusTypeWhenOccured"
* extension[=].valueCode = #12
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/assessment-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.e89a8e7c-2f30-4a8e-88d7-41cdf3e7617a-1234.3400063200"
* partOf[0] = Reference(urn:uuid:93c56eb8-46ca-4f0b-b79b-e3dbae722f32) "PCI（2泊3日）NP Local"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00"
* partOf[+] = Reference(urn:uuid:0c35ee81-60a7-418b-99fc-9b3882a2a513) "入院日"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/event-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1"
* partOf[+] = Reference(urn:uuid:a6049012-62d7-4649-a3ef-33da1368245b) "身体的準備ができている"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/oat-unit-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.e89a8e7c-2f30-4a8e-88d7-41cdf3e7617a-1234"
* status = #completed
* intent = #plan
* category[0] = $EPathBOMAssessmentCategoryCS#34 "呼吸"
* category[+] = $EPathLocalAssessmentCodeCS#3400063200 "感冒症状がない"
* title = "感冒症状がない"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* goal = Reference(urn:uuid:8b8bbb32-b637-427c-9a39-11564142b10b)
* activity.outcomeReference = Reference(urn:uuid:73fe0bd7-c1b2-4ed5-b356-ae5ede94aea7) "感冒様症状"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-13
InstanceOf: Goal
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalAssessmentExecution"
* contained[0].resourceType = "Practitioner"
* contained[=].id = "performer"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner"
* contained[=].name.text = "記録者"
* contained[+].resourceType = "PractitionerRole"
* contained[=].id = "performer-role"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitionerRole"
* contained[=].code.text = "看護師"
* contained[+].resourceType = "Observation"
* contained[=].id = "evaluation"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathObservationEvaluation"
* contained[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/observation-evaluation-id"
* contained[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.e89a8e7c-2f30-4a8e-88d7-41cdf3e7617a-1234.3400063200.Evaluation"
* contained[=].status = #final
* contained[=].code = $EPathEvaluationItemCS#judgement "評価"
* contained[=].subject.reference = "urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7"
* contained[=].effectiveDateTime = "2025-01-01T17:30:00+09:00"
* contained[=].performer[0].reference = "#performer"
* contained[=].performer[=].type = "Practitioner"
* contained[=].performer[=].display = "記録者"
* contained[=].performer[+].reference = "#performer-role"
* contained[=].performer[=].type = "PractitionerRole"
* contained[=].performer[=].display = "看護師"
* contained[=].valueCodeableConcept = $EPathStateOfAchievementCS#1 "達成"
* contained[+].resourceType = "Observation"
* contained[=].id = "bf69112b6e32589258b58302fbb415eff41dc0408b23f23d1608ba1411693fa4"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathObservationExecution"
* contained[=].text.status = #generated
* contained[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">【観察結果】感冒症状がない：なし1 </div>"
* contained[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/observation-result-id"
* contained[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.e89a8e7c-2f30-4a8e-88d7-41cdf3e7617a-1234.3400063200.3400063200.1.20250101173000"
* contained[=].status = #final
* contained[=].category = $EPathBOMAssessmentCategoryCS#34 "呼吸"
* contained[=].code = $EPathLocalAssessmentCodeCS#3400063200 "感冒症状がない"
* contained[=].subject.reference = "urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7"
* contained[=].effectiveDateTime = "2025-01-01T17:30:00+09:00"
* contained[=].performer.type = "Practitioner"
* contained[=].performer.display = "実施者"
* contained[=].valueString = "なし1"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/assessment-goal-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.e89a8e7c-2f30-4a8e-88d7-41cdf3e7617a-1234.3400063200"
* lifecycleStatus = #completed
* achievementStatus = $EPathStateOfAchievementCS#1 "達成"
* category = $EPathBOMAssessmentCategoryCS#34 "呼吸"
* description.text = "感冒症状がない:なし"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* target.measure = $EPathLocalAssessmentCodeCS#3400063200 "感冒症状がない"
* target.detailString = "なし"
* statusDate = "2025-01-01"
* outcomeReference[0].reference = "#evaluation"
* outcomeReference[+].reference = "#bf69112b6e32589258b58302fbb415eff41dc0408b23f23d1608ba1411693fa4" 
* outcomeReference[+].display = "感冒症状がない"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-14
InstanceOf: Procedure
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureTask"
* contained.resourceType = "Practitioner"
* contained.id = "performer"
* contained.meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner"
* contained.name.text = "実施者"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/task-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.e89a8e7c-2f30-4a8e-88d7-41cdf3e7617a-1234.3400063200.31001478"
* status = #completed
* category = $EPathTaskCategoryLv1CS#NO "観察項目"
* category.text = "観察項目"
* code = $EPathLocalTaskCodeCS#31001478 "感冒様症状"
* code.text = "感冒様症状"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* performedDateTime = "2025-01-01T17:30:00+09:00"
* performer.actor.reference = "#performer"
* performer.actor.display = "実施者"
* performer.actor.type = "Practitioner"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-15
InstanceOf: CarePlan
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAssessment"
* extension[0].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanStatusTypeWhenOccured"
* extension[=].valueCode = #12
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/assessment-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.e89a8e7c-2f30-4a8e-88d7-41cdf3e7617a-1234.3700070000"
* partOf[0] = Reference(urn:uuid:93c56eb8-46ca-4f0b-b79b-e3dbae722f32) "PCI（2泊3日）NP Local"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00"
* partOf[+] = Reference(urn:uuid:0c35ee81-60a7-418b-99fc-9b3882a2a513) "入院日"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/event-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1"
* partOf[+] = Reference(urn:uuid:a6049012-62d7-4649-a3ef-33da1368245b) "身体的準備ができている"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/oat-unit-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.e89a8e7c-2f30-4a8e-88d7-41cdf3e7617a-1234"
* status = #completed
* intent = #plan
* category[0] = $EPathBOMAssessmentCategoryCS#37 "出血"
* category[+] = $EPathLocalAssessmentCodeCS#3700070000 "抗血小板剤・抗凝固剤が予定通り中止されている"
* title = "抗血小板剤・抗凝固剤が予定通り中止されている"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* activity.outcomeReference = Reference(urn:uuid:0efc55e3-fe94-4a63-8faa-824b5f2e7e83) "抗血小板剤・抗凝固剤の中止"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-16
InstanceOf: Procedure
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureTask"
* contained.resourceType = "Practitioner"
* contained.id = "performer"
* contained.meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner"
* contained.name.text = "実施者"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/task-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.e89a8e7c-2f30-4a8e-88d7-41cdf3e7617a-1234.3700070000.31200127"
* status = #completed
* category = $EPathTaskCategoryLv1CS#NO "観察項目"
* category.text = "観察項目"
* code = $EPathLocalTaskCodeCS#31200127 "抗血小板剤・抗凝固剤の中止"
* code.text = "抗血小板剤・抗凝固剤の中止"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* performedDateTime = "2025-01-01T00:00:00+09:00"
* performer.actor.reference = "#performer"
* performer.actor.display = "実施者"
* performer.actor.type = "Practitioner"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-17
InstanceOf: CarePlan
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanOATUnit"
* extension[0].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanStatusTypeWhenOccured"
* extension[=].valueCode = #12
* extension[+].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanCriticalIndicator"
* extension[=].valueCode = #0
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/oat-unit-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0"
* partOf[0] = Reference(urn:uuid:93c56eb8-46ca-4f0b-b79b-e3dbae722f32) "PCI（2泊3日）NP Local"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00"
* partOf[+] = Reference(urn:uuid:0c35ee81-60a7-418b-99fc-9b3882a2a513) "入院日"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/event-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1"
* status = #completed
* intent = #plan
* category[0] = $EPathBOMOutcomeCategoryCS#H "患者状態"
* category[+] = $EPathBOMOutcomeSubCategoryCS#H004 "バイタルサインズ"
* category[+] = $EPathLocalOutcomeCodeCS#O00670 "バイタルサインが安定している"
* title = "バイタルサインが安定している"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* goal = Reference(urn:uuid:9b66f4e9-ec47-4e4b-a7ee-76569a9335a0)

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-18
InstanceOf: Goal
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalOutcome"
* contained[0].resourceType = "Practitioner"
* contained[=].id = "performer"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner"
* contained[=].name.text = "記録者"
* contained[+].resourceType = "Observation"
* contained[=].id = "evaluation"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathObservationEvaluation"
* contained[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/observation-evaluation-id"
* contained[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0.Evaluation"
* contained[=].status = #final
* contained[=].code = $EPathEvaluationItemCS#judgement "評価"
* contained[=].subject.reference = "urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7"
* contained[=].effectiveDateTime = "2025-01-01T17:30:00+09:00"
* contained[=].performer.reference = "#performer"
* contained[=].performer.type = "Practitioner"
* contained[=].performer.display = "記録者"
* contained[=].valueCodeableConcept = $EPathStateOfAchievementCS#2 "未達成（バリアンス）"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/outcome-goal-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0.Goal"
* lifecycleStatus = #completed
* achievementStatus = $EPathStateOfAchievementCS#2 "未達成（バリアンス）"
* description.text = "バイタルサインが安定している"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* target.measure = $EPathLocalOutcomeCodeCS#O00670 "バイタルサインが安定している"
* statusDate = "2025-01-01"
* outcomeReference[0].reference = "#evaluation"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-19
InstanceOf: CarePlan
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAssessment"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/assessment-id"
* extension[0].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanStatusTypeWhenOccured"
* extension[=].valueCode = #12
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900028900"
* partOf[0] = Reference(urn:uuid:93c56eb8-46ca-4f0b-b79b-e3dbae722f32) "PCI（2泊3日）NP Local"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00"
* partOf[+] = Reference(urn:uuid:0c35ee81-60a7-418b-99fc-9b3882a2a513) "入院日"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/event-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1"
* partOf[+] = Reference(urn:uuid:03726468-3c5f-4c16-9b79-d40b4f5367b5) "バイタルサインが安定している"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/oat-unit-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0"
* status = #completed
* intent = #plan
* category[0] = $EPathBOMAssessmentCategoryCS#19 "バイタルサイン"
* category[+] = $EPathLocalAssessmentCodeCS#1900028900 "拡張期血圧"
* title = "拡張期血圧"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* goal = Reference(urn:uuid:8746821f-2c84-4eb6-bc8b-f88a33e09520)
* activity.outcomeReference = Reference(urn:uuid:f7361193-ee24-449b-89b2-fb48574bad10) "拡張期血圧"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-20
InstanceOf: Goal
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalAssessmentExecution"
* contained[0].resourceType = "Practitioner"
* contained[=].id = "performer"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner"
* contained[=].name.text = "記録者"
* contained[+].resourceType = "PractitionerRole"
* contained[=].id = "performer-role"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitionerRole"
* contained[=].code.text = "看護師"
* contained[+].resourceType = "Observation"
* contained[=].id = "evaluation"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathObservationEvaluation"
* contained[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/observation-evaluation-id"
* contained[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900028900.Evaluation"
* contained[=].status = #final
* contained[=].code = $EPathEvaluationItemCS#judgement "評価"
* contained[=].subject.reference = "urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7"
* contained[=].effectiveDateTime = "2025-01-01T17:30:00+09:00"
* contained[=].performer[0].reference = "#performer"
* contained[=].performer[=].type = "Practitioner"
* contained[=].performer[=].display = "記録者"
* contained[=].performer[+].reference = "#performer-role"
* contained[=].performer[=].type = "PractitionerRole"
* contained[=].performer[=].display = "10"
* contained[=].valueCodeableConcept = $EPathStateOfAchievementCS#1 "達成"
* contained[+].resourceType = "Observation"
* contained[=].id = "0919a0261e99fcb973e464b2463098aac21cccc8e414c4984bd01b2feda4473a"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathObservationExecution"
* contained[=].text.status = #generated
* contained[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">【観察結果】拡張期血圧：67 mmHg</div>"
* contained[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/observation-result-id"
* contained[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900028900.1900028900.1.20250101173000"
* contained[=].status = #final
* contained[=].category = $EPathBOMAssessmentCategoryCS#19 "バイタルサイン"
* contained[=].code = $EPathLocalAssessmentCodeCS#1900028900 "拡張期血圧"
* contained[=].subject.reference = "urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7"
* contained[=].effectiveDateTime = "2025-01-01T17:30:00+09:00"
* contained[=].performer.type = "Practitioner"
* contained[=].performer.display = "実施者"
* contained[=].valueQuantity.value = 67
* contained[=].valueQuantity.unit = "mmHg"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/assessment-goal-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900028900"
* lifecycleStatus = #completed
* achievementStatus = $EPathStateOfAchievementCS#1 "達成"
* category = $EPathBOMAssessmentCategoryCS#19 "バイタルサイン"
* description.text = "拡張期血圧:≦100"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* target.measure = $EPathLocalAssessmentCodeCS#1900028900 "拡張期血圧"
* target.detailString = "≦100"
* statusDate = "2025-01-01"
* outcomeReference[0].reference = "#evaluation"
* outcomeReference[+].reference = "#0919a0261e99fcb973e464b2463098aac21cccc8e414c4984bd01b2feda4473a" 
* outcomeReference[+].display = "拡張期血圧"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-21
InstanceOf: Procedure
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureTask"
* contained.resourceType = "Practitioner"
* contained.id = "performer"
* contained.meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner"
* contained.name.text = "実施者"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/task-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900028900.31001849"
* status = #completed
* category = $EPathTaskCategoryLv1CS#NO "観察項目"
* category.text = "観察項目"
* code = $EPathLocalTaskCodeCS#31001849 "拡張期血圧"
* code.text = "拡張期血圧"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* performedDateTime = "2025-01-01T17:30:00+09:00"
* performer.actor.reference = "#performer"
* performer.actor.display = "実施者"
* performer.actor.type = "Practitioner"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-22
InstanceOf: CarePlan
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAssessment"
* extension[0].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanStatusTypeWhenOccured"
* extension[=].valueCode = #12
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/assessment-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900030400"
* partOf[0] = Reference(urn:uuid:93c56eb8-46ca-4f0b-b79b-e3dbae722f32) "PCI（2泊3日）NP Local"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00"
* partOf[+] = Reference(urn:uuid:0c35ee81-60a7-418b-99fc-9b3882a2a513) "入院日"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/event-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1"
* partOf[+] = Reference(urn:uuid:03726468-3c5f-4c16-9b79-d40b4f5367b5) "バイタルサインが安定している"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/oat-unit-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0"
* status = #completed
* intent = #plan
* category[0] = $EPathBOMAssessmentCategoryCS#19 "バイタルサイン"
* category[+] = $EPathLocalAssessmentCodeCS#1900030400 "呼吸数"
* title = "呼吸数"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* activity.outcomeReference = Reference(urn:uuid:0b9e98ef-323a-491d-bdbc-13e3fd150ccf) "呼吸数"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-23
InstanceOf: Procedure
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureTask"
* contained.resourceType = "Practitioner"
* contained.id = "performer"
* contained.meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner"
* contained.name.text = "実施者"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/task-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900030400.31001369"
* status = #completed
* category = $EPathTaskCategoryLv1CS#NO "観察項目"
* category.text = "観察項目"
* code = $EPathLocalTaskCodeCS#31001369 "呼吸数"
* code.text = "呼吸数"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* performedDateTime = "2025-01-01T17:30:00+09:00"
* performer.actor.reference = "#performer"
* performer.actor.display = "実施者"
* performer.actor.type = "Practitioner"
Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-24
InstanceOf: CarePlan
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAssessment"
* extension[0].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanStatusTypeWhenOccured"
* extension[=].valueCode = #12
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/assessment-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900030700"
* partOf[0] = Reference(urn:uuid:93c56eb8-46ca-4f0b-b79b-e3dbae722f32) "PCI（2泊3日）NP Local"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00"
* partOf[+] = Reference(urn:uuid:0c35ee81-60a7-418b-99fc-9b3882a2a513) "入院日"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/event-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1"
* partOf[+] = Reference(urn:uuid:03726468-3c5f-4c16-9b79-d40b4f5367b5) "バイタルサインが安定している"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/oat-unit-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0"
* status = #completed
* intent = #plan
* category[0] = $EPathBOMAssessmentCategoryCS#19 "バイタルサイン"
* category[+] = $EPathLocalAssessmentCodeCS#1900030700 "収縮期血圧"
* title = "収縮期血圧"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* goal = Reference(urn:uuid:001fb191-ea84-457d-acd8-d2975d676eac)
* activity.outcomeReference = Reference(urn:uuid:fe9d34e5-b0d3-4412-99c0-b9d5359640ed) "収縮期血圧"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-25
InstanceOf: Goal
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalAssessmentExecution"
* contained[0].resourceType = "Practitioner"
* contained[=].id = "performer"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner"
* contained[=].name.text = "記録者"
* contained[+].resourceType = "PractitionerRole"
* contained[=].id = "performer-role"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitionerRole"
* contained[=].code.text = "看護師"
* contained[+].resourceType = "Observation"
* contained[=].id = "evaluation"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathObservationEvaluation"
* contained[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/observation-evaluation-id"
* contained[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900030700.Evaluation"
* contained[=].status = #final
* contained[=].code = $EPathEvaluationItemCS#judgement "評価"
* contained[=].subject.reference = "urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7"
* contained[=].effectiveDateTime = "2025-01-01T17:30:00+09:00"
* contained[=].performer[0].reference = "#performer"
* contained[=].performer[=].type = "Practitioner"
* contained[=].performer[=].display = "記録者"
* contained[=].performer[+].reference = "#performer-role"
* contained[=].performer[=].type = "PractitionerRole"
* contained[=].performer[=].display = "10"
* contained[=].valueCodeableConcept = $EPathStateOfAchievementCS#2 "未達成（バリアンス）"
* contained[+].resourceType = "Observation"
* contained[=].id = "3888f21a22f0229c445635fb7069c8d720e57631969050ea20067007f872809f"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathObservationExecution"
* contained[=].text.status = #generated
* contained[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">【観察結果】収縮期血圧：178 mmHg</div>"
* contained[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/observation-result-id"
* contained[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900030700.1900030700.1.20250101173000"
* contained[=].status = #final
* contained[=].category = $EPathBOMAssessmentCategoryCS#19 "バイタルサイン"
* contained[=].code = $EPathLocalAssessmentCodeCS#1900030700 "収縮期血圧"
* contained[=].subject.reference = "urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7"
* contained[=].effectiveDateTime = "2025-01-01T17:30:00+09:00"
* contained[=].performer.type = "Practitioner"
* contained[=].performer.display = "実施者"
* contained[=].valueQuantity.value = 178
* contained[=].valueQuantity.unit = "mmHg"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/assessment-goal-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900030700"
* lifecycleStatus = #completed
* achievementStatus = $EPathStateOfAchievementCS#2 "未達成（バリアンス）"
* category = $EPathBOMAssessmentCategoryCS#19 "バイタルサイン"
* description.text = "収縮期血圧:90～160"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* target.measure = $EPathLocalAssessmentCodeCS#1900030700 "収縮期血圧"
* target.detailString = "90～160"
* statusDate = "2025-01-01"
* outcomeReference[0].reference = "#evaluation"
* outcomeReference[+].reference = "#3888f21a22f0229c445635fb7069c8d720e57631969050ea20067007f872809f" 
* outcomeReference[+].display = "収縮期血圧"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-26
InstanceOf: Procedure
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureTask"
* contained.resourceType = "Practitioner"
* contained.id = "performer"
* contained.meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner"
* contained.name.text = "実施者"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/task-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900030700.31001848"
* status = #completed
* category = $EPathTaskCategoryLv1CS#NO "観察項目"
* category.text = "観察項目"
* code = $EPathLocalTaskCodeCS#31001848 "収縮期血圧"
* code.text = "収縮期血圧"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* performedDateTime = "2025-01-01T17:30:00+09:00"
* performer.actor.reference = "#performer"
* performer.actor.display = "実施者"
* performer.actor.type = "Practitioner"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-27
InstanceOf: CarePlan
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAssessment"
* extension[0].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanStatusTypeWhenOccured"
* extension[=].valueCode = #12
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/assessment-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900032700"
* partOf[0] = Reference(urn:uuid:93c56eb8-46ca-4f0b-b79b-e3dbae722f32) "PCI（2泊3日）NP Local"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00"
* partOf[+] = Reference(urn:uuid:0c35ee81-60a7-418b-99fc-9b3882a2a513) "入院日"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/event-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1"
* partOf[+] = Reference(urn:uuid:03726468-3c5f-4c16-9b79-d40b4f5367b5) "バイタルサインが安定している"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/oat-unit-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0"
* status = #completed
* intent = #plan
* category[0] = $EPathBOMAssessmentCategoryCS#19 "バイタルサイン"
* category[+] = $EPathLocalAssessmentCodeCS#1900032700 "体温"
* title = "体温"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* goal = Reference(urn:uuid:fa370607-dcae-4000-98fd-0bee66e09fdb)
* activity.outcomeReference = Reference(urn:uuid:075a2986-f3e2-40db-b331-381d17687153) "体温"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-28
InstanceOf: Goal
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalAssessmentExecution"
* contained[0].resourceType = "Practitioner"
* contained[=].id = "performer"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner"
* contained[=].name.text = "記録者"
* contained[+].resourceType = "PractitionerRole"
* contained[=].id = "performer-role"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitionerRole"
* contained[=].code.text = "看護師"
* contained[+].resourceType = "Observation"
* contained[=].id = "evaluation"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathObservationEvaluation"
* contained[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/observation-evaluation-id"
* contained[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900032700.Evaluation"
* contained[=].status = #final
* contained[=].code = $EPathEvaluationItemCS#judgement "評価"
* contained[=].subject.reference = "urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7"
* contained[=].effectiveDateTime = "2025-01-01T17:30:00+09:00"
* contained[=].performer[0].reference = "#performer"
* contained[=].performer[=].type = "Practitioner"
* contained[=].performer[=].display = "記録者"
* contained[=].performer[+].reference = "#performer-role"
* contained[=].performer[=].type = "PractitionerRole"
* contained[=].performer[=].display = "10"
* contained[=].valueCodeableConcept = $EPathStateOfAchievementCS#2 "未達成（バリアンス）"
* contained[+].resourceType = "Observation"
* contained[=].id = "bd3cff92bf4b3581670af4982075f323ef55d49de95099c54b4c6ba6a76f0e0a"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathObservationExecution"
* contained[=].text.status = #generated
* contained[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">【観察結果】体温：37.8 ℃</div>"
* contained[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/observation-result-id"
* contained[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900032700.1900032700.1.20250101173000"
* contained[=].status = #final
* contained[=].category = $EPathBOMAssessmentCategoryCS#19 "バイタルサイン"
* contained[=].code = $EPathLocalAssessmentCodeCS#1900032700 "体温"
* contained[=].subject.reference = "urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7"
* contained[=].effectiveDateTime = "2025-01-01T17:30:00+09:00"
* contained[=].performer.type = "Practitioner"
* contained[=].performer.display = "実施者"
* contained[=].valueQuantity.value = 37.8
* contained[=].valueQuantity.unit = "℃"
* contained[+].resourceType = "Observation"
* contained[=].id = "5a6ef0d3e27ad0cd2e95302ce62d6d51f3c1e25878d0b78668a0cb7101f9c659"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathObservationExecution"
* contained[=].text.status = #generated
* contained[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">【観察結果】体温：37.9 ℃</div>"
* contained[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/observation-result-id"
* contained[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900032700.1900032700.1.20250101183000"
* contained[=].status = #final
* contained[=].category = $EPathBOMAssessmentCategoryCS#19 "バイタルサイン"
* contained[=].code = $EPathLocalAssessmentCodeCS#1900032700 "体温"
* contained[=].subject.reference = "urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7"
* contained[=].effectiveDateTime = "2025-01-01T18:30:00+09:00"
* contained[=].performer.type = "Practitioner"
* contained[=].performer.display = "実施者"
* contained[=].valueQuantity.value = 37.9
* contained[=].valueQuantity.unit = "℃"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/assessment-goal-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900032700"
* lifecycleStatus = #completed
* achievementStatus = $EPathStateOfAchievementCS#2 "未達成（バリアンス）"
* category = $EPathBOMAssessmentCategoryCS#19 "バイタルサイン"
* description.text = "体温:＜37.5"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* target.measure = $EPathLocalAssessmentCodeCS#1900032700 "体温"
* target.detailString = "＜37.5"
* statusDate = "2025-01-01"
* outcomeReference[0].reference = "#evaluation"
* outcomeReference[+].reference = "#bd3cff92bf4b3581670af4982075f323ef55d49de95099c54b4c6ba6a76f0e0a" 
* outcomeReference[+].display = "体温"
* outcomeReference[+].reference = "#5a6ef0d3e27ad0cd2e95302ce62d6d51f3c1e25878d0b78668a0cb7101f9c659" 
* outcomeReference[+].display = "体温"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-29
InstanceOf: Procedure
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureTask"
* contained.resourceType = "Practitioner"
* contained.id = "performer"
* contained.meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner"
* contained.name.text = "実施者"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/task-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900032700.31001368"
* status = #completed
* category = $EPathTaskCategoryLv1CS#NO "観察項目"
* category.text = "観察項目"
* code = $EPathLocalTaskCodeCS#31001368 "体温"
* code.text = "体温"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* performedDateTime = "2025-01-01T17:30:00+09:00"
* performer.actor.reference = "#performer"
* performer.actor.display = "実施者"
* performer.actor.type = "Practitioner"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-30
InstanceOf: CarePlan
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAssessment"
* extension[0].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanStatusTypeWhenOccured"
* extension[=].valueCode = #12
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/assessment-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900034300"
* partOf[0] = Reference(urn:uuid:93c56eb8-46ca-4f0b-b79b-e3dbae722f32) "PCI（2泊3日）NP Local"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00"
* partOf[+] = Reference(urn:uuid:0c35ee81-60a7-418b-99fc-9b3882a2a513) "入院日"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/event-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1"
* partOf[+] = Reference(urn:uuid:03726468-3c5f-4c16-9b79-d40b4f5367b5) "バイタルサインが安定している"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/oat-unit-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0"
* status = #completed
* intent = #plan
* category[0] = $EPathBOMAssessmentCategoryCS#19 "バイタルサイン"
* category[+] = $EPathLocalAssessmentCodeCS#1900034300 "脈拍数"
* title = "脈拍数"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* activity.outcomeReference = Reference(urn:uuid:18e98f6f-a064-4871-a8db-85fe786195e0) "脈拍数"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-31
InstanceOf: Procedure
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureTask"
* contained.resourceType = "Practitioner"
* contained.id = "performer"
* contained.meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner"
* contained.name.text = "実施者"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/task-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1.1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900034300.31001390"
* status = #completed
* category = $EPathTaskCategoryLv1CS#NO "観察項目"
* category.text = "観察項目"
* code = $EPathLocalTaskCodeCS#31001390 "脈拍数"
* code.text = "脈拍数"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* performedDateTime = "2025-01-01T17:30:00+09:00"
* performer.actor.reference = "#performer"
* performer.actor.display = "実施者"
* performer.actor.type = "Practitioner"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-32
InstanceOf: CarePlan
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanEvent"
* extension.url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanEventElapsedDays"
* extension.valueInteger = 4
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/event-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4"
* partOf = Reference(urn:uuid:93c56eb8-46ca-4f0b-b79b-e3dbae722f32) "PCI（2泊3日）NP Local"
* partOf.identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id"
* partOf.identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00"
* status = #completed
* intent = #plan
* category.text = "退院日"
* title = "退院日"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* goal = Reference(urn:uuid:4c2485a8-d4bf-4d45-bdda-0862f8e55737) "退院日"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-33
InstanceOf: Goal
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalEvent"
* contained[0].resourceType = "Practitioner"
* contained[=].id = "performer"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner"
* contained[=].name.text = "記録者"
* contained[+].resourceType = "Observation"
* contained[=].id = "evaluation"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathObservationEvaluation"
* contained[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/observation-evaluation-id"
* contained[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4.Evaluation"
* contained[=].status = #final
* contained[=].code = $EPathEvaluationItemCS#comp-assessment "総合評価"
* contained[=].subject.reference = "urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7"
* contained[=].effectiveDateTime = "2025-01-01T17:30:00+09:00"
* contained[=].performer.reference = "#performer"
* contained[=].performer.type = "Practitioner"
* contained[=].performer.display = "記録者"
* contained[=].valueString = "総合評価"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/event-goal-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4.Goal"
* lifecycleStatus = #completed
* description.text = "なし"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* statusDate = "2025-01-01"
* statusReason = "総合評価"
* outcomeReference[0].reference = "#evaluation"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-34
InstanceOf: CarePlan
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanOATUnit"
* extension[0].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanStatusTypeWhenOccured"
* extension[=].valueCode = #12
* extension[+].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanCriticalIndicator"
* extension[=].valueCode = #0
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/oat-unit-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4.3ecc8973-1028-4834-9758-8ff64b60c46c"
* partOf[0] = Reference(urn:uuid:93c56eb8-46ca-4f0b-b79b-e3dbae722f32) "PCI（2泊3日）NP Local"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00"
* partOf[+] = Reference(urn:uuid:b19d3584-584c-4ae0-b6be-a97bc59d2a42) "退院日"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/event-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4"
* status = #completed
* intent = #plan
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* goal = Reference(urn:uuid:00f7758b-c92d-481e-a66d-5a39b131186d)

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-35
InstanceOf: Goal
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathGoalOutcome"
* contained[0].resourceType = "Practitioner"
* contained[=].id = "performer"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner"
* contained[=].name.text = "評価者Ａ"
* contained[+].resourceType = "PractitionerRole"
* contained[=].id = "performer-role"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitionerRole"
* contained[=].code.text = "医師"
* contained[+].resourceType = "Observation"
* contained[=].id = "evaluation"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathObservationEvaluation"
* contained[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/observation-evaluation-id"
* contained[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4.3ecc8973-1028-4834-9758-8ff64b60c46c.Evaluation"
* contained[=].status = #final
* contained[=].code = $EPathEvaluationItemCS#judgement "評価"
* contained[=].subject.reference = "urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7"
* contained[=].effectiveDateTime = "2099-12-31T00:00:00+09:00"
* contained[=].performer[0].reference = "#performer"
* contained[=].performer[=].type = "Practitioner"
* contained[=].performer[=].display = "評価者Ａ"
* contained[=].performer[+].reference = "#performer-role"
* contained[=].performer[=].type = "PractitionerRole"
* contained[=].performer[=].display = "医師"
* contained[=].valueCodeableConcept = $EPathStateOfAchievementCS#1 "達成"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/outcome-goal-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4.3ecc8973-1028-4834-9758-8ff64b60c46c.Goal"
* lifecycleStatus = #completed
* achievementStatus = $EPathStateOfAchievementCS#1 "達成"
* description.text = "なし"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* statusDate = "2099-12-31"
* outcomeReference[0].reference = "#evaluation"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-36
InstanceOf: CarePlan
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAssessment"
* extension[0].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanStatusTypeWhenOccured"
* extension[=].valueCode = #12
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/assessment-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4.3ecc8973-1028-4834-9758-8ff64b60c46c.ZZZZZZZZZZ"
* partOf[0] = Reference(urn:uuid:93c56eb8-46ca-4f0b-b79b-e3dbae722f32) "PCI（2泊3日）NP Local"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00"
* partOf[+] = Reference(urn:uuid:b19d3584-584c-4ae0-b6be-a97bc59d2a42) "退院日"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/event-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4"
* partOf[+] = Reference(urn:uuid:3fc2252b-9e0e-4468-8205-d6df3cd8555c)
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/oat-unit-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4.3ecc8973-1028-4834-9758-8ff64b60c46c"
* status = #completed
* intent = #plan
* category = $EPathAssessmentCodeEmptyCS#ZZZZZZZZZZ "観察項目なし"
* title = "観察項目なし"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* activity.outcomeReference = Reference(urn:uuid:3f53298a-6f50-4e22-b39b-af0e8b822bcc) "心拍数"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-37
InstanceOf: Procedure
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureTask"
* contained.resourceType = "Practitioner"
* contained.id = "performer"
* contained.meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner"
* contained.name.text = "実施者"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/task-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4.3ecc8973-1028-4834-9758-8ff64b60c46c.ZZZZZZZZZZ.31000595"
* status = #completed
* category = $EPathTaskCategoryLv1CS#NO "観察項目"
* category.text = "観察項目"
* code = $EPathLocalTaskCodeCS#31000595 "心拍数"
* code.text = "心拍数"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* performedDateTime = "2018-06-08T00:49:00+09:00"
* performer.actor.reference = "#performer"
* performer.actor.display = "実施者"
* performer.actor.type = "Practitioner"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-38
InstanceOf: CarePlan
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAssessment"
* extension[0].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanStatusTypeWhenOccured"
* extension[=].valueCode = #12
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/assessment-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4.3ecc8973-1028-4834-9758-8ff64b60c46c.ZZZZZZZZZZ"
* partOf[0] = Reference(urn:uuid:93c56eb8-46ca-4f0b-b79b-e3dbae722f32) "PCI（2泊3日）NP Local"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00"
* partOf[+] = Reference(urn:uuid:b19d3584-584c-4ae0-b6be-a97bc59d2a42) "退院日"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/event-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4"
* partOf[+] = Reference(urn:uuid:3fc2252b-9e0e-4468-8205-d6df3cd8555c)
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/oat-unit-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4.3ecc8973-1028-4834-9758-8ff64b60c46c"
* status = #completed
* intent = #plan
* category = $EPathAssessmentCodeEmptyCS#ZZZZZZZZZZ "観察項目なし"
* title = "観察項目なし"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* activity.outcomeReference = Reference(urn:uuid:2dde0bdf-f015-4c85-a94b-539fd475105e) "拡張期血圧"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-39
InstanceOf: Procedure
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureTask"
* contained.resourceType = "Practitioner"
* contained.id = "performer"
* contained.meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner"
* contained.name.text = "実施者"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/task-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4.3ecc8973-1028-4834-9758-8ff64b60c46c.ZZZZZZZZZZ.31001849"
* status = #completed
* category = $EPathTaskCategoryLv1CS#NO "観察項目"
* category.text = "観察項目"
* code = $EPathLocalTaskCodeCS#31001849 "拡張期血圧"
* code.text = "拡張期血圧"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* performedDateTime = "2025-01-01T17:30:00+09:00"
* performer.actor.reference = "#performer"
* performer.actor.display = "実施者"
* performer.actor.type = "Practitioner"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-40
InstanceOf: CarePlan
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAssessment"
* extension[0].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanStatusTypeWhenOccured"
* extension[=].valueCode = #12
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/assessment-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4.3ecc8973-1028-4834-9758-8ff64b60c46c.ZZZZZZZZZZ"
* partOf[0] = Reference(urn:uuid:93c56eb8-46ca-4f0b-b79b-e3dbae722f32) "PCI（2泊3日）NP Local"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00"
* partOf[+] = Reference(urn:uuid:b19d3584-584c-4ae0-b6be-a97bc59d2a42) "退院日"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/event-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4"
* partOf[+] = Reference(urn:uuid:3fc2252b-9e0e-4468-8205-d6df3cd8555c)
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/oat-unit-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4.3ecc8973-1028-4834-9758-8ff64b60c46c"
* status = #completed
* intent = #plan
* category = $EPathAssessmentCodeEmptyCS#ZZZZZZZZZZ "観察項目なし"
* title = "観察項目なし"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* activity.outcomeReference = Reference(urn:uuid:9c4eac3a-0eb7-4c00-aa93-edb320020eae) "収縮期血圧"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-41
InstanceOf: Procedure
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureTask"
* contained.resourceType = "Practitioner"
* contained.id = "performer"
* contained.meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner"
* contained.name.text = "実施者"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/task-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4.3ecc8973-1028-4834-9758-8ff64b60c46c.ZZZZZZZZZZ.31001848"
* status = #completed
* category = $EPathTaskCategoryLv1CS#NO "観察項目"
* category.text = "観察項目"
* code = $EPathLocalTaskCodeCS#31001848 "収縮期血圧"
* code.text = "収縮期血圧"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* performedDateTime = "2025-01-01T17:30:00+09:00"
* performer.actor.reference = "#performer"
* performer.actor.display = "実施者"
* performer.actor.type = "Practitioner"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-42
InstanceOf: CarePlan
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAssessment"
* extension[0].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanStatusTypeWhenOccured"
* extension[=].valueCode = #12
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/assessment-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4.3ecc8973-1028-4834-9758-8ff64b60c46c.ZZZZZZZZZZ"
* partOf[0] = Reference(urn:uuid:93c56eb8-46ca-4f0b-b79b-e3dbae722f32) "PCI（2泊3日）NP Local"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00"
* partOf[+] = Reference(urn:uuid:b19d3584-584c-4ae0-b6be-a97bc59d2a42) "退院日"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/event-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4"
* partOf[+] = Reference(urn:uuid:3fc2252b-9e0e-4468-8205-d6df3cd8555c)
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/oat-unit-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4.3ecc8973-1028-4834-9758-8ff64b60c46c"
* status = #completed
* intent = #plan
* category = $EPathAssessmentCodeEmptyCS#ZZZZZZZZZZ "観察項目なし"
* title = "観察項目なし"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* encounter = Reference(urn:uuid:57acdfbe-a9ae-4ee1-83b1-3d51c7295418)
* activity.outcomeReference = Reference(urn:uuid:46a7a932-36f7-437e-93dd-86f2a090618c) "経皮的動脈血酸素飽和度（ＳＰＯ２）"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-43
InstanceOf: Procedure
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureTask"
* contained.resourceType = "Practitioner"
* contained.id = "performer"
* contained.meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner"
* contained.name.text = "実施者"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/task-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4.3ecc8973-1028-4834-9758-8ff64b60c46c.ZZZZZZZZZZ.31000001"
* status = #completed
* category = $EPathTaskCategoryLv1CS#NO "観察項目"
* category.text = "観察項目"
* code = $EPathLocalTaskCodeCS#31000001 "経皮的動脈血酸素飽和度（ＳＰＯ２）"
* code.text = "経皮的動脈血酸素飽和度（ＳＰＯ２）"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* performedDateTime = "2025-01-01T17:30:00+09:00"
* performer.actor.reference = "#performer"
* performer.actor.display = "実施者"
* performer.actor.type = "Practitioner"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-44
InstanceOf: CarePlan
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanAssessment"
* extension[0].url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanStatusTypeWhenOccured"
* extension[=].valueCode = #12
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/assessment-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4.3ecc8973-1028-4834-9758-8ff64b60c46c.ZZZZZZZZZZ"
* partOf[0] = Reference(urn:uuid:93c56eb8-46ca-4f0b-b79b-e3dbae722f32) "PCI（2泊3日）NP Local"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00"
* partOf[+] = Reference(urn:uuid:b19d3584-584c-4ae0-b6be-a97bc59d2a42) "退院日"
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/event-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4"
* partOf[+] = Reference(urn:uuid:3fc2252b-9e0e-4468-8205-d6df3cd8555c)
* partOf[=].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/oat-unit-id"
* partOf[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4.3ecc8973-1028-4834-9758-8ff64b60c46c"
* status = #completed
* intent = #plan
* category = $EPathAssessmentCodeEmptyCS#ZZZZZZZZZZ "観察項目なし"
* title = "観察項目なし"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* activity.outcomeReference = Reference(urn:uuid:213b9609-144a-4793-affd-0ca13179db33) "心拍数"

Instance: Inline-Instance-for-Bundle.EP12.CN05I00511-0-45
InstanceOf: Procedure
Usage: #inline
* meta.lastUpdated = "2025-10-28T14:10:24.159+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureTask"
* contained[0].resourceType = "Practitioner"
* contained[=].id = "performer"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner"
* contained[=].name.text = "実施者"
* contained[+].resourceType = "PractitionerRole"
* contained[=].id = "performer-role"
* contained[=].meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitionerRole"
* contained[=].code.text = "医師"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/task-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.4.3ecc8973-1028-4834-9758-8ff64b60c46c.ZZZZZZZZZZ.31000595"
* status = #completed
* category = $EPathTaskCategoryLv1CS#NO "観察項目"
* category.text = "観察項目"
* code = $EPathLocalTaskCodeCS#31000595 "心拍数"
* code.text = "心拍数"
* subject = Reference(urn:uuid:351c0bc9-2414-490a-a298-8d33fef8e5d7)
* performedDateTime = "2018-06-08T07:08:00+09:00"
* performer[0].actor.reference = "#performer"
* performer[=].actor.display = "実施者"
* performer[=].actor.type = "Practitioner"
* performer[+].actor.reference = "#performer-role"
* performer[=].actor.display = "医師"
* performer[=].actor.type = "PractitionerRole"