施設パスのePathメッセージ構造をFHIRリソースを用いて表現する方法を説明する。<br/>
FHIRリソースの詳細は [Artifacts Summary](artifacts.html) を参照のこと。<br/>

### 施設パスバンドル

施設パスの各リソースはePathメッセージ単位で [施設パスバンドル（Bundle）](StructureDefinition-EPathBundleMessageEP02.html) に格納する。施設パスバンドルは、施設パスのePathメッセージ構造をBundleリソースに適用したFHIRプロファイルである。

#### 施設パスのePathメッセージ構造

ePath仕様における施設パスの構造は図3のとおりである。

<div>
	<img src="E02-msg-structure.png" />
</div>
<div>図3 施設パスのePathメッセージ構造</div>

<br/>

#### 施設パスバンドルの構造

施設パスバンドルの構造は図4のとおりである。

施設パスデータバンドルでは、パス適用情報、病日・イベント情報、OATユニット/アウトカム、観察項目のePathデータ構造を PlanDefinitionリソース で表現する。外来パスの入力フォームは、Questionnaireリソースで表現する。医療機関は PlanDefinition.identifier.asserter から Organizationリソース を参照する。

<div>
	<img src="E02-fhir-structure.png" />
</div>
<div>図4 R4 版 施設パスバンドルの構造</div>

<br/>

### 施設パスバンドルのエントリ

施設パスバンドルのエントリ（表3）は、Organizationリソース、PlanDefinitionリソース、Questionnaireリソース で構成する。<br/>

**表3 施設パスバンドルのエントリ**

| リソース種別 | プロファイル | Card. | ePathメッセージ構造要素 | 説明 |
|----|----|----|----|----|
| Organization | [EPathOrganization](StructureDefinition-EPathOrganization.html) | 1..1 | facility | 医療機関情報 |
| PlanDefinition | [EPathPlanDefinitionEP01](StructureDefinition-EPathPlanDefinitionEP01.html) | 0..1 | ePathMessage | ひな型パス定義、正規URLを持つ。ひな型パス配下のEPathPlanDefinitionEventは含めなくてよい。 |
| PlanDefinition | [EPathPlanDefinitionEP02](StructureDefinition-EPathPlanDefinitionEP02.html) | 1..1 | ePathMessage | 施設パス定義、正規URLを持つ。 |
| PlanDefinition | [EPathPlanDefinitionEvent](StructureDefinition-EPathPlanDefinitionEvent.html) | 0..* | ePathApply/event | 病日・イベント情報定義、病日単位の患者用OATUnitから生成したパス定義、正規URLを持つ。|
| Questionnaire | [EPathQuestionnaire](StructureDefinition-EPathQuestionnaire.html) | 0..* | ePathApply/event | 病日単位の患者用OATUnitから生成した入力フォーム、正規URLを持つ。該当するパスに対応するフォームが公開されているのであれば、バンドルに含める必要はない。 |

<br/>

### 識別子

施設（ローカル）パスコードを設定する。

### 正規URL

ベースURL/PlanDefinition/EP02.医療機関コード.施設パス識別（パスコード） を設定する。

token型で許容される値を用いること。

	"url": "http://e-path.jp/fhir/ePath/PlanDefinition/EP02.2211234567.CN05I00511-L"

PlanDefinition.id を設定する場合、正規URLの末尾要素と同じ値を設定すること。

### イベントテンプレート識別子

EPathPlanDefinitionEvent の識別子で、施設パス識別、病日[-パスステップ]を半角ピリオド"."で連結したものを設定する。

パス識別は親のパス定義（EPathPlanDefinitionEP02）のurlの末尾を推奨する。

	{
		"system": "http://e-path.jp/fhir/ePath/IdSystem/event-template-id",
		"value": "CN05I00511-L.1",
		"assigner": {
			"identifier": {
			"system": "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no",
			"value": "2211234567"
			},
			"display": "ePathテスト病院"
		}
	}
	
	
	医療機関 2211234567 の施設パス CN05I00511-L の病日1を表す。

### イベントの正規URL

ベースURL/PlanDefinition/EVT.医療機関コード.イベントテンプレート識別子 を設定する。

	"url": "http://e-path.jp/fhir/ePath/PlanDefinition/EVT.2211234567.CN05I00511-L.1"
	
	EVT.2211234567.CN05I00511-L の 病日1を表す。

PlanDefinition.id を設定する場合、正規URLの末尾要素と同じ値を設定すること。

<br/>

<font style="color:gray;">Presented by ePath Project</font>