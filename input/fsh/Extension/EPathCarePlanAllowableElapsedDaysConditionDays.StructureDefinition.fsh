Extension: EPathCarePlanAllowableElapsedDaysConditionDays
Id: EPathCarePlanAllowableElapsedDaysConditionDays
Title: "EPath CarePlan AllowableElapsedDaysConditionDays"
Description: "許容経過日数条件指定起点病日"
Context: CarePlan
* value[x] 1..
* value[x] only integer
* value[x] ^short = "病日"
* value[x] ^definition = "起点日種別が3:指定日付の場合に、起点となる日をパス開始日からの病日で設定する。"