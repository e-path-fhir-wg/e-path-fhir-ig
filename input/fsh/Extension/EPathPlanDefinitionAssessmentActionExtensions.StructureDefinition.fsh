Alias: $EPathUnitCategoryVS = http://e-path.jp/fhir/ePath/ValueSet/EPathUnitCategoryVS

Extension: EPathPlanDefinitionAssessmentActionExtensions
Id: EPathPlanDefinitionAssessmentActionExtensions
Title: "EPath PlanDefinition AssessmentActionExtensions"
Description: "治療計画定義 観察項目ユニット項目拡張"
Context: PlanDefinition.action.action
* . ^short = "観察項目ユニット項目拡張"
* . ^definition = "PlanDefinition.actionの3階層目を拡張し、観察項目の項目を定義します。"
* extension contains
    UnitCategory 1..1 and
    ProperValue 0..1
* extension[UnitCategory].value[x] 1..
* extension[UnitCategory].value[x] only code
* extension[UnitCategory].value[x] = #assessment (exactly)
* extension[UnitCategory].value[x] from $EPathUnitCategoryVS (required)
* extension[UnitCategory].value[x] ^binding.description = "ePathデータ構造単位分"
* extension[ProperValue] ^short = "観察項目の評価基準となる適正値"
* extension[ProperValue] ^definition  = "観察項目の評価基準となる適正値"
* extension[ProperValue].value[x] 1..
* extension[ProperValue].value[x] only string