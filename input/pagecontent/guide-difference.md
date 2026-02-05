ePathのデータ要素と構造に関する仕様書と本実装ガイドの差異の全体像について説明する。

### Cardinality(多重度)

本実装ガイドで定義されるプロファイルでは、派生先の実装ガイドの拡張性を維持するなどの理由でCardinality(多重度)がePathメッセージ構造と異なる（制限を緩めている）要素が存在する。このような場合、本Implementation Guideの定義を正とする。

### コード体系の表記

本実装ガイドで定義されるプロファイルでは、コード体系をOIDから新たに定義した正規URLに変更した。

例）BOM（Basic Outcome Master）アウトカムコード

- ePath構造定義：urn:oid:1.2.392.200250.3.2.200.30

- 本実装ガイド：http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMOutcomeCodeCS

### リソース一意識別子
ePathのデータ要素と構造に関する仕様書では、適用時パス識別子、OATユニット識別子が定義されていたが、各リソースを識別可能な「リソース一意識別子」を設定する。

例えば、ePathのデータ要素と構造に関する仕様書のOATユニット識別子にあたる識別子は、下記の様に設定したリソース一意識別子で代替えする。

	医療機関コード.適用時パス識別子.病日[-パスステップ].OATユニット識別子[-リピート番号]

### 観察項目結果値定義

ePathのデータ要素と構造に関する仕様書における観察項目結果値定義（resultValueDefinition要素）は入力フォームの情報のため、Questionnaireリソースとして対応した。

<font style="color:gray;">Presented by ePath Project</font>