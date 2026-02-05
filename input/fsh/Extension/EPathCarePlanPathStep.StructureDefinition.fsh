Extension: EPathCarePlanPathStep
Id: EPathCarePlanPathStep
Title: "EPath CarePlan PathStep"
Description: "パスステップにおける回数目"
Context: CarePlan
* value[x] 1..
* value[x] only integer
* value[x] ^short = "パスステップにおける回数目"
* value[x] ^definition = "パスステップにおける回数目。1から始まるステップの回数目となる数値を設定する。"