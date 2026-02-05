Alias: $EPathPathClosingTypeVS = http://e-path.jp/fhir/ePath/ValueSet/EPathPathClosingTypeVS

Extension: EPathGoalStatusReason
Id: EPathGoalStatusReason
Title: "EPath Goal StatusReason"
Description: "パス中止理由"
Context: Goal
* value[x] 1..
* value[x] only CodeableConcept
* value[x] ^short = "パス中止理由"
* value[x] ^definition = "パスを中止した際の中止理由コードおよび名称。パス終了区分が「2:中止」の場合のみ設定する。コード、名称の設定値は利用施設・運用主体等で定め、これに則り設定する。"
* value[x].coding from $EPathPathClosingTypeVS (example)
* value[x].coding ^binding.description = "パス終了区分"
* value[x].coding.system 1..
* value[x].coding.code 1..
* value[x].text ^short = "フリーテキスト"