FHIRリポジトリ上にePathリポジトリを再現する方法について説明する。

FHIR版のePathリポジトリにデータ受け渡し等を行う場合、送受信の両方のアクタについてCapability Statementを記載とすることが出来る。一般的にServer側へのCapabilityStatement定義され、Client側は必要に応じて記載する。役割やデータの受け渡しのフローにより、アクタが複数になる場合、それぞれのアクタにてCapability Statementの記載を検討する。

### ePathリポジトリ機能定義（Capability Statement）の実装例

#### ユースケース

リソースデータを管理するServerに対して、Clientが登録、検索をする。

#### 登場アクタの説明

| アクタ | 説明 |
| ---- | ---- |
| Server（ePathリポジトリサーバ） | FHIRリポジトリ上にePathリポジトリを再現するために必要最小限のサーバ・クライアント機能（CapabilityStatement）を提起する。 |
| Client（ePathリポジトリクライアント） | FHIR準拠したePathリポジトリ クライアントで、リソースに対する登録機能と検索機能を有する。|

#### ePathリポジトリサーバ：サーバ機能定義

FHIR準拠したePathリポジトリ サーバで、Resourceを永続化して保持ししているものに対して検索のサービスを提供する。

[EPathRepositoryServerCapabilityStatement](CapabilityStatement-EPathRepositoryServerCapabilityStatement.html)

#### ePathリポジトリクライアント：クライアント機能定義

FHIR準拠したePathリポジトリ クライアントで、リソースに対する検索機能を有する。

[EPathRepositoryClientCapabilityStatement](CapabilityStatement-EPathRepositoryClientCapabilityStatement.html)

### 医療機関情報（Organization）

ePathリポジトリには、施設パスや適用後パスデータの発生源である医療機関情報（[EPathOrganization](StructureDefinition-EPathOrganization.html)）を登録しなければならない。(SHALL)

これらは施設パスや適用後パスデータを登録するタイミング、またはその前に登録すること。

### 患者基本情報（Patient）

ePathリポジトリには、パスが適用される患者基本情報（[EPathPatient](StructureDefinition-EPathPatient.html)）を登録しなければならない。(SHALL)

これらは適用後パスデータを登録するタイミング、またはその前に登録すること。

### 適用後パスデータバンドル（Bundle）

ePathメッセージ構造の定義上、すべての病日・イベントを [適用後パスデータバンドル（Bundle）](StructureDefinition-EPathBundleMessageEP12.html)のエントリ（Bundle.entry）に追加した場合、のエントリの件数が大きくなることが予想される。そのため、FHIR版のePathリポジトリには、<span style="color: red;">病日・イベント単位でエントリを分割</span> した [適用後パスデータバンドル（Bundle）](StructureDefinition-EPathBundleMessageEP12.html)格納すべきである。(SHOULD)

また、病日・イベント単位で分割した適用後パスデータバンドルを一括で抽出するため、適用後パスで作成した [適用後パスデータリスト（List）](StructureDefinition-EPathListEPathRepository.html) のList.itemに病日・イベント単位で分割した適用後パスデータバンドルの参照を設定しなければならない。(SHALL)

List採用をしたのは、病日・イベント単位での動的な更新を実現するためである。

#### 適用後パスの分割

<span style="color: red;">適用後パスデータは、病日（＋リピート番号）単位のバンドルに分割して登録する。</span><br/>
適用後パス単位のBundleリソースを病日単位に分割して格納する際のエントリは下記の通りである（表7）。

**表7 病日単位に分割された適用後パスデータバンドルのエントリ**

| リソース種別 | プロファイル | Card. | ePathメッセージ構造要素 | 説明 |
|----|----|----|----|----|
| Organization | [EPathOrganization](StructureDefinition-EPathOrganization.html) | 1..1 | facility | 医療機関情報 |
| Patient | [EPathPatient](StructureDefinition-EPathPatient.html) | 1..1 | patient | 患者基本情報 |
| Encounter | [EPathEncounterAdmission](StructureDefinition-EPathEncounterAdmission.html) | 0..* | admission | 入院（来院）情報、<span style="color: red;">外来パスの場合は設定しない。</span>  |
| Condition | [EPathConditionCarePlanAddresses](StructureDefinition-EPathConditionCarePlanAddresses.html) | 0..* | admission/disease | 病名 |
| Procedure | [EPathProcedureMajorEvent](StructureDefinition-EPathProcedureMajorEvent.html) | 0..* | admission/majorEvent | 主要イベント情報 |
| PlanDefinition | [EPathPlanDefinitionEP01](StructureDefinition-EPathPlanDefinitionEP01.html) | 0..1 | ePathMessage | ひな型パス定義、正規URLを持つ。PlanDefinition.actionは省略してよい。 |
| PlanDefinition | [EPathPlanDefinitionEP02](StructureDefinition-EPathPlanDefinitionEP02.html) | 0..1 | ePathMessage | 施設パス定義、正規URLを持つ。PlanDefinition.actionは省略してよい。 |
| CarePlan | [EPathCarePlanEPathApply](StructureDefinition-EPathCarePlanEPathApply.html) | 1..1 | ePathIdentification, ePathApply | パス適用情報 |
| Goal | [EPathGoalEPathApply](StructureDefinition-EPathGoalEPathApply.html) | 0..* | ePathApply | パス適用 目標・評価情報 |
| CarePlan | [EPathCarePlanEvent](StructureDefinition-EPathCarePlanEvent.html) | <span style="color: red;">0..1</span> | ePathApply/event | 病日・イベント情報 |
| Goal | [EPathGoalEvent](StructureDefinition-EPathGoalEvent.html) | 0..* | ePathApply/event/compAssessment | 病日・イベント 目標・評価情報 |
| CarePlan | [EPathCarePlanOATUnit](StructureDefinition-EPathCarePlanOATUnit.html) | 0..* | ePathApply/event/oatUnit | OATユニット・アウトカム |
| Goal | [EPathGoalOutcome](StructureDefinition-EPathGoalOutcome.html) | 0..* | ePathApply/event/oatUnit/outcome/judgement | アウトカム 目標・評価情報 |
| CarePlan | [EPathCarePlanAssessment](StructureDefinition-EPathCarePlanAssessment.html) | 0..* | ePathApply/event/oatUnit/outcome/assessment | 観察項目 |
| Goal | [EPathGoalAssessmentExecution](StructureDefinition-EPathGoalAssessmentExecution.html) | 0..* | ePathApply/event/oatUnit/outcome/assessment/execution | 観察項目実施 目標・評価情報 |
| Task | [EPathProcedureTask](StructureDefinition-EPathProcedureTask.html) | 0..* | ePathApply/event/oatUnit/outcome/assessment/task | タスク |

<br/>

#### バンドル識別子

適用後パスデータを病日・イベント単位のバンドルに分割する場合、http://e-path.jp/fhir/ePath/IdSystem/event-id と同じ内容を設定する。

**病日・イベント単位で分割されたEP12バンドル識別子**

http://e-path.jp/fhir/ePath/IdSystem/event-id と同じ値を設定する。

	"identifier": {
		"system": "http://e-path.jp/fhir/ePath/IdSystem/ep12-bundle-id",
		"value": "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1",
		"assigner": {
			"identifier": {
				"system": "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no",
				"value": "4311234567"
			}
		}
	}

<br/>

#### 適用後パスデータリスト（List）

ePathリポジトリ上に分割して格納された適用後パスデータは、[適用後パスデータリスト（List）](StructureDefinition-EPathListEPathRepository.html) を用いてグルーピングするべきである。(SHOULD)<br/>

List.entry.item に適用後パスデータへの参照を設定する。<br/>

**適用後パスデータへの参照**

	"entry": [
	  {
	    "date": "2024-11-15T15:55:06+09:00",
	    "item": {
	      "reference": "Bundle/74401ae3fbcbbccc381db54d5ae0fd4a521aa568e5b9570ef82238dfd1e724f5",
	      "type": "Bundle",
	      "display": "1.入院日"
	    }
	  },
	  {
	    "date": "2024-11-15T15:55:06+09:00",
	    "item": {
	      "reference": "Bundle/6989854adc2eb059cf681c4d1682914ba86022c343e8ad0e0d4bbdff4767c33b",
	      "type": "Bundle",
	      "display": "2.治療当日"
	    }
	  },
	  {
	    "date": "2024-11-15T15:55:06+09:00",
	    "item": {
	      "reference": "Bundle/784015b14062ac789a0e32f0076ad09c3a44b52ff46bcf4c42f32f2140418b7a",
	      "type": "Bundle",
	      "display": "3.治療後1日目"
	    }
	  },
	  {
	    "date": "2024-11-15T15:55:06+09:00",
	    "item": {
	      "reference": "Bundle/320f4de63c14fb6d58676d249101fd6f1f3d5f305bb0eec742844b39335d9b1d",
	      "type": "Bundle",
	      "display": "4.退院日"
	    }
	  }
	]

### ひな型パスバンドル（Bundle）

ePathリポジトリ上のひな型パスは、[ひな型パスバンドル（Bundle）](StructureDefinition-EPathBundleMessageEP01.html)として、FHIRリポジトリに登録する。<br/>

ひな型パスをePathリポジトリから抽出する場合、識別子（Bundle.identifier）に格納されている標準パスコードを指定する。

### 施設パスバンドル（Bundle）

ePathリポジトリ上の施設パスは、[施設パスバンドル（Bundle）](StructureDefinition-EPathBundleMessageEP02.html)として、FHIRリポジトリに登録する。<br/>

施設パスをePathリポジトリから抽出する場合、識別子（Bundle.identifier）に格納されている施設パスコードを指定する。

### 患者入力フォーム（Questionnaire）と回答（QuestionnaireResponse）

ePathリポジトリには、用途に応じて患者用入力フォーム（[EPathQuestionnaire](StructureDefinition-EPathQuestionnaire.html)）と患者用入力フォームに入力された回答（[EPathQuestionnaireResponse](StructureDefinition-EPathQuestionnaireResponse.html)）を登録することができる。

<br/>

<font style="color:gray;">Presented by ePath Project</font>

 