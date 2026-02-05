CodeSystem: EPathPathStatusTypeCS
Id: EPathPathStatusTypeCS
Title: "EPath PathStatusType CS"
Description: "パス状態区分"
* ^identifier.system = "urn:ietf:rfc:3986"
* ^identifier.value = "urn:oid:1.2.392.200250.2.2.50.20"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-10-24"
* ^publisher = "ePath Project"
* ^contact.name = "ePath Project"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://e-path.jp"
* ^jurisdiction = urn:iso:std:iso:3166#JP
* ^caseSensitive = true
* ^content = #complete
* #01 "EP01" "疾患別のミニマム要件を定義したひな型となるパス"
* #01 ^designation.language = #ja
* #01 ^designation.value = "ひな型パス"
* #02 "EP02" "共通のひな型を当該施設用に調整した患者適用前の状態"
* #02 ^designation.language = #ja
* #02 ^designation.value = "施設パス"
* #12 "EP12" "患者の実施・結果・評価を記述した状態"
* #12 ^designation.language = #ja
* #12 ^designation.value = "適用後パス"
* #22 "EP22" "適用後パスにひもづいた入力フォームの回答を受信した状態"
* #22 ^designation.language = #ja
* #22 ^designation.value = "入力フォーム回答"