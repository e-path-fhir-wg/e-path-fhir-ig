Extension: EPathProcedureTaskPlannedDateTime
Id: EPathProcedureTaskPlannedDateTime
Title: "EPath Procedure TaskPlannedDateTime"
Description: "タスク予定日時"
Context: Procedure
* value[x] 1..
* value[x] only date or dateTime
* value[x] ^short = "予定日時"
* value[x] ^definition = "予定日時、時刻を設定できない場合は省略してもよい。"