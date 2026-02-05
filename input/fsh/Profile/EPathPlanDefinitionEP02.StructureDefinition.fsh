Alias: $EPathPlanDefinitionProtocolBase = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionProtocolBase
Alias: $EPathPlanDefinitionAdaptiveCriteriaText = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionAdaptiveCriteriaText
Alias: $EPathPlanDefinitionScheduledDays = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionScheduledDays
Alias: $EPathPlanDefinitionClinicalDepartment = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionClinicalDepartment
Alias: $EPathPlanDefinitionEvent = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionEvent
Alias: $EPathQuestionnaire = http://e-path.jp/fhir/ePath/StructureDefinition/EPathQuestionnaire
Alias: $master-disease-keyNumberVS = http://medis.or.jp/ValueSet/master-disease-keyNumber
Alias: $ICD10-2013-fullVS = http://jpfhir.jp/fhir/core/mhlw/ValueSet/ICD10-2013-full

Profile: EPathPlanDefinitionEP02
Parent: PlanDefinition
Id: EPathPlanDefinitionEP02
Title: "EPath PlanDefinition EP02"
Description: "施設パス定義"
* ^status = #active
* meta 1..
* meta.profile 1.. MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionEP02|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathPlanDefinitionEP02|x.y.z を設定する。"
* extension contains
    $EPathPlanDefinitionProtocolBase named ePathPlanDefinitionProtocolBase 0..1 MS and
    $EPathPlanDefinitionAdaptiveCriteriaText named ePathPlanDefinitionAdaptiveCriteriaText 1..1 MS and
    $EPathPlanDefinitionScheduledDays named ePathPlanDefinitionScheduledDays 0..1 and
    $EPathPlanDefinitionClinicalDepartment named ePathPlanDefinitionClinicalDepartment 0..*
* extension[ePathPlanDefinitionProtocolBase] ^isModifier = false
* extension[ePathPlanDefinitionAdaptiveCriteriaText] ^short = "適応基準テキスト"
* extension[ePathPlanDefinitionAdaptiveCriteriaText] ^isModifier = false
* extension[ePathPlanDefinitionScheduledDays] ^short = "パス予定日数"
* extension[ePathPlanDefinitionScheduledDays] ^definition = "パス予定日数"
* extension[ePathPlanDefinitionScheduledDays] ^isModifier = false
* extension[ePathPlanDefinitionClinicalDepartment] ^isModifier = false
* url 1.. MS
* url ^short = "ベースURL/PlanDefinition/EP02.医療機関コード.施設パス識別を設定する。"
* url ^definition = "ベースURL/PlanDefinition/EP02.医療機関コード.施設パス識別を設定する。token型で許容される値を用いること。\\r\\n例）http://e-path.jp/fhir/ePath/PlanDefinition/EP02.2211234567.CN05I00511-L"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains ePathIdentificationFacility 1..1 MS
* identifier[ePathIdentificationFacility] ^short = "パス識別（ひな型パス識別）"
* identifier[ePathIdentificationFacility] ^definition = "パス識別（ひな型パス識別）疾病別ひな型パスを識別するコード、付録1. コード一覧「標準クリニカルパスコード」より設定する。\r\nパスコード・名称・コード体系は、コード一覧「標準クリニカルパスコード」を要素繰り返しの1番目に設定することを必須とし、さらに状態が施設パスとなった以降は、2番目に施設等のローカル内で定めたローカルコード・名称・コード体系を設定することを必須とする。\r\n"
* identifier[ePathIdentificationFacility].system 1..
* identifier[ePathIdentificationFacility].system = "http://e-path.jp/fhir/ePath/IdSystem/facility-path-id" (exactly)
* identifier[ePathIdentificationFacility].system ^short = "固定値 http://e-path.jp/fhir/ePath/IdSystem/facility-path-id を設定する。"
* identifier[ePathIdentificationFacility].system ^definition = "固定値 http://e-path.jp/fhir/ePath/IdSystem/facility-path-id を設定する。注）ePathMassege XML では urn:oid:1.2.392.200250.2.2.50.20 が設定されていた。"
* identifier[ePathIdentificationFacility].system ^mustSupport = false
* identifier[ePathIdentificationFacility].value 1.. MS
* identifier[ePathIdentificationFacility].value ^short = "施設（ローカル）パスコード"
* identifier[ePathIdentificationFacility].value ^definition = "施設（ローカル）パスコード"
* identifier[ePathIdentificationFacility].assigner 1.. MS
* identifier[ePathIdentificationFacility].assigner ^short = "施設パスを管理する医療機関情報（Organization）への参照"
* identifier[ePathIdentificationFacility].assigner ^definition = "施設パスを管理する医療機関情報（Organization）への参照"
* identifier[ePathIdentificationFacility].assigner.identifier 1.. MS
* identifier[ePathIdentificationFacility].assigner.identifier.system 1..
* identifier[ePathIdentificationFacility].assigner.identifier.system = "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no" (exactly)
* identifier[ePathIdentificationFacility].assigner.identifier.value 1.. MS
* version ^short = "施設パスのバージョン"
* version ^definition = "施設パスのバージョン。X.Yの形式で表す (Xはメジャーバージョン、Yはマイナーバージョン）。マイナーバージョンを表す「.Y」部分は省略してもよい。\\r\\n当メッセージの「パス状態区分」が「02：施設パス」の場合は、自身のバージョンを、それ以外の場合は継承元の施設パスのバージョンを設定する。設定値は施設パスの管理者が改訂に従い定めること。"
* title 1.. MS
* title ^short = "施設パス名称"
* title ^definition = "施設パス名称"
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
