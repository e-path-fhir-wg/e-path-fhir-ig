Alias: $EPathUnitCategoryVS = http://e-path.jp/fhir/ePath/ValueSet/EPathUnitCategoryVS

Extension: EPathPlanDefinitionEventActionExtensions
Id: EPathPlanDefinitionEventActionExtensions
Title: "EPath PlanDefinition EventActionExtensions"
Description: "治療計画定義 病日・イベント項目拡張"
Context: PlanDefinition
* . ^short = "治療計画定義 病日・イベント項目拡張"
* . ^definition = "PlanDefinition.actionの1階層目を拡張し、病日・イベントの項目を定義します。"
* extension contains
    UnitCategory 1..1 and
    EventElapsedDays 0..1 and
    PathStep 0..1 and
    PathStepName 0..1 and
    InpatientOutpatientType 0..1 and
    AllowableElapsedDaysConditionType 0..1 and
    AllowableElapsedDaysConditionDays 0..1 and
    AllowableElapsedDaysConditionRangeHigh 0..1 and
    AllowableElapsedDaysConditionRangeLow 0..1
* extension[UnitCategory].value[x] 1..
* extension[UnitCategory].value[x] only code
* extension[UnitCategory].value[x] = #event (exactly)
* extension[UnitCategory].value[x] from $EPathUnitCategoryVS (required)
* extension[UnitCategory].value[x] ^binding.description = "ePathデータ構造単位分"
* extension[EventElapsedDays] ^short = "病日"
* extension[EventElapsedDays] ^definition = "入院日から起算した当イベントの日数。当日が1から始まる日数。入院日より過去を示す場合は-1(入院日前日)からの負数で表す。（値0は存在しない）施設パスおよび適用後パス、適用後パスデータについては上記の通りであるが、ひな型パスについてはOATユニットが設定された最初の日を1とし、その日から始まる日数となる。\r\n外来のケースにおいては、パス実施期間．開始日時の日を起算日とした当日が１から始まる日数を設定する。過去を示す場合は-1(開始日時の前日)からの負数で表す。また、4週後など日数が明確でない場合においても日数に換算して設定する。（値0は存在しない）"
* extension[EventElapsedDays].value[x] only string
* extension[PathStep] ^short = "1階層目：パスステップ回数目"
* extension[PathStep].value[x] only integer
* extension[PathStepName] ^short = "1階層目：パスステップ名称"
* extension[PathStepName].value[x] only string
* extension[InpatientOutpatientType] ^short = "1階層目：入外区分"
* extension[InpatientOutpatientType].value[x] 1..
* extension[InpatientOutpatientType].value[x] only code
* extension[AllowableElapsedDaysConditionType] ^short = "1階層目：許容経過日数条件 起点日種別"
* extension[AllowableElapsedDaysConditionType].value[x] 1..
* extension[AllowableElapsedDaysConditionType].value[x] only code
* extension[AllowableElapsedDaysConditionDays] ^short = "1階層目：許容経過日数条件 指定起点病日"
* extension[AllowableElapsedDaysConditionDays].value[x] 1..
* extension[AllowableElapsedDaysConditionDays].value[x] only string
* extension[AllowableElapsedDaysConditionRangeHigh] ^short = "1階層目：許容経過日数条件 指定許容日数期間 上限値"
* extension[AllowableElapsedDaysConditionRangeHigh].value[x] 1..
* extension[AllowableElapsedDaysConditionRangeHigh].value[x] only integer
* extension[AllowableElapsedDaysConditionRangeLow] ^short = "1階層目：許容経過日数条件 指定許容日数期間 下限値"
* extension[AllowableElapsedDaysConditionRangeLow].value[x] 1..
* extension[AllowableElapsedDaysConditionRangeLow].value[x] only integer