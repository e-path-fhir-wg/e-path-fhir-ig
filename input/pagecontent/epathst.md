適用後パスデータのePathメッセージ構造をFHIRリソースを用いて表現する方法を説明する。<br/>
FHIRリソースの詳細は [Artifacts Summary](artifacts.html) を参照のこと。<br/>

### 適用後パスデータバンドル

各リソースはePathメッセージ単位、または病日・イベント単位で [適用後パスデータバンドル（Bundle）](StructureDefinition-EPathBundleMessageEP12.html) に格納する。適用後パスデータバンドルは、適用後パス、および適用後パスデータのePathメッセージ構造をBundleリソースに適用したFHIRプロファイルである。<br/>

適用後パスデータバンドルでは、パス適用情報、病日・イベント情報、OATユニット/アウトカム、観察項目の階層化されたePathデータ構造をCarePlanリソース（治療計画）、Goalリソース（実施目標）の組み合わせで表現する（表4）。<br/>

**表4 適用後パスデータバンドルの階層構造と対応リソース**

| 階層 | ePathメッセージ構造要素 | FHIRリソース（プロファイル） |
| ---- | ---- | ---- |
| １ | パス適用情報 | CarePlan（EPathCarePlanEPathApply）<br/>Goal（EPathGoalEPathApply） |
| ２ | 病日・イベント情報 | CarePlan（EPathCarePlanEvent）<br/>Observation（評価, EPathObservationEvaluation）<br/>Goal（EPathGoalEvent） |
| ３ | OATユニット・アウトカム | CarePlan（EPathCarePlanOATUnit）<br/>Goal（EPathGoalOutcome）<br/>Observation（評価, EPathObservationEvaluation）<br/>Observation（達成記録, EPathObservationExecution） |
| ４ | 観察項目 | CarePlan（EPathCarePlanAssessment）<br/>Procedure（EPathProcedureTask） |
| ５ | 観察項目実施 | Goal（EPathGoalAssessmentExecution）<br/>Observation（評価, EPathObservationEvaluation）<br/>Observation（EPathObservationExecution） |

<br/>

#### 適用後パスデータのePathメッセージ構造

ePath仕様における適用後パスデータの構造は図5のとおりである。

<div>
	<img src="E12-msg-structure.png" style="width: 1024px;" />
</div>
<div>図5 適用後パスデータのePathメッセージ構造</div>

<br/>

#### 適用後パスデータバンドルの構造

適用後パスデータバンドルの構造は図6のとおりである。適用後パスデータバンドルにおける階層構造はあくまでも概念的なものであり、リソースはBundle.entryに格納し、リソース同士の関係性は参照を用いて表現する。

<div>
	<img src="E12-fhir-structure.png" />
</div>
<div>図6 R4版 適用後パスデータバンドルの構造</div>

<br/>

適用後パスデータバンドル構成リソースの関係性は図7のとおりである。

<div>
	<img src="E12-fhir-flow.png" />
</div>
<div>図7 R4版 適用後パスデータバンドル構成リソースの関係性</div>

<br/>

### 適用後パスデータバンドルのエントリ

適用後パスデータバンドルのエントリは、表5のとおりである。

バンドルエントリ内の各リソースの並び順は、ePathメッセージ構造（ePathMessage XML）に対応する要素が出現する順番と同じであることが望ましい。<br/>

Organizationリソース（医療機関情報）、Patientリソース（患者基本情報）、Encounterリソース（入院情報）、Conditionリソース（病名）、Procedureリソース（主要イベント）については、CarePlanリソース（パス適用情報）よりも前にバンドルエントリする。<br/>

**表5 適用後パスデータバンドルのエントリ**

| リソース種別 | プロファイル | Card. | ePathメッセージ構造要素 | 説明 |
|----|----|----|----|----|
| Organization | [EPathOrganization](StructureDefinition-EPathOrganization.html) | 1..1 | facility | 医療機関情報 |
| Patient | [EPathPatient](StructureDefinition-EPathPatient.html) | 1..1 | patient | 患者基本情報 |
| Encounter | [EPathEncounterAdmission](StructureDefinition-EPathEncounterAdmission.html) | 0..* | admission | 入院（来院）情報、<span style="color: red;">外来パスの場合は設定しない。</span> |
| Condition | [EPathConditionCarePlanAddresses](StructureDefinition-EPathConditionCarePlanAddresses.html) | 0..* | admission/disease | 病名 |
| Procedure | [EPathProcedureMajorEvent](StructureDefinition-EPathProcedureMajorEvent.html) | 0..* | admission/majorEvent | 主要イベント情報 |
| PlanDefinition | [EPathPlanDefinitionEP01](StructureDefinition-EPathPlanDefinitionEP01.html) | 0..1 | ePathMessage | ひな型パス定義、正規URLを持つ。PlanDefinition.actionは省略してよい。 |
| PlanDefinition | [EPathPlanDefinitionEP02](StructureDefinition-EPathPlanDefinitionEP02.html) | 0..1 | ePathMessage | 施設パス定義、正規URLを持つ。PlanDefinition.actionは省略してよい。 |
| CarePlan | [EPathCarePlanEPathApply](StructureDefinition-EPathCarePlanEPathApply.html) | 1..1 | ePathIdentification, ePathApply | パス適用情報 |
| Goal | [EPathGoalEPathApply](StructureDefinition-EPathGoalEPathApply.html) | 0..* | ePathApply | パス適用 目標・評価情報 |
| CarePlan | [EPathCarePlanEvent](StructureDefinition-EPathCarePlanEvent.html) | 0..* | ePathApply/event | 病日・イベント情報 |
| Goal | [EPathGoalEvent](StructureDefinition-EPathGoalEvent.html) | 0..* | ePathApply/event/compAssessment | 病日・イベント 目標・評価情報 |
| CarePlan | [EPathCarePlanOATUnit](StructureDefinition-EPathCarePlanOATUnit.html) | 0..* | ePathApply/event/oatUnit | OATユニット・アウトカム |
| Goal | [EPathGoalOutcome](StructureDefinition-EPathGoalOutcome.html) | 0..* | ePathApply/event/oatUnit/outcome/judgement | アウトカム 目標・評価情報 |
| CarePlan | [EPathCarePlanAssessment](StructureDefinition-EPathCarePlanAssessment.html) | 0..* | ePathApply/event/oatUnit/outcome/assessment | 観察項目 |
| Goal | [EPathGoalAssessmentExecution](StructureDefinition-EPathGoalAssessmentExecution.html) | 0..* | ePathApply/event/oatUnit/outcome/assessment/execution | 観察項目実施 目標・評価情報 |
| Task | [EPathProcedureTask](StructureDefinition-EPathProcedureTask.html) | 0..* | ePathApply/event/oatUnit/outcome/assessment/task | タスク |
| Questionnaire | [EPathQuestionnaire](StructureDefinition-EPathQuestionnaire.html) | 0..* | ePathApply/event | 病日単位の患者用OATUnitから生成した入力フォーム、正規URLを持つ。該当するパスに対応するフォームが公開されているのであれば、バンドルに含める必要はない。PHRなどと適用後パスデータを連携する際にフォームも送信することを想定している。その際、親となるPlanDefinitionも送信すること。 |
| QuestionnaireResponse | [EPathQuestionnaireResponse](StructureDefinition-EPathQuestionnaireResponse.html) | 0..* |  | 病日単位の患者用OATUnitから生成した入力フォームの回答、Observation.derivedFrom から参照する。 |

<br/>

### リソース一意識別子
* 適用後パスデータバンドルの各リソースには、リソース一意識別子を設定する(SHALL)。<br/>

* リソース一意識別子 には、医療機関コード（10桁）、適用時パス識別子、病日、OATユニット識別子、観察項目識別子などを半角ピリオド（0x46）で結合した情報の設定を推奨する（表6）。

* 病日が存在しない場合は、代替えとなる病日・イベントレベルの一意識別子を設定する。

* パスステップを指定する場合、病日の後ろに半角ハイフン（0x45）で結合する。

* リピート番号を指定する場合、OATユニット識別子の後ろに半角ハイフン（0x45）で結合する。

<br/>

**表6 リソース一意識別子**

**表6-1 Pathメッセージ構造要素の説明**

| 階層  | ePathメッセージ構造要素 | 説明 | 
| ---- | ---- | ---- |
| 1 | 適用時パス識別子 | 患者適用したパスデータを一意に識別するID、患者適用時に一意な識別子の設定を必須とする。（オーダNoに相当する）別患者や同一患者の別入院時に適用したパスのIDと重複してはならない。 |
| 2 | 病日 | 入院日から起算した当イベントの日数。当日が1から始まる日数。入院日より過去を示す場合は-1(入院日前日)からの負数で表す。（値0は存在しない）施設パスおよび適用後パス、適用後パスデータについては上記の通りであるが、ひな型パスについてはOATユニットが設定された最初の日を1とし、その日から始まる日数となる。外来のケースにおいては、パス実施期間．開始日時の日を起算日とした当日が１から始まる日数を設定する。過去を示す場合は-1(開始日時の前日)からの負数で表す。また、4週後など日数が明確でない場合においても日数に換算して設定する。（値0は存在しない）|
| 2 | パスステップ | パスのステップ回数目、同一ステップにおける起算日等のステップ情報。複数の病日・イベント情報を一つのステップとして扱う場合、同一パスステップ内の項目値は全て同じ値を設定すること。 |
| 3 | OATユニット識別子 | OATユニットを一意に識別するID、テキスト表記のGUID、または当ひな型・データ内で一意となる任意のシンボル(例.「oat0001」)を設定する。一意性の保証を容易にするためにパス適用時以降はGUIDを設定することを推奨する。ひな型、施設パス、適用時、適用後とパス状態が遷移する中で、パスの状態をまだがって変更点を判別することから1度設定したOATユニットの識別子は変更しないものとする。 |
| 3 | リピート番号 | イベント・病日の概念のないアウトカムを同一アウトカムでグループ化する場合の繰り返しの連番。または同一イベント内に同一アウトカムが複数ある場合の繰り返しの連番。予定外区分(unscheduled)が「Y」の場合、全イベント内に存在する同一のアウトカムに対し各々1からの連番を重複がないよう設定する。予定外区分(unscheduled)が「Y」でない場合、当該イベント内に存在する同一のアウトカムに対し各々1からの連番を重複がないよう設定する。当該メッセージを外部出力等により確定させた場合、以後の修正において当項目値の変更および当該OATユニットの削除を行わないこと。 |
| 4 | 観察項目識別子 | 観察項目を一意に識別するために用いる情報である。割り当ての方法は任意とする。 |
| 4 | タスク識別子 | タスクを一意に識別するために用いる情報である。割り当ての方法は任意とする。 |
| 5 | 観察項目実施識別子 | 観察項目実施を一意に識別するために用いる情報である。割り当ての方法は任意とする。 |
| 6 | 観察結果識別子 | 観察結果を一意に識別するために用いる情報である。割り当ての方法は任意とする。 |

**表6-2 識別子の採番方法**

| 階層  | ePathメッセージ構造要素 | プロファイル | リソース一意識別子 |
| ---- | ---- | ---- | ---- |
| １ | パス適用情報 | [EPathCarePlanEPathApply](StructureDefinition-EPathCarePlanEPathApply.html) |医療機関コード.適用時パス識別子 |
| １ | パス適用 目標・評価情報 | [EPathGoalEPathApply](StructureDefinition-EPathGoalEPathApply.html) |  医療機関コード.適用時パス識別子 |
| ２ | 病日・イベント情報 | [EPathCarePlanEvent](StructureDefinition-EPathCarePlanEvent.html)  | 医療機関コード.適用時パス識別子.病日[-パスステップ] |
| ２ | 病日・イベント 目標・評価情報 | [EPathGoalEvent](StructureDefinition-EPathGoalEvent.html)  |  医療機関コード.適用時パス識別子.病日[-パスステップ] |
| ３ | OATユニット | [EPathCarePlanOATUnit](StructureDefinition-EPathCarePlanOATUnit.html)  | 医療機関コード.適用時パス識別子.病日[-パスステップ].OATユニット識別子[-リピート番号] |
| ３ | アウトカム 目標・評価情報 | [EPathGoalOutcome](StructureDefinition-EPathGoalOutcome.html)  |  医療機関コード.適用時パス識別子.病日[-パスステップ].OATユニット識別子[-リピート番号] |
| ４ | 観察項目 | [EPathCarePlanAssessment](StructureDefinition-EPathCarePlanAssessment.html)| 医療機関コード.適用時パス識別子.病日[-パスステップ].OATユニット識別子[-リピート番号].観察項目識別子 |
| ４ | タスク | [EPathProcedureTask](StructureDefinition-EPathProcedureTask.html) | 医療機関コード.適用時パス識別子.病日[-パスステップ].OATユニット識別子[-リピート番号].タスク識別子 |
| ５ | 観察項目実施 目標・評価情報  | [EPathCarePlanAssessment](StructureDefinition-EPathCarePlanAssessment.html) |  医療機関コード.適用時パス識別子.病日[-パスステップ].OATユニット識別子[-リピート番号].観察項目識別子.観察項目実施識別子 |
| ６ | 観察結果 | [EPathObservationExecution](StructureDefinition-EPathObservationExecution.html)  |  医療機関コード.適用時パス識別子.病日[-パスステップ].OATユニット識別子[-リピート番号].観察項目識別子.観察項目実施識別子.観察結果識別子 |
| * | 評価 | [EPathObservationEvaluation](StructureDefinition-EPathObservationEvaluation.html)  | 各階層に存在するため、目標・評価情報と同じ識別子を設定する。 |

**表6-3 識別子体系**

| 階層  | ePathメッセージ構造要素 | プロファイル | 識別子体系 |
| ---- | ---- | ---- | ---- |
| １ | パス適用情報 | [EPathCarePlanEPathApply](StructureDefinition-EPathCarePlanEPathApply.html)  | http://e-path.jp/fhir/ePath/IdSystem/apply-id |
| １ | パス適用 目標・評価情報 | [EPathGoalEPathApply](StructureDefinition-EPathGoalEPathApply.html) | http://e-path.jp/fhir/ePath/IdSystem/apply-goal-id |
| ２ | 病日・イベント情報 | [EPathCarePlanEvent](StructureDefinition-EPathCarePlanEvent.html)  | http://e-path.jp/fhir/ePath/IdSystem/event-id |
| ２ | 病日・イベント 目標・評価情報 | [EPathGoalEvent](StructureDefinition-EPathGoalEvent.html)  | http://e-path.jp/fhir/ePath/IdSystem/event-goal-id |
| ３ | OATユニット | [EPathCarePlanOATUnit](StructureDefinition-EPathCarePlanOATUnit.html)  | http://e-path.jp/fhir/ePath/IdSystem/oat-unit-id |
| ３ | アウトカム 目標・評価情報 | [EPathGoalOutcome](StructureDefinition-EPathGoalOutcome.html)  | http://e-path.jp/fhir/ePath/IdSystem/outcome-goal-id |
| ４ | 観察項目 | [EPathCarePlanAssessment](StructureDefinition-EPathCarePlanAssessment.html) | http://e-path.jp/fhir/ePath/IdSystem/assessment-id |
| ４ | タスク | [EPathProcedureTask](StructureDefinition-EPathProcedureTask.html) | http://e-path.jp/fhir/ePath/IdSystem/task-id |
| ５ | 観察項目実施 目標・評価情報  | [EPathGoalAssessmentExecution](StructureDefinition-EPathGoalAssessmentExecution.html) | http://e-path.jp/fhir/ePath/IdSystem/assessment-goal-id |
| ６ | 観察結果 | [EPathObservationExecution](StructureDefinition-EPathObservationExecution.html)  | http://e-path.jp/fhir/ePath/IdSystem/observation-result-id |
| * | 評価 | [EPathObservationEvaluation](StructureDefinition-EPathObservationEvaluation.html)  | http://e-path.jp/fhir/ePath/IdSystem/observation-evaluation-id |

<br/>

設定例）アウトカム CarePlan<br/>

	{
	  "system": "http://e-path.jp/fhir/core/IdSystem/resourceInstance-identifier",
	  "value": "2219999999.d45b4072-9302-4012-85c5-962b17cb2a001.1-1.OAT0-00-00000196-00000196-DAY"
	}

<br/>

### タスクのみのデータへの対応

本仕様において、タスクのみのデータの場合も観察項目（EPathCarePlanAssessment）を作成する。

その場合、観察項目のコードには[観察項目なし](CodeSystem-EPathAssessmentCodeEmptyCS.html) を設定する。

<br/>

### バンドル識別子

適用後パスデータを病日・イベント単位のバンドルに分割する場合、http://e-path.jp/fhir/ePath/IdSystem/apply-id と同じ内容を設定する。

	"identifier": {
		"system": "http://e-path.jp/fhir/ePath/IdSystem/ep12-bundle-id",
		"value": "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00",
		"assigner": {
			"identifier": {
				"system": "http://jpfhir.jp/fhir/core/IdSystem/insurance-medical-institution-no",
				"value": "4311234567"
			}
		}
	}

<br/>

### Bundle.meta.tag

* 「用途種別」は meta.tag 要素に設定する。

* 「用途種別」は meta.tag.system に http://e-path.jp/fhir/core/CodeSystem/EPathUsesTypeCS を指定する。

設定例）<br/>

	{
	  "resourceType": "Bundle",
	  "meta": {
	    "lastUpdated": "2025-10-10T11:59:15.447+09:00",
	    "profile": [
	      "http://e-path.jp/fhir/core/StructureDefinition/EPathBundleMessageEP12"
	    ],
	    "tag": [
	      {
	        "system": "http://e-path.jp/fhir/core/CodeSystem/EPathUsesTypeCS",
	        "code": "BRIDGE"
	      }
	    ]
	 ...
	}

  ※BRIDGE: BRIDGE（研究開発とSociety 5.0との橋渡しプログラム）対象施策「医療デジタルツインの発展に資するデジタル医療データバンク構想」事業
	
<br/>

### 内部参照に関する注意

contained内のリソースから別のcontained内のリソースへ内部参照を行う場合、サーバが許容しない場合がある。その場合は、参照元リソースの type と display のみを設定する。

#### contained内のObservation.performerからcontained内のPractitinerを内部参照する場合

		"contained" : [
          {
            "resourceType" : "Practitioner",
            "id" : "performer",
            "meta" : {
              "profile" : [
                🔗 "http://e-path.jp/fhir/ePath/StructureDefinition/EPathPractitioner"
              ]
            },
            "name" : [
              {
                "text" : "記録者"
              }
            ]
          },
          {
            "resourceType" : "Observation",
            "id" : "evaluation",
			...
            "performer" : [
              {
                "reference" : "#performer",
                "type" : "Practitioner",
                "display" : "記録者"
              }
            ]
          }
        ]

#### contained内のObservation.performerに type と display のみを設定する場合

		"contained" : [
          {
            "resourceType" : "Observation",
            "id" : "evaluation",
			...
            "performer" : [
              {
                "type" : "Practitioner",
                "display" : "記録者"
              },
			　{
                "type" : "PractitionerRole",
                "display" : "医師"
              }
            ]
          }
        ]

<font style="color:gray;">Presented by ePath Project</font>