Alias: $EPathPathStatusTypeVS = http://e-path.jp/fhir/ePath/ValueSet/EPathPathStatusTypeVS

Extension: EPathCarePlanStatusTypeWhenOccured
Id: EPathCarePlanStatusTypeWhenOccured
Title: "EPath CarePlan StatusTypeWhenOccured"
Description: "発生時パス状態区分"
Context: CarePlan
* value[x] 1..
* value[x] only code
* value[x] from $EPathPathStatusTypeVS (required)
* value[x] ^short = "発生時パス状態区分"
* value[x] ^definition = "当該OATユニットの要素が新規に記述された際のパス状態区分\r\n付録1. コード一覧「パス状態区分」より設定する。\r\n例）01：ひな型パス、02：施設パス、12：適用後パス"
* value[x] ^binding.description = "パス状態区分"