Instance: EPathListPathCodeSearchParameter
InstanceOf: SearchParameter
Usage: #definition
* url = "http://e-path.jp/fhir/ePath/SearchParameter/EPathListPathCodeSearchParameter"
* name = "EPathListPathCodeSearchParameter"
* status = #active
* description = "ePathリポジトリをパスコードを指定して検索するために使用するパラメータ"
* code = #ep-pathcode
* base = #List
* type = #uri
* expression = "List.extension.where(url='http://e-path.jp/fhir/ePath/StructureDefinition/EPathListPathCode').value"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = false