Extension: EPathPlanDefinitionScheduledDays
Id: EPathPlanDefinitionScheduledDays
Title: "EPath PlanDefinition ScheduledDays"
Description: "パス予定日数（ひな型）"
Context: PlanDefinition
* value[x] 1..
* value[x] only integer
* value[x] ^short = "パス予定日数"
* value[x] ^definition = "予定時のパス設定日数"