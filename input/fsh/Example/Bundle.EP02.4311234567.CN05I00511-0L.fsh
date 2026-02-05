Alias: $organization-type = http://terminology.hl7.org/CodeSystem/organization-type
Alias: $ClinicalDepartment = http://jami.jp/SS-MIX2/CodeSystem/ClinicalDepartment
Alias: $plan-definition-type = http://terminology.hl7.org/CodeSystem/plan-definition-type
Alias: $master-disease-keyNumber = http://medis.or.jp/CodeSystem/master-disease-keyNumber
Alias: $EPathBOMOutcomeCategoryCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMOutcomeCategoryCS
Alias: $EPathBOMOutcomeSubCategoryCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMOutcomeSubCategoryCS
Alias: $EPathBOMOutcomeCodeCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMOutcomeCodeCS
Alias: $EPathBOMAssessmentCategoryCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMAssessmentCategoryCS
Alias: $EPathBOMAssessmentCodeCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMAssessmentCodeCS
Alias: $EPathLocalTaskCodeCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathLocalTaskCodeCS
Alias: $EPathTaskCategoryLv1CS = http://e-path.jp/fhir/ePath/CodeSystem/EPathTaskCategoryLv1CS

Instance: Bundle.EP02.4311234567.CN05I00511-0L
InstanceOf: Bundle
Usage: #example
Description: "施設パスバンドル 経皮的冠動脈形成術（PCI）"
* meta.lastUpdated = "2025-10-24T19:52:26.31+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathBundleMessageEP02"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/ep02-bundle-id"
* identifier.value = "CN05I00511-0L"
* identifier.assigner.identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no"
* identifier.assigner.identifier.value = "4311234567"
* identifier.assigner.display = "ePathテスト病院"
* type = #collection
* timestamp = "2025-10-24T19:52:26.31+09:00"
* entry[0].fullUrl = "urn:uuid:0738e9c9-69c5-4819-99a1-5978ad38d548"
* entry[=].resource = Inline-Instance-for-Bundle.EP02.4311234567.CN05I00511-0L-1
* entry[+].fullUrl = "urn:uuid:21d553f5-e349-4f7c-95f0-b2690734667b"
* entry[=].resource = EP02.4311234567.CN05I00511-0L
* entry[+].fullUrl = "urn:uuid:5ed3634d-94bc-4838-8431-2ba1a8759154"
* entry[=].resource = EVT.4311234567.CN05I00511-0L.1-1
* entry[+].fullUrl = "urn:uuid:f6e3e868-ffce-4c45-a2dd-79b2c217283c"
* entry[=].resource = EVT.4311234567.CN05I00511-0L.4

Instance: Inline-Instance-for-Bundle.EP02.4311234567.CN05I00511-0L-1
InstanceOf: Organization
Usage: #inline
* meta.lastUpdated = "2025-10-24T19:52:26.31+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathOrganization"
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no"
* identifier.value = "4311234567"
* type = $organization-type#prov
* name = "ePathテスト病院"

Instance: EP02.4311234567.CN05I00511-0L
InstanceOf: PlanDefinition
Usage: #inline
* meta.lastUpdated = "2025-10-24T19:52:26.31+09:00"
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
* url = "http://e-path.jp/fhir/ePath/PlanDifinition/EP02.4311234567.CN05I00511-0L"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/facility-path-id"
* identifier.value = "CN05I00511-0L"
* identifier.assigner.identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no"
* identifier.assigner.identifier.value = "4311234567"
* identifier.assigner.display = "ePathテスト病院"
* version = "1.0.1"
* title = "PCI（2泊3日）NP Local"
* type = $plan-definition-type#clinical-protocol "Clinical Protocol"
* status = #active
* goal.description.text = "PCI（2泊3日）NP Local"
* goal.addresses = $master-disease-keyNumber#20058911 "狭心症"
* action[0].id = "1-1"
* action[=].title = "入院日"
* action[=].code.text = "入院日"
* action[=].definitionCanonical = "http://e-path.jp/fhir/ePath/PlanDefinition/EVT.4311234567.CN05I00511-0L.1-1"
* action[+].id = "4"
* action[=].title = "退院日"
* action[=].code.text = "退院日"
* action[=].definitionCanonical = "http://e-path.jp/fhir/ePath/PlanDefinition/EVT.4311234567.CN05I00511-0L.4"

Instance: EVT.4311234567.CN05I00511-0L.1-1
InstanceOf: PlanDefinition
Usage: #inline
* meta.lastUpdated = "2025-10-24T19:52:26.31+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionEvent"
* extension.extension[0].url = "UnitCategory"
* extension.extension[=].valueCode = #event
* extension.extension[+].url = "EventElapsedDays"
* extension.extension[=].valueString = "1"
* extension.extension[+].url = "PathStep"
* extension.extension[=].valueInteger = 1
* extension.extension[+].url = "PathStepName"
* extension.extension[=].valueString = "１回目パスステップ"
* extension.extension[+].url = "InpatientOutpatientType"
* extension.extension[=].valueCode = #I
* extension.extension[+].url = "AllowableElapsedDaysConditionType"
* extension.extension[=].valueCode = #3
* extension.extension[+].url = "AllowableElapsedDaysConditionDays"
* extension.extension[=].valueString = "1"
* extension.extension[+].url = "AllowableElapsedDaysConditionRangeLow"
* extension.extension[=].valueInteger = 2
* extension.extension[+].url = "AllowableElapsedDaysConditionRangeHigh"
* extension.extension[=].valueInteger = 5
* extension.url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionEventActionExtensions"
* url = "http://e-path.jp/fhir/ePath/PlanDifinition/EVT.4311234567.CN05I00511-0L.1-1"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/event-template-id"
* identifier.value = "CN05I00511-0L.1-1"
* identifier.assigner.identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no"
* identifier.assigner.identifier.value = "4311234567"
* identifier.assigner.display = "ePathテスト病院"
* title = "入院日"
* type = $plan-definition-type#clinical-protocol "Clinical Protocol"
* status = #active
* action[0].id = "e89a8e7c-2f30-4a8e-88d7-41cdf3e7617a"
* action[=].extension.extension[0].url = "UnitCategory"
* action[=].extension.extension[=].valueCode = #oat-unit
* action[=].extension.extension[+].url = "OATUnitIdentifier"
* action[=].extension.extension[=].valueString = "e89a8e7c-2f30-4a8e-88d7-41cdf3e7617a"
* action[=].extension.extension[+].url = "StatusTypeWhenOccured"
* action[=].extension.extension[=].valueCode = #12
* action[=].extension.extension[+].url = "CriticalIndicator"
* action[=].extension.extension[=].valueCode = #Y
* action[=].extension.url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionOATUnitActionExtensions"
* action[=].title = "身体的準備ができている"
* action[=].code[0] = $EPathBOMOutcomeCategoryCS#H "患者状態"
* action[=].code[+] = $EPathBOMOutcomeSubCategoryCS#H002 "その他の全身状態"
* action[=].code[+] = $EPathBOMOutcomeCodeCS#O00470 "身体的準備ができている"
* action[=].action[0].id = "e89a8e7c-2f30-4a8e-88d7-41cdf3e7617a.3400063200-1"
* action[=].action[=].extension.extension[0].url = "UnitCategory"
* action[=].action[=].extension.extension[=].valueCode = #assessment
* action[=].action[=].extension.extension[+].url = "ProperValue"
* action[=].action[=].extension.extension[=].valueString = "なし"
* action[=].action[=].extension.url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionAssessmentActionExtensions"
* action[=].action[=].title = "感冒症状がない"
* action[=].action[=].code[0] = $EPathBOMAssessmentCategoryCS#34 "呼吸"
* action[=].action[=].code[+] = $EPathBOMAssessmentCodeCS#3400063200 "感冒症状がない"
* action[=].action[=].relatedAction.extension.extension[0].url = "Category"
* action[=].action[=].relatedAction.extension.extension[=].valueCodeableConcept.coding = $EPathTaskCategoryLv1CS#NO "観察項目"
* action[=].action[=].relatedAction.extension.extension[=].valueCodeableConcept.text = "観察項目"
* action[=].action[=].relatedAction.extension.extension[+].url = "Code"
* action[=].action[=].relatedAction.extension.extension[=].valueCodeableConcept = $EPathLocalTaskCodeCS#31001478 "感冒様症状"
* action[=].action[=].relatedAction.extension.url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionTaskExtensions"
* action[=].action[=].relatedAction.actionId = "e89a8e7c-2f30-4a8e-88d7-41cdf3e7617a.3400063200-1.Task"
* action[=].action[=].relatedAction.relationship = #concurrent
* action[=].action[+].id = "e89a8e7c-2f30-4a8e-88d7-41cdf3e7617a.3700070000-2"
* action[=].action[=].extension.extension.url = "UnitCategory"
* action[=].action[=].extension.extension.valueCode = #assessment
* action[=].action[=].extension.url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionAssessmentActionExtensions"
* action[=].action[=].title = "抗血小板剤・抗凝固剤が予定通り中止されている"
* action[=].action[=].code[0] = $EPathBOMAssessmentCategoryCS#37 "出血"
* action[=].action[=].code[+] = $EPathBOMAssessmentCodeCS#3700070000 "抗血小板剤・抗凝固剤が予定通り中止されている"
* action[=].action[=].relatedAction.extension.extension[0].url = "Category"
* action[=].action[=].relatedAction.extension.extension[=].valueCodeableConcept.coding = $EPathTaskCategoryLv1CS#NO "観察項目"
* action[=].action[=].relatedAction.extension.extension[=].valueCodeableConcept.text = "観察項目"
* action[=].action[=].relatedAction.extension.extension[+].url = "Code"
* action[=].action[=].relatedAction.extension.extension[=].valueCodeableConcept = $EPathLocalTaskCodeCS#31200127 "抗血小板剤・抗凝固剤の中止"
* action[=].action[=].relatedAction.extension.url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionTaskExtensions"
* action[=].action[=].relatedAction.actionId = "e89a8e7c-2f30-4a8e-88d7-41cdf3e7617a.3700070000-2.Task"
* action[=].action[=].relatedAction.relationship = #concurrent
* action[+].id = "1a4e7b88-cdb0-4860-bda7-497e3dd864d0"
* action[=].extension.extension[0].url = "UnitCategory"
* action[=].extension.extension[=].valueCode = #oat-unit
* action[=].extension.extension[+].url = "OATUnitIdentifier"
* action[=].extension.extension[=].valueString = "1a4e7b88-cdb0-4860-bda7-497e3dd864d0"
* action[=].extension.extension[+].url = "StatusTypeWhenOccured"
* action[=].extension.extension[=].valueCode = #12
* action[=].extension.extension[+].url = "CriticalIndicator"
* action[=].extension.extension[=].valueCode = #0
* action[=].extension.url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionOATUnitActionExtensions"
* action[=].title = "バイタルサインが安定している"
* action[=].code[0] = $EPathBOMOutcomeCategoryCS#H "患者状態"
* action[=].code[+] = $EPathBOMOutcomeSubCategoryCS#H004 "バイタルサインズ"
* action[=].code[+] = $EPathBOMOutcomeCodeCS#O00670 "バイタルサインが安定している"
* action[=].action[0].id = "1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900028900-3"
* action[=].action[=].extension.extension[0].url = "UnitCategory"
* action[=].action[=].extension.extension[=].valueCode = #assessment
* action[=].action[=].extension.extension[+].url = "ProperValue"
* action[=].action[=].extension.extension[=].valueString = "≦100"
* action[=].action[=].extension.url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionAssessmentActionExtensions"
* action[=].action[=].title = "拡張期血圧"
* action[=].action[=].code[0] = $EPathBOMAssessmentCategoryCS#19 "バイタルサイン"
* action[=].action[=].code[+] = $EPathBOMAssessmentCodeCS#1900028900 "拡張期血圧"
* action[=].action[=].relatedAction.extension.extension[0].url = "Category"
* action[=].action[=].relatedAction.extension.extension[=].valueCodeableConcept.coding = $EPathTaskCategoryLv1CS#NO "観察項目"
* action[=].action[=].relatedAction.extension.extension[=].valueCodeableConcept.text = "観察項目"
* action[=].action[=].relatedAction.extension.extension[+].url = "Code"
* action[=].action[=].relatedAction.extension.extension[=].valueCodeableConcept = $EPathLocalTaskCodeCS#31001849 "拡張期血圧"
* action[=].action[=].relatedAction.extension.url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionTaskExtensions"
* action[=].action[=].relatedAction.actionId = "1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900028900-3.Task"
* action[=].action[=].relatedAction.relationship = #concurrent
* action[=].action[+].id = "1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900030400-4"
* action[=].action[=].extension.extension[0].url = "UnitCategory"
* action[=].action[=].extension.extension[=].valueCode = #assessment
* action[=].action[=].extension.extension[+].url = "ProperValue"
* action[=].action[=].extension.extension[=].valueString = "10～30"
* action[=].action[=].extension.url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionAssessmentActionExtensions"
* action[=].action[=].title = "呼吸数"
* action[=].action[=].code[0] = $EPathBOMAssessmentCategoryCS#19 "バイタルサイン"
* action[=].action[=].code[+] = $EPathBOMAssessmentCodeCS#1900030400 "呼吸数"
* action[=].action[=].relatedAction.extension.extension[0].url = "Category"
* action[=].action[=].relatedAction.extension.extension[=].valueCodeableConcept.coding = $EPathTaskCategoryLv1CS#NO "観察項目"
* action[=].action[=].relatedAction.extension.extension[=].valueCodeableConcept.text = "観察項目"
* action[=].action[=].relatedAction.extension.extension[+].url = "Code"
* action[=].action[=].relatedAction.extension.extension[=].valueCodeableConcept = $EPathLocalTaskCodeCS#31001369 "呼吸数"
* action[=].action[=].relatedAction.extension.url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionTaskExtensions"
* action[=].action[=].relatedAction.actionId = "1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900030400-4.Task"
* action[=].action[=].relatedAction.relationship = #concurrent
* action[=].action[+].id = "1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900030700-5"
* action[=].action[=].extension.extension[0].url = "UnitCategory"
* action[=].action[=].extension.extension[=].valueCode = #assessment
* action[=].action[=].extension.extension[+].url = "ProperValue"
* action[=].action[=].extension.extension[=].valueString = "90～160"
* action[=].action[=].extension.url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionAssessmentActionExtensions"
* action[=].action[=].title = "収縮期血圧"
* action[=].action[=].code[0] = $EPathBOMAssessmentCategoryCS#19 "バイタルサイン"
* action[=].action[=].code[+] = $EPathBOMAssessmentCodeCS#1900030700 "収縮期血圧"
* action[=].action[=].relatedAction.extension.extension[0].url = "Category"
* action[=].action[=].relatedAction.extension.extension[=].valueCodeableConcept.coding = $EPathTaskCategoryLv1CS#NO "観察項目"
* action[=].action[=].relatedAction.extension.extension[=].valueCodeableConcept.text = "観察項目"
* action[=].action[=].relatedAction.extension.extension[+].url = "Code"
* action[=].action[=].relatedAction.extension.extension[=].valueCodeableConcept = $EPathLocalTaskCodeCS#31001848 "収縮期血圧"
* action[=].action[=].relatedAction.extension.url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionTaskExtensions"
* action[=].action[=].relatedAction.actionId = "1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900030700-5.Task"
* action[=].action[=].relatedAction.relationship = #concurrent
* action[=].action[+].id = "1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900032700-6"
* action[=].action[=].extension.extension[0].url = "UnitCategory"
* action[=].action[=].extension.extension[=].valueCode = #assessment
* action[=].action[=].extension.extension[+].url = "ProperValue"
* action[=].action[=].extension.extension[=].valueString = "＜37.5"
* action[=].action[=].extension.url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionAssessmentActionExtensions"
* action[=].action[=].title = "体温"
* action[=].action[=].code[0] = $EPathBOMAssessmentCategoryCS#19 "バイタルサイン"
* action[=].action[=].code[+] = $EPathBOMAssessmentCodeCS#1900032700 "体温"
* action[=].action[=].relatedAction.extension.extension[0].url = "Category"
* action[=].action[=].relatedAction.extension.extension[=].valueCodeableConcept.coding = $EPathTaskCategoryLv1CS#NO "観察項目"
* action[=].action[=].relatedAction.extension.extension[=].valueCodeableConcept.text = "観察項目"
* action[=].action[=].relatedAction.extension.extension[+].url = "Code"
* action[=].action[=].relatedAction.extension.extension[=].valueCodeableConcept = $EPathLocalTaskCodeCS#31001368 "体温"
* action[=].action[=].relatedAction.extension.url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionTaskExtensions"
* action[=].action[=].relatedAction.actionId = "1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900032700-6.Task"
* action[=].action[=].relatedAction.relationship = #concurrent
* action[=].action[+].id = "1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900034300-7"
* action[=].action[=].extension.extension[0].url = "UnitCategory"
* action[=].action[=].extension.extension[=].valueCode = #assessment
* action[=].action[=].extension.extension[+].url = "ProperValue"
* action[=].action[=].extension.extension[=].valueString = "50～100"
* action[=].action[=].extension.url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionAssessmentActionExtensions"
* action[=].action[=].title = "脈拍数"
* action[=].action[=].code[0] = $EPathBOMAssessmentCategoryCS#19 "バイタルサイン"
* action[=].action[=].code[+] = $EPathBOMAssessmentCodeCS#1900034300 "脈拍数"
* action[=].action[=].relatedAction.extension.extension[0].url = "Category"
* action[=].action[=].relatedAction.extension.extension[=].valueCodeableConcept.text = "11"
* action[=].action[=].relatedAction.extension.extension[+].url = "Code"
* action[=].action[=].relatedAction.extension.extension[=].valueCodeableConcept = $EPathLocalTaskCodeCS#31001390 "脈拍数"
* action[=].action[=].relatedAction.extension.url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionTaskExtensions"
* action[=].action[=].relatedAction.actionId = "1a4e7b88-cdb0-4860-bda7-497e3dd864d0.1900034300-7.Task"
* action[=].action[=].relatedAction.relationship = #concurrent

Instance: EVT.4311234567.CN05I00511-0L.4
InstanceOf: PlanDefinition
Usage: #inline
* meta.lastUpdated = "2025-10-24T19:52:26.31+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionEvent"
* extension.extension[0].url = "UnitCategory"
* extension.extension[=].valueCode = #event
* extension.extension[+].url = "EventElapsedDays"
* extension.extension[=].valueString = "4"
* extension.url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionEventActionExtensions"
* url = "http://e-path.jp/fhir/ePath/PlanDifinition/EVT.4311234567.CN05I00511-0L.4"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/event-template-id"
* identifier.value = "CN05I00511-0L.4"
* identifier.assigner.identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no"
* identifier.assigner.identifier.value = "4311234567"
* identifier.assigner.display = "ePathテスト病院"
* title = "退院日"
* type = $plan-definition-type#clinical-protocol "Clinical Protocol"
* status = #active
