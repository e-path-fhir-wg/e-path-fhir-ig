Alias: $EPathCarePlanEPathApply = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanEPathApply
Alias: $JP_Organization = http://jpfhir.jp/fhir/core/StructureDefinition/JP_Organization
Alias: $EPathCarePlanEvent = http://e-path.jp/fhir/ePath/StructureDefinition/EPathCarePlanEvent
Alias: $JP_Patient = http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient

Profile: EPathQuestionnaireResponse
Parent: QuestionnaireResponse
Id: EPathQuestionnaireResponse
Title: "EPath QuestionnaireResponse"
Description: "入力フォーム回答（病日・イベント単位）"
* ^status = #active
* meta 1..
* meta.profile 1.. MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathQuestionnaireResponse|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathQuestionnaireResponse|x.y.z を設定する。"
* identifier 1.. MS
* identifier ^short = "リソースインスタンス識別子"
* identifier ^definition = "リソースインスタンス識別子"
* identifier.system 1..
* identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/quis-response-id" (exactly)
* identifier.system ^short = "固定値 http://e-path.jp/fhir/ePath/IdSystem/quis-response-id を設定する。"
* identifier.system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/quis-response-id を設定する。"
* identifier.value 1.. MS
* identifier.value ^short = "リソースインスタンス識別子、フォームの回答を一意に特定できる値を設定する。"
* identifier.value ^definition = "リソースインスタンス識別子、フォームの回答を一意に特定できる値を設定する。"
* basedOn only Reference(CarePlan)
* basedOn ^slicing.discriminator.type = #value
* basedOn ^slicing.discriminator.path = "identifier.system"
* basedOn ^slicing.rules = #open
* basedOn ^short = "ケアプランへの参照"
* basedOn contains
    ePathApply 0..1 MS and
    Event 0..1 MS
* basedOn[ePathApply] only Reference($EPathCarePlanEPathApply)
* basedOn[ePathApply] ^short = "適用後パスへの参照"
* basedOn[ePathApply] ^definition = "適用後パスへの参照を指定する。適用後パスデータとひもづけられるタイミングは任意とし、ひもづけられていない場合は設定する必要はない。"
* basedOn[ePathApply].identifier 1.. MS
* basedOn[ePathApply].identifier ^short = "適用時パス識別子"
* basedOn[ePathApply].identifier.system 1..
* basedOn[ePathApply].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id" (exactly)
* basedOn[ePathApply].identifier.value 1.. MS
* basedOn[ePathApply].identifier.assigner 1.. MS
* basedOn[ePathApply].identifier.assigner only Reference($JP_Organization)
* basedOn[ePathApply].identifier.assigner ^short = "医療機関情報"
* basedOn[ePathApply].identifier.assigner ^definition = "適用後パスを発行した医療機関情報を設定する。"
* basedOn[Event] only Reference($EPathCarePlanEvent)
* basedOn[Event] ^short = "病日・イベントへの参照"
* basedOn[Event] ^definition = "病日・イベントへの参照を設定する。適用後パスデータ、および病日・イベントとひもづけられるタイミングは任意とし、ひもづけられていない場合は設定する必要はない。"
* basedOn[Event].identifier 1.. MS
* basedOn[Event].identifier ^short = "病日・イベント情報のリソースインスタンス識別子"
* basedOn[Event].identifier.system 1..
* basedOn[Event].identifier.system = "http://e-path.jp/fhir/ePath/IdSystem/event-id" (exactly)
* basedOn[Event].identifier.value 1.. MS
* questionnaire MS
* questionnaire ^short = "入力フォーム定義の正規URL"
* questionnaire ^definition = "入力フォーム定義の正規URL"
* status MS
* subject 1.. MS
* subject only Reference($JP_Patient)
* subject ^short = "主題への参照"
* subject ^definition = "PHRなどを利用する患者への参照を設定する。"
* subject.identifier MS
* subject.identifier ^short = "識別子"
* subject.identifier ^definition = "施設内患者IDなど患者の識別子を指定する。"
* subject.identifier.system 1.. MS
* subject.identifier.system ^definition = "ex. urn:oid:1.2.392.100495.20.3.51.1.医療機関コード"
* subject.identifier.value 1.. MS
* authored 1.. MS
* authored ^short = "回答を記録した日付を設定する。"
* authored ^definition = "回答を記録した日付を設定する。"
* author 1.. MS
* author ^short = "フォームの記録者情報を設定する。"
* author ^definition = "フォームの記録者情報を設定する。システムへの記録者を表し、回答者と同じになるとは限らない。"
* source 1.. MS
* source ^short = "フォームの回答者情報を設定する。"
* source ^definition = "フォームの回答者情報を設定する。"
* source.type MS
* source.type ^short = "回答者のリソース種別"
* source.identifier MS
* source.identifier ^short = "回答者識別子"
* item MS
* item ^short = "入力コントロール 入力値"
* item ^definition = "1階層目にOATユニット、2階層目を観察項目の内容を設定する。"
* item.linkId MS
* item.linkId ^short = "OATユニット識別子[-リピート番号]、観察項目識別子を半角ピリオド\".\"で連結したものを設定する。観察項目識別子は観察項目レベルで一意の識別子を設定すること。"
* item.linkId ^definition = "OATユニット識別子[-リピート番号]、観察項目識別子を半角ピリオド\".\"で連結したものを設定する。観察項目識別子は観察項目レベルで一意の識別子を設定すること。"
* item.text ^short = "質問の内容（観察項目コード表記）"
* item.text ^definition = "質問の内容（観察項目コード表記）"
* item.answer MS
* item.answer ^short = "入力フォームの回答"
* item.answer ^definition = "入力フォームの回答"