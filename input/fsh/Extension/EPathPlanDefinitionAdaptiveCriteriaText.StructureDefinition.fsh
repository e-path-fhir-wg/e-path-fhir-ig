Extension: EPathPlanDefinitionAdaptiveCriteriaText
Id: EPathPlanDefinitionAdaptiveCriteriaText
Title: "EPath PlanDefinition AdaptiveCriteriaText"
Description: "適応基準テキスト（ひな型）"
Context: PlanDefinition
* value[x] 1..
* value[x] only string
* value[x] ^short = "テキスト"
* value[x] ^definition = "適応基準の内容。複数の要素で構成される基準であってもテキスト1文で表記する。"