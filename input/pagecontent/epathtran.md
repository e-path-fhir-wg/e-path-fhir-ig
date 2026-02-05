[付録１．ePath FHIRリポジトリ](epathre.html)との連携を想定したアクタとトランザクションを説明する。<br/>

### EP12 適用後パスデータ

適用後パスデータの登録から、利用者が適用後パスデータを取得するまでの一連の流れを説明する。

<br/>

<div>
	<img src="TRAN-EP12_Diagram.png" style="width: 800px;" />
</div>
<div>図9 EP12 適用後パスデータ連携のアクタ・トランザクション</div>

<br/>

**表8 EP12 適用後パスデータ連携のアクタ**

| アクタ | 関連トランザクション | 説明 |
| ---- | ---- | ---- |
| Pathway Data Source | Provide and Register Pathway Data [EP12-01] | 適用後パスデータの発生元、例えば電子カルテシステム。|
| Communications Gateway | Provide and Register Pathway Data [EP12-01]<br/>Provide and Register Event Pathway Data [EP12-02]<br/>Provide and Register Pathway List and Administration [EP12-03]<br/>Retrieve Pathway Data For Operation [EP12-06]<br/>Update Pathway Data After Operation [EP12-07]<br/>Provide and Register Multiple Questionnaire Response [QSR-04]<br/>Register Questionnaire Response [QSR-05]<br/>Request Operation Merge Questionnaire Response [QSR-06]<br/> | Pathway Data Sourceなどからデータを受け取り、ePathレポジトリに登録する。| 
| Pathway Data Repository | Provide and Register Event Pathway Data [EP12-02]<br/>  Provide and Register Pathway List and Administration [EP12-03]<br/>Retrieve Pathway Data [EP12-04]<br/>Query Pathway List [EP12-05]<br/>Retrieve Pathway Data For Operation [EP12-06]<br/>Update Pathway Data After Operation [EP12-07]<br/>Provide and Register Pathway Template [EP01-01]<br/>Register Pathway Template [EP01-02] | ePathリポジトリサーバ。CRUD機能と検索機能を持つ。例えばクラウド上のFHIRサービス。 | 
| Pathway Data Consumer　| Retrieve Pathway Data [EP12-04]<br/>Query Pathway List [EP12-05]	| ePathリポジトリクライアント。適用後パスデータの利用者、例えばPHRシステム。| 

<br/>

**表9 EP12 適用後パスデータ連携のトランザクション**

| ID | トランザクション名称 | データ | 説明| 
| ---- | ---- | ---- | ---- |
| EP12-01 | Provide and Register Pathway Data | EPath Bundle Message EP12| 適用後パスデータを生成し、リポジトリへの登録を要求する。| 
| EP12-02 | Provide and Register Event Pathway Data | EPath Bundle Message EP12 | 病日・イベント単位に分割した適用後パスデータをリポジトリに登録する。| 
| EP12-03 | Provide and Register Pathway List and Administration | EPath List EPathRepository| 適用後パスデータリストをePathリポジトリに登録する。<br/>他に登録の経路がない場合、医療機関情報や患者基本情報も登録する。| 
| EP12-04 | Retrieve Pathway Data | EPath Bundle Message EP12| 病日・イベント単位に分割した適用後パスデータを取得する。| 
| EP12-05 | Query Pathway List | Bundle(Search Set) <br/>エントリはEPath List EPathRepository | 適用後パスデータリストを検索する。| 
| EP12-06 | Retrieve Pathway Data For Operation | EPath Bundle Message EP12 | オペレーションを実行するためにパスデータを取得する。<br/>例えばRequest Merge Questionnaire Response [QSR-06」がオペレーションにあたる。| 
| EP12-07 | Update Pathway Data After Operation | EPath Bundle Message EP12 | オペレーションの結果で適用後パスデータを更新する。| 

<br/>

#### 適用後パスデータ登録の流れ

1. Provide and Register Pathway Data [EP12-01]：Pathway Data Source は Communications Gateway に対し、 [適用後パスデータバンドル（Bundle）](StructureDefinition-EPathBundleMessageEP12.html) を送信する。※適用後パスデータバンドルが「パス全体」か「病名・イベント単位」であるかは問わない。

2. Provide and Register Event Pathway Data [EP12-02]：Communications Gateway は [適用後パスデータバンドル（Bundle）](StructureDefinition-EPathBundleMessageEP12.html) から [病日・イベント単位の適用後パスデータバンドル（Bundle）](epathre.html) を生成し、Pathway Data Repositoryに登録（更新）する。

3. Provide and Register Pathway List and Administration [EP12-03]：Communications Gateway は [適用後パスデータバンドル（Bundle）](StructureDefinition-EPathBundleMessageEP12.html) から [医療機関情報（EPathOrganization）](StructureDefinition-EPathOrganization.html) 、 [患者基本情報（EPathPatient）](StructureDefinition-EPathPatient.html) を生成し、Pathway Data Repository に登録（更新）する。

4. Provide and Register Pathway List and Administration [EP12-03]：Communications Gateway は2と3の登録結果から [適用後パスデータリスト（List）](StructureDefinition-EPathListEPathRepository.html) を生成し、登録（更新）する。

<br/>

- 適用後パスデータの削除は[パス適用情報(EPathCarePlanEPathApply)](StructureDefinition-EPathCarePlanEPathApply.html)と適用後パスデータリスト（List）のステータス（status）変更を想定している。そのため、Provide and Register Pathway Data [EP12-01]として扱う。

#### 適用後パスデータの抽出

 - 適用後パスデータを抽出する場合、最初に適用後パスデータリスト（List）に対し検索（Query Pathway List [EP12-05]）を行い、適用後パスデータの実体はList.entry.item.reference から取得（Retrieve Pathway Data [EP12-04]）する。

<br/>

### QSA 入力フォーム、QSR 入力フォーム回答

入力フォームの登録から入力フォーム回答が返信されるまでの一連の流れを説明する。

本書では入力フォームおよび入力フォーム回答の削除は定義していないため、Communications Gateway 側で任意で実装すること。

<br/>

<div>
	<img src="TRAN-QSA_Diagram-1.png" style="width: 800px;" />
</div>
<div>図10 QSA 入力フォーム、QSR 入力フォーム回答連携のアクタ・トランザクション（入力フォーム、入力フォーム回答単体での登録と取得）</div>

<br/>

<div>
	<img src="TRAN-QSA_Diagram-2.png" style="width: 800px;" />
</div>
<div>図11 QSA 入力フォーム、QSR 入力フォーム回答連携のアクタ・トランザクション（入力フォーム回答の一括登録）</div>

<br/>

**表10 EP12 QSA 入力フォーム、QSR 入力フォーム回答連携のアクタ**

| アクタ | 関連トランザクション | 説明 |
| ---- | ---- | ---- |
| Questionnaire Source | Provide and Register Questionnaire [QSA-01] | 入力フォームの発生元、例えば電子カルテシステム。 | 
| Questionnaire Repository | Provide and Register Questionnaire [QSA-01]<br/> Retrieve Questionnaire [QSA-02]	<br/>Query Questionnaire [QSA-03] | ePathリポジトリサーバ、例えばクラウド上のFHIRサービス。 | 
| Questionnaire Consumer | Retrieve Questionnaire [QSA-02]<br/>Query Questionnaire [QSA-03]	 | ePathリポジトリクライアント。入力フォームの利用者、例えばPHRシステム。 | 
| Questionnaire Response Source | Provide and Register Questionnaire Response [QSR-01]<br/>Provide and Request Multiple Questionnaire Response [QSR-04]	| 入力フォーム回答の発生元、例えばPHRシステム。 | 
| Questionnaire Response Repository | Provide and Register Questionnaire Response [QSR-01]<br/>Retrieve Questionnaire Response  [QSR-02]<br/>Query Questionnaire Response [QSR-03]<br/>Register Questionnaire Response [QSR-05]		| ePathリポジトリサーバ、例えばクラウド上のFHIRサービス。 | 
| Questionnaire Response Consumer | Retrieve Questionnaire Response [QSR-02]<br/>Query Questionnaire Response [QSR-03]<br/>Request Operation Merge Questionnaire Response [QSR-06]	| ePathリポジトリクライアント。入力フォーム回答の利用者、例えば電子カルテシステム。 | 

<br/>

**表11 EP12 QSA 入力フォーム、QSR 入力フォーム回答連携のトランザクション**

| ID | トランザクション名称 | データ | 説明| 
| ---- | ---- | ---- | ---- |
| QSA-01 | Provide and Register Questionnaire | EPath Questionnaire| 入力用フォームデータを生成し、リポジトリに登録する。|
| QSA-02 | Retrieve Questionnaire | EPath Questionnaire | 入力用フォームデータを取得する。|
| QSA-03 | Query Questionnaire | Bundle(Search Set) エントリはEPath Questionnaire | 入力用フォームデータを検索する。|
| QSR-01 | Provide and Register QuestionnaireResponse | EPath QuestionnaireResponse| 入力用フォーム回答データを生成し、リポジトリに登録する。|
| QSR-02 | Retrieve QuestionnaireResponse | EPath QuestionnaireResponse | 入力用フォーム回答データを取得する。|
| QSR-03 | Query QuestionnaireResponse | Bundle(Search Set) <br/>エントリはEPath QuestionnaireResponse|入力用フォーム回答データを検索する。|
| QSR-04 | Provide and Request Register Multiple Questionnaire Response | EPath Bundle Message EP22 | 複数の入力用フォーム回答データのリポジトリへの登録を要求する。|
| QSR-05 | Register QuestionnaireResponse | EPath QuestionnaireResponse | 入力用フォーム回答をリポジトリに登録する。|
| QSR-06 | Request Operation Merge Questionnaire Response | EPath QuestionnaireResponse<br/>   EPath Bundle Message EP22 | 入力用フォーム回答データの内容を適用後パスデータに反映するため、オペレーション（Operation）を要求する。|

<br/>

#### 適用後パスデータに入力フォーム回答が反映されるまでの流れ（図11, 回答の一括登録を使用した場合）

1. Provide and Request Register Multiple Questionnaire Response 
 [QSR-04]：Questionnaire Response Source は Communications Gateway に対し、 [入力フォーム回答の返信バンドル（Bundle）](StructureDefinition-EPathBundleMessageEP22.html) を送信する。

2. Register QuestionnaireResponse [QSR-05]：Communications Gateway は  [入力フォーム回答の返信バンドル（Bundle）](StructureDefinition-EPathBundleMessageEP22.html) から [入力フォーム回答（EPathQuestionnaireResponse）](StructureDefinition-EPathQuestionnaireResponse.html) を生成し、Questionnaire Response Repository に登録する。

3. Query QuestionnaireResponse [QSR-03]：Questionnaire Response Consumer は Questionnaire Response Repository に対し [入力フォーム回答（EPathQuestionnaireResponse）](StructureDefinition-EPathQuestionnaireResponse.html) を要求する。

4. Request Operation Merge Questionnaire Response [QSR-06]：Questionnaire Response Consumer は Communications Gateway に対し、入力用フォーム回答データの内容を適用後パスデータに反映するためのオペレーション（Operation）を要求する。

<br/>

- 入力フォーム回答の削除は [入力フォーム回答（EPathQuestionnaireResponse）](StructureDefinition-EPathQuestionnaireResponse.html)のステータス（status）変更を想定している。そのため、Provide and Request Register Multiple [QSR-04]などで実現する。

- 入力フォームは必ずしも個別のリソースで Questionnaire Repository に登録する必要はなく、Provide and Register Pathway Data [EP12-01]でPathway Data Repositoryに登録した[適用後パスデータバンドル（Bundle）](StructureDefinition-EPathBundleMessageEP12.html)にエントリされているものを使用してもよい。 

<br/>

### EP01 ひな型パス、 EP02 施設パス

ひな型パス（施設パス）の登録から、利用者がひな型パス（施設パス）を取得するまでの一連の流れを説明する。

<div>
	<img src="TRAN-EP01_Diagram.png" style="width: 800px;" />
</div>
<div>図11 EP01 ひな型パス、 EP02 施設パス連携のアクタ・トランザクション</div>

<br/>

**表12 EP01 ひな型パス、 EP02 施設パス連携のアクタ**

| アクタ | 関連トランザクション | 説明 |
| ---- | ---- | ---- |
| Pathway Template Source | Provide and Register Pathway Template [EP01-01] | ひな型パス、施設パスの発生元、例えば施設パスの場合は電子カルテシステム。 |
| Pathway Template Repository | Provide and Register Pathway Template [EP01-01]<br/>Register Pathway Template [EP01-02]<br/>Retrieve Pathway Template [EP01-03]<br/>Query Pathway Template [EP01-04] | ePathリポジトリサーバ、例えばクラウド上のFHIRサービス。 |
| Pathway Template Consumer | Retrieve Pathway Template [EP01-03]<br/>Query Pathway Template [EP01-04] | ePathリポジトリクライアント。ひな型パス、施設パスの利用者、例えば電子カルテシステム。 |

<br/>

**表13 EP01 ひな型パス、 EP02 施設パス連携のトランザクション**

| ID | トランザクション名称 | データ | 説明| 
| ---- | ---- | ---- | ---- |
| EP01-01 | Provide and Register Pathway Template | EPath Bundle Message EP01<br/>EPath Bundle Message EP02 | ひな型パス、施設パスを生成し、リポジトリに登録を要求する。|
| EP01-02 | Register Pathway Template | EPath Bundle Message EP01<br/>EPath Bundle Message EP02 | ひな型パス、施設パスをePathリポジトリに登録する。他に登録の経路がない場合、施設パスを受けた際に医療機関情報も登録する。 |
| EP01-03 | Retrieve Pathway Template | EPath Bundle Message EP01<br/>EPath Bundle Message EP02 | ひな型パス、施設パスを取得する。 |
| EP01-04 | Query Pathway Template | Bundle(Search Set) <br/>エントリはEPath Bundle Message EP01, <br/>EPath Bundle Message EP02 | 	ひな型パス、施設パスを検索する。 |

<br/>

#### ひな型パス登録の流れ

1. Provide and Register Pathway Template [EP01-01]：Pathway Template Source は Communications Gateway に対し[ひな型パスバンドル（Bundle）](StructureDefinition-EPathBundleMessageEP01.html) を送信する。

2. Register Pathway Template [EP01-02]：Communications Gateway は [ひな型パスバンドル（Bundle）](StructureDefinition-EPathBundleMessageEP01.html) を Pathway Template Repository に登録（更新）する。

 - ひな型パスの削除（利用停止, retired）は PlanDefinition のステータス（status）変更を想定している。そのため、Provide and Register Pathway Template [EP01-01]として扱う。


#### 施設パス登録の流れ

1. Provide and Register Pathway Template [EP01-01]：Pathway Template Source は Communications Gateway に対し[施設パスバンドル（Bundle）](StructureDefinition-EPathBundleMessageEP02.html) を送信する。

2. Register Pathway Template [EP01-02]：Communications Gateway は [施設パスバンドル（Bundle）](StructureDefinition-EPathBundleMessageEP02.html) を Pathway Template Repository に登録（更新）する。[施設パスバンドル（Bundle）](StructureDefinition-EPathBundleMessageEP02.html)から [医療機関情報（EPathOrganization）](StructureDefinition-EPathOrganization.html) を生成し、Pathway Template Repository に登録（更新）する。

 - 施設パスの削除（利用停止, retired）は PlanDefinition のステータス（status）変更を想定している。そのため、Provide and Register Pathway Template [EP01-01]として扱う。

<br/>

<font style="color:gray;">Presented by ePath Project</font>