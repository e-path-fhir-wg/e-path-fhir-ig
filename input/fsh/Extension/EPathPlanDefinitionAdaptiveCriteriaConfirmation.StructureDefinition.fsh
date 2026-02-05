Extension: EPathPlanDefinitionAdaptiveCriteriaConfirmation
Id: EPathPlanDefinitionAdaptiveCriteriaConfirmation
Title: "EPath PlanDefinition AdaptiveCriteriaConfirmation"
Description: "適応基準確認区分（ひな型）"
Context: PlanDefinition
* value[x] 1..
* value[x] only code
* value[x] ^short = "確認区分"
* value[x] ^definition = "1：適応基準を確認"