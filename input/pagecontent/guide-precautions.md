## 本実装ガイド利用上の注意事項

**<span style="color: blue;">ePathならびにePath FHIR IGの知的所有権は日本医療情報学会と日本クリニカルパス学会の合同委員会に帰属します。</span>**

### 用語ライセンス
本実装ガイドに記載されている項目(CodeableConcept、Coding、Code等の型)に対しバインディングされている用語に利用許諾ライセンスを必要とするものが存在している。

対象項目に対して定義を行なわなかった場合に派生元であるJP Coreの定義がそのまま表示されているが、利用されている用語の中には日本国内でのライセンス利用が認められていないもの等があるため、このような事象が発生している。このため本実装ガイドを利用する際はこのような状況を理解した上で、利用する側で用語に関するライセンス問題を解決を行なう必要がある(SHALL)。

本実装ガイドで定義された用語以外の定義されている用語や外部で定義された用語を記載しているが用語の利用を保証するものではない。

これらの利用許諾のライセンスを必要とする用語の多くはバインディング強度は多くはexampleやpreferred等が割り当てられており、他コード等の利用を否定するものではない。以下のような対処方法等があげられる、実装ガイド作成の際に検討したうえで方針を決定すること。

1. 用語の発行機関に確認し、正式に利用の許可を得た上で用語として採用する

2. 項目を利用しない、もしくは他の項目での代替を考える

3. 利用な可能な別の用語を探し、これを割り当てる

4. 派生先実装ガイドにてローカルコード（独自コード）を作成しこれを割り当てる

5. コードは作成せずに、CodableConcept.textのエリアを利用し、文言のみを格納する

#### Basic Outcome Master&reg; (BOM)

本実装ガイドでは、アウトカム、観察項目に Basic Outcome Master&reg; (BOM) をバインディングしている。

**<span style="color: blue;">BOM (Basic Outcome Mater)の知的所有権は日本クリニカルパス学会に帰属します。</span>**

**本実装ガイドにおける Basic Outcome Master&reg; (BOM)**

|CodeSystemリソース| タイトル |
| ---- | ---- |
| EPath BOMOutcomeCategory CS | Basic Outcome Master® (BOM) アウトカム大分類 |
| EPath BOMOutcomeSubCategory CS | Basic Outcome Master® (BOM) アウトカム中分類 |
| EPath BOMOutcomeCode CS | Basic Outcome Master® (BOM) アウトカムコード |
| EPath BOMAssessmentCategory CS | Basic Outcome Master® (BOM) 観察項目分類  |
| EPath BOMAssessmentCode CS | Basic Outcome Master® (BOM) 観察項目コード |

本実装ガイドに含まれるCodeSystemリソースには、すべてのBOMコードは含まれていない。

### 責任の制限

本実装ガイドは利用に際して動作を保証するものでは無く、また利用に於ける不具合やこれに起因した被害が出た場合に責任を追うものではない。十分に理解した上で利用すること。(SHALL)

<font style="color:gray;">Presented by ePath Project</font>