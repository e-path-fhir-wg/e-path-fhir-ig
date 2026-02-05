Extension: EPathCarePlanAllowableElapsedDaysConditionDate
Id: EPathCarePlanAllowableElapsedDaysConditionDate
Title: "EPath CarePlan AllowableElapsedDaysConditionDate"
Description: "許容経過日数条件指定起点日"
Context: CarePlan
* value[x] 1..
* value[x] only date
* value[x] ^short = "起点日"
* value[x] ^definition = "起点日種別が3:指定日付の場合に指定する起点となる日を設定する。"