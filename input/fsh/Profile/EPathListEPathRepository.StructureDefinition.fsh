Alias: $EPathListPathCode = http://e-path.jp/fhir/ePath/StructureDefinition/EPathListPathCode
Alias: $JP_Patient = http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient
Alias: $EPathUsesTypeVS = http://e-path.jp/fhir/ePath/ValueSet/EPathUsesTypeVS

Profile: EPathListEPathRepository
Parent: List
Id: EPathListEPathRepository
Title: "EPath List EPathRepository"
Description: "適用後パスデータリスト"
* ^status = #active
* ^purpose = "病日ごとに分割した適用後パスデータバンドルをグルーピングするために使用する。FHIRリポジトリに適用後パスデータバンドルを格納する際のインデックスデータを目的としており、単純なデータ交換においては作成する必要はない。"
* . ^short = "適用後パスデータリスト"
* . ^definition = "病日・イベント情報単位で分割された適用後パスデータや適用後パスにひもづく入力フォームへの参照を設定する。"
* meta.profile 1.. MS
* meta.profile ^short = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathListEPathRepository|x.y.z を設定する。"
* meta.profile ^definition = "本プロファイルを識別するURLとバージョンを指定する。http://e-path.jp/fhir/ePath/StructureDefinition/EPathListEPathRepository|x.y.z を設定する。"
* extension contains $EPathListPathCode named ePathListPathCode 1..* MS
* extension[ePathListPathCode] ^short = "ひな型パスの正規URL"
* extension[ePathListPathCode] ^definition = "ひな型パスの正規URL"
* extension[ePathListPathCode] ^isModifier = false
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains applyId 1..1 MS
* identifier[applyId] ^short = "適用時パス識別子"
* identifier[applyId].system 1.. MS
* identifier[applyId].system = "http://e-path.jp/fhir/ePath/IdSystem/apply-id" (exactly)
* identifier[applyId].value 1.. MS
* identifier[applyId].value ^short = "医療機関コード、適用時パス識別子を半角ピリオド\".\"で連結したものを設定する。"
* identifier[applyId].value ^definition = "医療機関コード、適用時パス識別子を半角ピリオド\".\"で連結したものを設定する。"
* status MS
* status ^definition = "通常、current を指定する。"
* mode MS
* mode ^definition = "通常、workingを指定する。"
* title 1.. MS
* title ^short = "施設パス名称"
* title ^definition = "施設パス名称"
* code MS
* code from $EPathUsesTypeVS (extensible)
* code ^short = "用途種別"
* code ^definition = "パスの代替用途の種別\r\nePathメッセージをワークシートとして用いる等、通常のクリニカルパスと区別する必要がある場合に代替体用途である識別としての種別を設定する。\r\n設定値は利用施設・運用主体等で定めたルールに則る。通常のクリニカルパスの場合はePathを設定する。"
* code.coding.system 1..
* code.coding.code 1.. MS
* subject 1.. MS
* subject only Reference($JP_Patient)
* subject ^short = "患者情報"
* subject.display ^short = "患者氏名"
* date 1.. MS
* date ^short = "パス適用開始日"
* date ^definition = "パス適用開始日"
* entry 1..
* entry.item only Reference(Bundle)
* entry.item ^short = "分割された適用後パスデータ（Bundle）の情報"
* entry.item ^definition = "分割された適用後パスデータ（Bundle）の情報"
* entry.item.reference MS
* entry.item.reference ^short = "ePathデータ構造 適用後パスデータ（Bundle）への参照"
* entry.item.reference ^definition = "ePathデータ構造 適用後パスデータ（Bundle）への参照"
* entry.item.type 1.. MS
* entry.item.type ^short = "リソース名"
* entry.item.display 1.. MS
* entry.item.display ^short = "表記"
* entry.item.display ^definition = "病日・イベント表記、入力フォーム名称などを設定する。"