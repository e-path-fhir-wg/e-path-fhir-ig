Alias: $EPathDepartmentCodeVS = http://e-path.jp/fhir/ePath/ValueSet/EPathDepartmentCodeVS

Extension: EPathPlanDefinitionClinicalDepartment
Id: EPathPlanDefinitionClinicalDepartment
Title: "EPath PlanDefinition ClinicalDepartment"
Description: "診療科コード・名称（ひな型）"
Context: PlanDefinition
* value[x] only CodeableConcept
* value[x].coding from $EPathDepartmentCodeVS (example)
* value[x].coding ^binding.description = "診療科コード"
* value[x].coding.system 1..
* value[x].coding.code 1..
* value[x].coding.display 1..