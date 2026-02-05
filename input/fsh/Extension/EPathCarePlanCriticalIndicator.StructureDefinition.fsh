Alias: $EPathYNIdentificationVS = http://e-path.jp/fhir/ePath/ValueSet/EPathYNIdentificationVS

Extension: EPathCarePlanCriticalIndicator
Id: EPathCarePlanCriticalIndicator
Title: "EPath CarePlan CriticalIndicator"
Description: "クリティカル・インディケータ"
Context: CarePlan
* value[x] 1..
* value[x] only code
* value[x] from $EPathYNIdentificationVS (preferred)
* value[x] ^short = "クリティカル・インディケータ"
* value[x] ^definition = "解析上、治療結果に重大な影響を与える、重要なアウトカム\r\nコード一覧「YN識別」より設定する。\r\n例）Y (対象)/N (非対象)"
* value[x] ^binding.description = "YN識別"