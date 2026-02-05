Alias: $organization-type = http://terminology.hl7.org/CodeSystem/organization-type
Alias: $EPathYNIdentificationCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathYNIdentificationCS

Instance: Bundle.EP22.Sample
InstanceOf: Bundle
Usage: #example
Description: "入力フォーム回答の返信バンドル"
* meta.lastUpdated = "2025-01-01T17:30:00.446+09:00"
* meta.source = "http://phr-system-test.jp"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathBundleMessageEP22"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/ep22-bundle-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.phr.1.QUIS-RES"
* type = #collection
* timestamp = "2025-01-01T17:30:00.446+09:00"
* entry[0].fullUrl = "urn:uuid:c73a182c-b1a9-4b43-a238-f0bd98a1478d"
* entry[=].resource = Inline-Instance-for-Bundle.EP22.Sample-1
* entry[+].fullUrl = "urn:uuid:4e457c92-d0d9-4893-a916-e3329472156b"
* entry[=].resource = Inline-Instance-for-Bundle.EP22.Sample-2
* entry[+].fullUrl = "urn:uuid:feea15e5-f8b6-4bdd-a98e-32df32fccf4a"
* entry[=].resource = QUIS-RES.4311234567.phr.1

Instance: Inline-Instance-for-Bundle.EP22.Sample-1
InstanceOf: Organization
Usage: #inline
* meta.lastUpdated = "2025-01-01T17:30:00.446+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathOrganization"
* identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no"
* identifier.value = "4311234567"
* type = $organization-type#prov
* name = "ePathテスト病院"

Instance: Inline-Instance-for-Bundle.EP22.Sample-2
InstanceOf: Patient
Usage: #inline
* meta.lastUpdated = "2025-01-01T17:30:00.446+09:00"
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
* managingOrganization = Reference(urn:uuid:c73a182c-b1a9-4b43-a238-f0bd98a1478d)

Instance: QUIS-RES.4311234567.phr.1
InstanceOf: QuestionnaireResponse
Usage: #inline
Description: "入力フォームの回答"
* meta.lastUpdated = "2025-01-01T17:30:00.446+09:00"
* meta.profile = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathQuestionnaireResponse"
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/quis-response-id"
* identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.phr.1.QUIS-RES"
* basedOn[0].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id"
* basedOn[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00"
* basedOn[=].identifier.assigner.identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no"
* basedOn[=].identifier.assigner.identifier.value = "4311234567"
* basedOn[=].identifier.assigner.display = "ePathテスト病院"
* basedOn[=].display = "PCI（2泊3日）NP Local"
* basedOn[+].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/event-id"
* basedOn[=].identifier.value = "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1"
* basedOn[=].display = "入院日"
* questionnaire = "http://e-path.jp/fhir/ePath/Questionnaire/QUIS.4311234567.phr.1"
* status = #completed
* subject = Reference(urn:uuid:4e457c92-d0d9-4893-a916-e3329472156b)
* author = Reference(urn:uuid:4e457c92-d0d9-4893-a916-e3329472156b)
* authored = "2025-01-01T17:30:00+09:00"
* source = Reference(urn:uuid:4e457c92-d0d9-4893-a916-e3329472156b)
* item[0].linkId = "OAT0-00-00000132-00000132-MID"
* item[=].text = "食事管理ができている（炭水化物）"
* item[=].item[0].linkId = "OAT0-00-00000132-00000132-MID.9990000100"
* item[=].item[=].text = "今日、ご飯のおかわりやラーメン・うどんを大盛りにしましたか"
* item[=].item[=].answer.valueCoding = $EPathYNIdentificationCS#Y "Yes"
* item[=].item[+].linkId = "OAT0-00-00000132-00000132-MID.9990000200"
* item[=].item[=].text = "今日、1食の食パンは1枚、ロールパンは2個以下にしましたか"
* item[=].item[=].answer.valueCoding = $EPathYNIdentificationCS#N "No"
* item[=].item[+].linkId = "OAT0-00-00000132-00000132-MID.9990000300"
* item[=].item[=].text = "今日、腹八分目にしましたか"
* item[=].item[=].answer.valueCoding = $EPathYNIdentificationCS#Y "Yes"
* item[=].item[+].linkId = "OAT0-00-00000132-00000132-MID.9990000400"
* item[=].item[=].text = "今日、果物は食べすぎませんでしたか（1日リンゴ半分、バナナ中1個、柿1個、みかん2個、いちご12粒以下）"
* item[=].item[=].answer.valueCoding = $EPathYNIdentificationCS#Y "Yes"
* item[+].linkId = "OAT0-00-00000132-00000132-DAY"
* item[=].text = "食事管理ができている（炭水化物）"
* item[=].item[0].linkId = "OAT0-00-00000132-00000132-DAY.9990000100"
* item[=].item[=].text = "今日、ご飯のおかわりやラーメン・うどんを大盛りにしましたか"
* item[=].item[=].answer.valueCoding = $EPathYNIdentificationCS#Y "Yes"
* item[=].item[+].linkId = "OAT0-00-00000132-00000132-DAY.9990000200"
* item[=].item[=].text = "今日、1食の食パンは1枚、ロールパンは2個以下にしましたか"
* item[=].item[=].answer.valueCoding = $EPathYNIdentificationCS#Y "Yes"
* item[=].item[+].linkId = "OAT0-00-00000132-00000132-DAY.9990000300"
* item[=].item[=].text = "今日、腹八分目にしましたか"
* item[=].item[=].answer.valueCoding = $EPathYNIdentificationCS#Y "Yes"
* item[=].item[+].linkId = "OAT0-00-00000132-00000132-DAY.9990000400"
* item[=].item[=].text = "今日、果物は食べすぎませんでしたか（1日リンゴ半分、バナナ中1個、柿1個、みかん2個、いちご12粒以下）"
* item[=].item[=].answer.valueCoding = $EPathYNIdentificationCS#Y "Yes"