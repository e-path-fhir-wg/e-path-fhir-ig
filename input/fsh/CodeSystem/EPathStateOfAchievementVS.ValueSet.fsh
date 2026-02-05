Alias: $EPathStateOfAchievementCS = http://e-path.jp/fhir/ePath/CodeSystem/EPathStateOfAchievementCS

ValueSet: EPathStateOfAchievementVS
Id: EPathStateOfAchievementVS
Title: "EPath StateOfAchievement VS"
Description: "評価状況 バリューセット"
* ^version = "1.0.0"
* ^status = #active
* ^experimental = false
* ^date = "2024-10-24"
* ^publisher = "ePath Project"
* ^contact.name = "ePath Project"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://e-path.jp"
* ^jurisdiction = urn:iso:std:iso:3166#JP
* include codes from system $EPathStateOfAchievementCS