Extension: EPathCarePlanPathStepStartDate
Id: EPathCarePlanPathStepStartDate
Title: "EPath CarePlan PathStepStartDate"
Description: "パスステップ開始日"
Context: CarePlan
* value[x] 1..
* value[x] only date
* value[x] ^short = "開始日"
* value[x] ^definition = "同一ステップ回数目での起算日となる日付を設定する。"