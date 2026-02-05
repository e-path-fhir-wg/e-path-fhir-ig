ひな型パスのePathメッセージ構造をFHIRリソースを用いて表現する方法を説明する。<br/>
FHIRリソースの詳細は [Artifacts Summary](artifacts.html) を参照のこと。<br/>

### ひな型パスバンドル
ひな型パスの各リソースはePathメッセージ単位で [ひな型パスバンドル（Bundle）](StructureDefinition-EPathBundleMessageEP01.html) に格納する。ひな型パスバンドルは、ひな型パスのePathメッセージ構造をBundleリソースに適用したFHIRプロファイルである。

#### ひな型パスのePathメッセージ構造

ePath仕様におけるひな型パスの構造は図1のとおりである。

<div>
	<img src="E01-msg-structure.png" />
</div>
<div>図1 ひな型パスのePathメッセージ構造</div>

<br/>

#### ひな型パスバンドルの構造

ひな型パスバンドルの構造は図2のとおりである。

ひな型パスバンドルでは、パス適用情報、病日・イベント情報、OATユニット/アウトカム、観察項目のePathデータ構造を PlanDefinitionリソース で表現する。外来パスの入力フォームは、Questionnaireリソース で表現する。

<div>
	<img src="E01-fhir-structure.png" />
</div>
<div>図2 R4 版 ひな型パスバンドルの構造</div>

<br/>

### ひな型パスバンドルのエントリ

ひな型パスバンドルのエントリ（表1）は、PlanDefinitionリソース、Questionnaireリソース で構成する。<br/>

**表1 ひな型パスバンドルのエントリ**

| リソース種別 | プロファイル | Card. | ePathメッセージ構造要素 | 説明 |
|----|----|----|----|----|
| PlanDefinition | [EPathPlanDefinitionEP01](StructureDefinition-EPathPlanDefinitionEP01.html) | 1..1 | ePathMessage | ひな型パス定義、正規URLを持つ。 |
| PlanDefinition | [EPathPlanDefinitionEvent](StructureDefinition-EPathPlanDefinitionEvent.html) | 0..* | ePathApply/event | 病日・イベント情報定義、病日単位の患者用OATUnitから生成したパス定義、正規URLを持つ。|
| Questionnaire | [EPathQuestionnaire](StructureDefinition-EPathQuestionnaire.html) | 0..* | ePathApply/event | 病日単位の患者用OATUnitから生成した入力フォーム、正規URLを持つ。該当するパスに対応するフォームが公開されているのであれば、バンドルに含める必要はない。 |

### 識別子

標準クリニカルパスコードを設定する。

### 正規URL

ベースURL/PlanDefinition/EP01.ひな型パス識別を設定する。

token型で許容される値を用いること。

	"url": "http://e-path.jp/fhir/ePath/PlanDefinition/EP01.CN05I00511-0"

PlanDefinition.id を設定する場合、正規URLの末尾要素と同じ値を設定すること。

	"id": "EP01.CN05I00511-0"

### イベントテンプレート識別子

EPathPlanDefinitionEvent の識別子で、ひな型パス識別（パスコード）、病日[-パスステップ]を半角ピリオド"."で連結したものを設定する。

パス識別は親のパス定義（EPathPlanDefinitionEP01）のurlの末尾を推奨する。

	{
		"system": "http://e-path.jp/fhir/ePath/IdSystem/event-template-id",
		"value": "CN05I00511-0.1",
	}
	
	ひな型パス CN05I00511-L の病日1を表す。

### イベントの正規URL

ベースURL/PlanDefinition/EVT.ZZZZZZZZZZ.イベントテンプレート識別子 を設定する。

	"url": "http://e-path.jp/fhir/ePath/PlanDefinition/EVT.ZZZZZZZZZZ.CN05I00511-0.1"（CN05I00511-0 の 病日1を表す）

PlanDefinition.id を設定する場合、正規URLの末尾要素と同じ値を設定すること。

<br/>

<font style="color:gray;">Presented by ePath Project</font>
 