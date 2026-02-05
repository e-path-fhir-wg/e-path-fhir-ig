Alias: $EPathCarePlanAdaptiveCriteriaConfirmationVS = http://e-path.jp/fhir/ePath/ValueSet/EPathCarePlanAdaptiveCriteriaConfirmationVS

Extension: EPathCarePlanAdaptiveCriteriaConfirmation
Id: EPathCarePlanAdaptiveCriteriaConfirmation
Title: "EPath CarePlan AdaptiveCriteriaConfirmation"
Description: "適応基準確認区分"
Context: CarePlan
* value[x] 1..
* value[x] only code
* value[x] from $EPathCarePlanAdaptiveCriteriaConfirmationVS (required)
* value[x] ^short = "確認区分"
* value[x] ^definition = "1：適応基準を確認"