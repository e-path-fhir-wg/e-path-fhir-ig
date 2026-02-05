Alias: $EPathPractitioner = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner
Alias: $EPathPractitionerRole = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitionerRole
Alias: $EPathProcedureTaskPlannedDateTime = http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureTaskPlannedDateTime
Alias: $JP_Patient = http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient
Alias: $EPathTaskCategoryVS = http://e-path.jp/fhir/ePath/ValueSet/EPathTaskCategoryVS

Profile: EPathProcedureTask
Parent: Procedure
Id: EPathProcedureTask
Title: "EPath Procedure Task"
Description: "タスク"
* ^url = "http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureTask"
* ^status = #active
* ^purpose = "FHIRのTaskは1つのステップを表すが、ePathのタスクは複数のステップが含まれる可能性があるため、Procedureを採用する。"
* meta 1..
* meta.profile 1.. MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureTask|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureTask|x.y.z を設定する。"
* contained ^slicing.discriminator.type = #profile
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #open
* contained contains
    author 0..* MS and
    authorJob 0..* MS
* contained[author] only $EPathPractitioner
* contained[author] ^short = "実施者"
* contained[author] ^definition = "実施者"
* contained[authorJob] only $EPathPractitionerRole
* contained[authorJob] ^short = "実施者職種"
* contained[authorJob] ^definition = "実施者職種"
* extension contains $EPathProcedureTaskPlannedDateTime named ePathProcedureTaskPlannedDateTime 0..1
* extension[ePathProcedureTaskPlannedDateTime] ^short = "予定日時"
* extension[ePathProcedureTaskPlannedDateTime] ^definition = "予定日時"
* extension[ePathProcedureTaskPlannedDateTime] ^isModifier = false
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains taskId 1..1 MS
* identifier[taskId] ^short = "リソース一意識別子（タスク）"
* identifier[taskId] ^definition = "リソース一意識別子（タスク）"
* identifier[taskId].system 1.. MS
* identifier[taskId].system = "http://e-path.jp/fhir/ePath/IdSystem/task-id" (exactly)
* identifier[taskId].value 1.. MS
* identifier[taskId].value ^definition = "医療機関コード、適用時パス識別子、病日[-パスステップ]、OATユニット識別子[-リピート番号]、タスク識別子を半角ピリオド\".\"で連結したものを設定する。"
* status MS
* status ^short = "preparation | completed"
* status ^definition = "completed : 実施、preparation : 未実施"
* category 1.. MS
* category from $EPathTaskCategoryVS (preferred)
* category ^short = "タスク分類"
* category.coding ^short = "タスク分類"
* category.coding ^definition = "タスクのカテゴリを識別するコード。"
* category.coding.system 1.. MS
* category.coding.code 1.. MS
* category.text 1.. MS
* code 1.. MS
* code ^short = "タスクを識別するコード・名称"
* code ^definition = "タスクを識別するコード・名称\r\n本バージョン時点において標準または統一されたコード体系が定まっていないことから、施設等のローカル内でタスクを識別するコード・名称を定め、ローカルのコード体系で設定する。"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains localTaskCode 0..*
* code.coding[localTaskCode] ^short = "タスクコード・名称"
* code.coding[localTaskCode] ^definition = "タスクコード・名称"
* code.coding[localTaskCode].system 1..
* code.coding[localTaskCode].system = "http://e-path.jp/fhir/ePath/CodeSystem/EPathLocalTaskCodeCS" (exactly)
* code.coding[localTaskCode].code 1.. MS
* code.coding[localTaskCode].display 1.. MS
* code.text 1.. MS
* code.text ^short = "タスク名称"
* code.text ^definition = "タスク名称"
* subject only Reference($JP_Patient)
* subject MS
* subject ^short = "パスを適用する患者リソース（Patient）への参照"
* subject ^definition = "パスを適用する患者リソース（Patient）への参照"
* performed[x] only dateTime
* performed[x] ^short = "実施日時"
* performer MS
* performer ^short = "実施者、実施者職種"
* performer ^definition = "実施者、実施者職種"
* performer.actor only Reference($EPathPractitioner or $EPathPractitionerRole)
* performer.actor ^short = "実施者（Practitioner）、実施者職種（PractitionerRole）への参照"
* performer.actor ^definition = "実施者（Practitioner）、実施者職種（PractitionerRole）への参照"
* performer.actor ^mustSupport = false
* performer.actor.type 1..
* performer.actor.display 1.. MS
* performer.actor.display ^short = "実施者名"