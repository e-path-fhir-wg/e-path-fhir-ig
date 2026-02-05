Extension: EPathCarePlanEventElapsedDays
Id: EPathCarePlanEventElapsedDays
Title: "EPath CarePlan EventElapsedDays"
Description: "病日"
Context: CarePlan
* value[x] 1..
* value[x] only integer
* value[x] ^short = "病日"
* value[x] ^definition = "入院日から起算した当イベントの日数。当日が1から始まる日数。入院日より過去を示す場合は-1(入院日前日)からの負数で表す。（値0は存在しない）施設パスおよび適用後パス、適用後パスデータについては上記の通りであるが、ひな型パスについてはOATユニットが設定された最初の日を1とし、その日から始まる日数となる。\r\n外来のケースにおいては、パス実施期間．開始日時の日を起算日とした当日が１から始まる日数を設定する。過去を示す場合は-1(開始日時の前日)からの負数で表す。また、4週後など日数が明確でない場合においても日数に換算して設定する。（値0は存在しない）"