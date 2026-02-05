Alias: $EPathProcedureAdmissionMajorEventElapsedDays = http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureAdmissionMajorEventElapsedDays
Alias: $EPathProcedureAdmissionMajorEventDate = http://e-path.jp/fhir/ePath/StructureDefinition/EPathProcedureAdmissionMajorEventDate
Alias: $JP_Patient = http://jpfhir.jp/fhir/core/StructureDefinition/JP_Patient
Alias: $EPathPractitioner = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner
Alias: $EPathPractitionerRole = http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitionerRole

Profile: EPathProcedureMajorEvent
Parent: Procedure
Id: EPathProcedureMajorEvent
Title: "EPath Procedure MajorEvent"
Description: "主要イベント情報"
* ^status = #active
* meta 1..
* meta.profile 1.. MS
* extension contains
    $EPathProcedureAdmissionMajorEventElapsedDays named ePathProcedureAdmissionMajorEventElapsedDays 1..1 MS and
    $EPathProcedureAdmissionMajorEventDate named ePathProcedureAdmissionMajorEventDate 1..1 MS
* extension[ePathProcedureAdmissionMajorEventElapsedDays] ^short = "病日"
* extension[ePathProcedureAdmissionMajorEventElapsedDays] ^definition = "入院日から起算した当イベントの日数。当日が1から始まる日数。入院日より過去を示す場合は-1(入院日前日)からの負数で表す。（値0は存在しない）施設パスおよび適用後パス、適用後パスデータについては上記の通りであるが、ひな型パスについてはOATユニットが設定された最初の日を1とし、その日から始まる日数となる。\r\n外来のケースにおいては、パス実施期間．開始日時の日を起算日とした当日が１から始まる日数を設定する。過去を示す場合は-1(開始日時の前日)からの負数で表す。また、4週後など日数が明確でない場合においても日数に換算して設定する。（値0は存在しない）"
* extension[ePathProcedureAdmissionMajorEventElapsedDays] ^isModifier = false
* extension[ePathProcedureAdmissionMajorEventDate] ^short = "主要イベント日"
* extension[ePathProcedureAdmissionMajorEventDate] ^definition = "主要イベントの開始・終了時刻"
* extension[ePathProcedureAdmissionMajorEventDate] ^isModifier = false
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains resourceInstanceIdentifier 1..1 MS
* identifier[resourceInstanceIdentifier].system = "http://e-path.jp/fhir/ePath/IdSystem/resourceInstance-identifier" (exactly)
* identifier[resourceInstanceIdentifier].system MS
* identifier[resourceInstanceIdentifier].value 1.. MS
* status MS
* status ^definition = "設定できない場合は、completedを設定する。"
* category ^short = "診療区分"
* category ^definition = "（予約項目）\r\n処方、処置、手術等の診療を識別するコード・名称・コード体系"
* code MS
* code.text 1..
* code.text ^short = "イベント名称"
* code.text ^definition = "イベントに応じた術式・処置の名称"
* subject only Reference($JP_Patient)
* subject MS
* performed[x] only Period
* performed[x] ^short = "主要イベント時間"
* performed[x] ^definition = "主要イベントの開始・終了時刻"
* performed[x].start 1..
* performer ^short = "実施者・実施者職種"
* performer ^definition = "実施者・実施者職種"
* performer.actor only Reference($EPathPractitioner or $EPathPractitionerRole)
* performer.actor ^short = "実施者（Practitioner）、実施者職種（PractitionerRole）への参照"
* performer.actor ^definition = "実施者（Practitioner）、実施者職種（PractitionerRole）への参照"
* performer.actor.type 1..
* performer.actor.display 1.. MS
* usedCode ^short = "麻酔種別"
* usedCode ^definition = "（予約項目）\r\n処置、手術等で麻酔を用いた場合の麻酔の種別を表すコード・名称・コード体系"