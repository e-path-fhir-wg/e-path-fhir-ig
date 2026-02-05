Alias: $EPathAllowableElapsedDaysConditionTypeVS = http://e-path.jp/fhir/ePath/ValueSet/EPathAllowableElapsedDaysConditionTypeVS

Extension: EPathCarePlanAllowableElapsedDaysConditionType
Id: EPathCarePlanAllowableElapsedDaysConditionType
Title: "EPath CarePlan AllowableElapsedDaysConditionType"
Description: "許容経過日数条件起点日種別"
Context: CarePlan
* value[x] 1..
* value[x] only code
* value[x] from $EPathAllowableElapsedDaysConditionTypeVS (required)
* value[x] ^short = "起点日種別"
* value[x] ^definition = "起点となる日の種別。\r\n1:前回イベント\r\n2:適用開始日（パス開始日）\r\n3:指定日付\r\n種別が3:指定日付のケースにおいて、パス状態が「適用後」の場合は指定起点日の設定値が起点日を表し、パス状態が「疾患別」または「施設別」の場合は起点となる日をパス開始日から指定起点病日の経過日で求める形で表現する。"