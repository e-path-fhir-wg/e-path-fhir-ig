Extension: EPathCarePlanPathStepInpatientOutpatientType
Id: EPathCarePlanPathStepInpatientOutpatientType
Title: "EPath CarePlan PathStepInpatientOutpatientType"
Description: "パスステップ入外区分"
Context: CarePlan
* value[x] 1..
* value[x] only code
* value[x] ^short = "入外区分"
* value[x] ^definition = "パスステップにおける患者の入院・外来を表す区分。\r\n付録1. コード一覧「入外区分」より設定する。\r\n例）I：入院、O：外来"