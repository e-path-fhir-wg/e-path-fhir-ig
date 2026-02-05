Alias: $EPathPlanDefinitionAdaptiveCriteriaText = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionAdaptiveCriteriaText
Alias: $EPathPlanDefinitionScheduledDays = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionScheduledDays
Alias: $EPathPlanDefinitionEvent = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionEvent
Alias: $EPathQuestionnaire = http://e-path.jp/fhir/ePath/StructureDefinition/EPathQuestionnaire
Alias: $master-disease-keyNumberVS = http://medis.or.jp/ValueSet/master-disease-keyNumber
Alias: $ICD10-2013-fullVS = http://jpfhir.jp/fhir/core/mhlw/ValueSet/ICD10-2013-full

Profile: EPathPlanDefinitionEP01
Parent: PlanDefinition
Id: EPathPlanDefinitionEP01
Title: "EPath PlanDefinition EP01"
Description: "ひな型パス定義"
* ^status = #active
* meta 1..
* meta.profile 1.. MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionEP01|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionEP01|x.y.z を設定する。"
* extension contains
    $EPathPlanDefinitionAdaptiveCriteriaText named ePathPlanDefinitionAdaptiveCriteriaText 1..1 MS and
    $EPathPlanDefinitionScheduledDays named ePathPlanDefinitionScheduledDays 0..1
* extension[ePathPlanDefinitionAdaptiveCriteriaText] ^short = "適応基準テキスト"
* extension[ePathPlanDefinitionAdaptiveCriteriaText] ^isModifier = false
* extension[ePathPlanDefinitionScheduledDays] ^short = "パス予定日数"
* extension[ePathPlanDefinitionScheduledDays] ^definition = "パス予定日数"
* extension[ePathPlanDefinitionScheduledDays] ^isModifier = false
* url 1.. MS
* url ^short = "ベースURL/PlanDefinition/EP01.ひな型パス識別を設定する。"
* url ^definition = "ベースURL/PlanDefinition/EP01.ひな型パス識別を設定する。token型で許容される値を用いること。\r\n例）http://e-path.jp/fhir/ePath/PlanDefinition/EP01.CN05I00511-0"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains ePathIdentificationStandard 1..1 MS
* identifier[ePathIdentificationStandard] ^short = "パス識別（ひな型パス識別）"
* identifier[ePathIdentificationStandard] ^definition = "パス識別（ひな型パス識別）疾病別ひな型パスを識別するコード、付録1. コード一覧「標準クリニカルパスコード」より設定する。\r\nパスコード・名称・コード体系は、コード一覧「標準クリニカルパスコード」を要素繰り返しの1番目に設定することを必須とし、さらに状態が施設パスとなった以降は、2番目に施設等のローカル内で定めたローカルコード・名称・コード体系を設定することを必須とする。\r\n"
* identifier[ePathIdentificationStandard].system 1..
* identifier[ePathIdentificationStandard].system = "http://e-path.jp/fhir/ePath/IdSystem/standard-path-id" (exactly)
* identifier[ePathIdentificationStandard].system ^short = "固定値 http://e-path.jp/fhir/ePath/IdSystem/standard-path-idを設定する。"
* identifier[ePathIdentificationStandard].system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/standard-path-id を設定する。注）ePathMassege XML では urn:oid:1.2.392.200250.2.2.50.10 が設定されていた。"
* identifier[ePathIdentificationStandard].system ^mustSupport = false
* identifier[ePathIdentificationStandard].value 1.. MS
* identifier[ePathIdentificationStandard].value ^short = "標準クリニカルパスコード"
* identifier[ePathIdentificationStandard].value ^definition = "標準クリニカルパスコード"
* version ^short = "ひな型パスバージョン"
* version ^definition = "ひな型パスのバージョン。X.Yの形式で表す (Xはメジャーバージョン、Yはマイナーバージョン）。マイナーバージョンを表す「.Y」部分は省略してもよい。\r\n当メッセージの「パス状態区分」が「01：ひな型パス」の場合、自身のひな型のバージョンを、それ以外の場合は、継承元のひな型パスのバージョンを設定する。設定値はひな型の管理者が改訂に従い定めること。"
* title 1.. MS
* title ^short = "ひな型パス名称"
* title ^definition = "ひな型パス名称"
* goal MS
* goal.addresses MS
* goal.addresses ^short = "病名"
* goal.addresses.coding from $master-disease-keyNumberVS (example)
* goal.addresses.coding ^slicing.discriminator.type = #value
* goal.addresses.coding ^slicing.discriminator.path = "system"
* goal.addresses.coding ^slicing.rules = #open
* goal.addresses.coding contains
    masterDiseaseKeyNumber 0..* and
    ICD10-2013-full 0..*
* goal.addresses.coding[masterDiseaseKeyNumber] from $master-disease-keyNumberVS (preferred)
* goal.addresses.coding[masterDiseaseKeyNumber] ^short = "MEDIS ICD10対応標準病名マスター(管理番号)"
* goal.addresses.coding[masterDiseaseKeyNumber] ^definition = "MEDIS ICD10対応標準病名マスター(管理番号)"
* goal.addresses.coding[masterDiseaseKeyNumber].system 1..
* goal.addresses.coding[masterDiseaseKeyNumber].system = "http://medis.or.jp/CodeSystem/master-disease-keyNumber" (exactly)
* goal.addresses.coding[masterDiseaseKeyNumber].code 1.. MS
* goal.addresses.coding[masterDiseaseKeyNumber].display 1.. MS
* goal.addresses.coding[ICD10-2013-full] from $ICD10-2013-fullVS (preferred)
* goal.addresses.coding[ICD10-2013-full] ^short = "MHLW 厚生労働省ICD102013版"
* goal.addresses.coding[ICD10-2013-full] ^definition = "MHLW 厚生労働省ICD102013版"
* goal.addresses.coding[ICD10-2013-full].system 1..
* goal.addresses.coding[ICD10-2013-full].system = "http://jpfhir.jp/fhir/core/mhlw/CodeSystem/ICD10-2013-full" (exactly)
* goal.addresses.coding[ICD10-2013-full].code 1.. MS
* goal.addresses.coding[ICD10-2013-full].display 1.. MS
* action MS
* action ^short = "病日・イベント情報"
* action ^definition = "1階層目に病日・イベントを設定する。OATユニット、観察項目はひな型・施設パス 病日・イベント情報（EPathPlanDefinitionEvent）に設定し、definition[x]から参照する。ePathメッセージ構造における繰り返し回数は最小1であるが、適用後パスバンドルに格納する際に省略できるよう最小0とした。"
* action.id 1.. MS
* action.id ^short = "病日[-パスステップ]を設定する。"
* action.id ^definition = "病日[-パスステップ]を設定する。"
* action.title 1.. MS
* action.title ^short = "病日、またはイベント名称"
* action.title ^definition = "病日、またはイベント名称"
* action.timing[x] ^slicing.discriminator.type = #type
* action.timing[x] ^slicing.discriminator.path = "$this"
* action.timing[x] ^slicing.rules = #open
* action.timing[x] ^short = "フォーム（Questionnaire）などを入力するタイミングを設定する。"
* action.timing[x] ^definition = "フォーム（Questionnaire）などを入力するタイミングを設定する。"
* action.timingTiming only Timing
* action.timingTiming ^sliceName = "timingTiming"
* action.timingTiming.repeat MS
* action.timingTiming.repeat ^short = "繰り返しの定義。例えば、「月水金」や「X年Y月Z日からX年Y月Z日まで」など。id（病日[-パスステップ]）で表現できる場合は設定しなくてもよい。"
* action.timingTiming.repeat ^definition = "繰り返しの定義。例えば、「月水金」や「X年Y月Z日からX年Y月Z日まで」など。id（病日[-パスステップ]）で表現できる場合は設定しなくてもよい。"
* action.definition[x] only uri or Canonical($EPathPlanDefinitionEvent or $EPathQuestionnaire)
* action.definition[x] MS
* action.definition[x] ^short = "イベント（EPathPlanDefinitionEvent）、質問（EPathQuestionnaire）への正規URLを指定する。"
* action.definition[x] ^definition = "イベント（EPathPlanDefinitionEvent）、質問（EPathQuestionnaire）への正規URLを指定する。"