Extension: EPathCarePlanRepeatNo
Id: EPathCarePlanRepeatNo
Title: "EPath CarePlan RepeatNo"
Description: "リピート番号"
Context: CarePlan
* value[x] 1..
* value[x] only integer
* value[x] ^short = "リピート番号"
* value[x] ^definition = "イベント・病日の概念のないアウトカムを同一アウトカムでグループ化する場合の繰り返しの連番。または同一イベント内に同一アウトカムが複数ある場合の繰り返しの連番。\r\n・予定外区分(unscheduled)が「Y」の場合、全イベント内に存在する同一のアウトカムに対し各々1からの連番を重複がないよう設定する。\r\n・予定外区分(unscheduled)が「Y」でない場合、当該イベント内に存在する同一のアウトカムに対し各々1からの連番を重複がないよう設定する。\r\n当該メッセージを外部出力等により確定させた場合、以後の修正において当項目値の変更および当該OATユニットの削除を行わないこと。"