Alias: $EPathUnitCategoryVS = http://e-path.jp/fhir/ePath/ValueSet/EPathUnitCategoryVS

Extension: EPathPlanDefinitionOATUnitActionExtensions
Id: EPathPlanDefinitionOATUnitActionExtensions
Title: "EPath PlanDefinition OATUnitActionExtensions"
Description: "治療計画定義 OATユニット項目拡張"
Context: PlanDefinition.action
* . ^short = "治療計画定義 OATユニット項目拡張"
* . ^definition = "PlanDefinition.actionの2階層目を拡張し、OATユニット、アウトカムの項目を定義します。"
* extension contains
    UnitCategory 1..1 and
    OATUnitIdentifier 0..1 and
    StatusTypeWhenOccured 0..1 and
    UnplannedKind 0..1 and
    CriticalIndicator 0..1
* extension[UnitCategory].value[x] 1..
* extension[UnitCategory].value[x] only code
* extension[UnitCategory].value[x] = #oat-unit (exactly)
* extension[UnitCategory].value[x] from $EPathUnitCategoryVS (required)
* extension[UnitCategory].value[x] ^binding.description = "ePathデータ構造単位分"
* extension[OATUnitIdentifier] ^short = "2階層目：OATユニット識別子"
* extension[OATUnitIdentifier].value[x] 1..
* extension[OATUnitIdentifier].value[x] only string
* extension[StatusTypeWhenOccured] ^short = "2階層目：発生時パス状態区分"
* extension[StatusTypeWhenOccured].value[x] 1..
* extension[StatusTypeWhenOccured].value[x] only code
* extension[UnplannedKind] ^short = "2階層目：予約外区分"
* extension[UnplannedKind].value[x] 1..
* extension[UnplannedKind].value[x] only code
* extension[CriticalIndicator] ^short = "2階層目：クリティカル・インディケーター"
* extension[CriticalIndicator].value[x] 1..
* extension[CriticalIndicator].value[x] only code