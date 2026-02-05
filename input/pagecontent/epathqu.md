患者用入力フォームと回答、およびその連携方法について説明する。<br/>

* 患者用入力フォームは外来パスなどをターゲットとし、ひな型パス、および施設パスに設定された「患者用OATUnit」などの内容を Questionnaire（[EPathQuestionnaire](StructureDefinition-EPathQuestionnaire.html)）リソースにマッピングしたものを表す。

* 患者用入力フォーム（[EPathQuestionnaire](StructureDefinition-EPathQuestionnaire.html)）は [適用後パスデータバンドル（Bundle）](StructureDefinition-EPathBundleMessageEP12.html) に含めることができる。

* PHRなどで患者用入力フォームに入力された回答は QuestionnaireResponse（[EPathQuestionnaireResponse](StructureDefinition-EPathQuestionnaireResponse.html)）リソースとして出力する。

* [入力フォーム回答の返信バンドル（Bundle）](StructureDefinition-EPathBundleMessageEP22.html) を使用すると複数の回答を一度に連携することができる。

患者入力フォーム（Questionnaire）を加味したひな型パス、施設パス、適用後パスにおけるパス内容の変化を図8に示す。

<div>
	<img src="questionnaire-flow.png" />
</div>
<div>図8 ひな型パス、施設パス、適用後パスにおけるパス内容の変化</div>

<br/>

### 患者入力フォームと回答に関する制約

* 患者入力フォームは病日イベント単位で管理する(SHOULD)。

* 回答から、反映先となる適用後パスデータバンドル（Bundle）を抽出できなければならない(SHALL)。

* 回答を適用後パスデータに反映する場合、観察項目実施、およびその配下の Observation（[EPathObservationExecution](StructureDefinition-EPathObservationExecution.html)）リソース、またはOATユニット配下の Observation（[EPathObservationExecution](StructureDefinition-EPathObservationExecution.html)）リソースとして追加（上書き）する。

<br/>

### Questionnaire.item.linkId

Questionnaire.item.linkId は、Questionnaire.item に対応する QuestionnaireResponse.item の特定に用いる。

#### Questionnaire.item.linkId に関する制約

* Questionnaire.item.linkId（入力フォーム）は入力フォーム内で一意でなければならない(SHALL)。

* Questionnaire.item.linkId（入力フォーム）とそれに対する QuestionnaireResponse.item.linkId（入力フォームの回答）には同じ値を設定しなければならない(SHALL)。

例えば、OATユニット識別子[-リピート番号]、観察項目識別子を半角ピリオド（0x46）で連結したものを設定する。観察項目識別子は観察項目レベルで一意の識別子を設定すること。


* Questionnaire 設定例

        "item": [
          {
            "linkId": "OA0001-DAY",
            "code": [
              {
                "system": "http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMOutcomeCodeCS,
                "code": "OA0001",
                "display": "食事管理ができている（炭水化物）"
              }
            ],
            "text": "食事管理ができている（炭水化物）",
            "type": "group",
            "item": [
              {
                "linkId": "OA0001-DAY.9990000100",
                "code": [
                  {
                    "system": "http://e-path.jp/fhir/ePath/CodeSystem/EPathBOMAssessmentCodeCS",
                    "code": "9990000100",
                    "display": "今日、ご飯のおかわりやラーメン・うどんを大盛りにしましたか"
                  }
                ],
                "text": "今日、ご飯のおかわりやラーメン・うどんを大盛りにしましたか",
                "type": "choice",
                "answerOption": [
                  {
                    "valueCoding": {
                      "system": "http://e-path.jp/fhir/ePath/CodeSystem/EPathYNIdentificationCS",
                      "code": "Y",
                      "display": "Yes"
                    }
                  },
                  {
                    "valueCoding": {
                      "system": "http://e-path.jp/fhir/ePath/CodeSystem/EPathYNIdentificationCS",
                      "code": "N",
                      "display": "No"
                    }
                  }
                ]
              }
            ]
          }
        ]

<br/>

* QuestionnaireResponse 設定例

        "item": [
          {
            "linkId": "OA0001-DAY",
            "text": "食事管理ができている（炭水化物）",
            "item": [
             {
               "linkId": "OA0001-DAY.9990000100",
               "text": "今日、ご飯のおかわりやラーメン・うどんを大盛りにしましたか",
               "answer": [
                "valueCoding": {
                  "system": "http://e-path.jp/fhir/ePath/CodeSystem/EPathYNIdentificationCS",
                  "code": "Y",
                  "display": "Yes"
                }
              ]
            }
          },
          {
            "linkId": "OA0001-MID",
            "text": "食事管理ができている（炭水化物）",
            "item": [
             {
               "linkId": "OA0001-MID.9990000100",
               "text": "今日、ご飯のおかわりやラーメン・うどんを大盛りにしましたか",
               "answer": [
                "valueCoding": {
                  "system": "http://e-path.jp/fhir/ePath/CodeSystem/EPathYNIdentificationCS",
                  "code": "N",
                  "display": "No"
                }
              ]
            }
          }
        ]
    
<br/>

#### QuestionnaireResponse.basedOn

* 回答の反映先を特定するために、パス適用情報の一意識別子、病日・イベント情報の一意識別子を設定する。

        "basedOn": [
            {
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
            },
            {
              "identifier": {
                "system": "http://e-path.jp/fhir/ePath/IdSystem/event-id",
                "value": "4311234567.d45b4072-9302-4012-85c5-962b17cb2a00.1-1"
              }
            }
        ]

<br/>

### 入力のタイミングの指示

患者入力フォームを入力するタイミングの指示（例えば「月水金に入力する」など）は、ひな型パス（[EPathPlanDefinitionEP01](StructureDefinition-EPathPlanDefinitionEP01.html)）や 施設パス（[EPathPlanDefinitionEP02](StructureDefinition-EPathPlanDefinitionEP02.html)）の action.timingTiming に設定する。

#### タイミングの設定例

**月水金、各曜日の朝昼夕に入力する**

    "timingTiming": {
      "repeat": {
        "dayOfWeek": [ "mon", "wed", "fri" ],
        "when": [ "CM", "CD", "CV" ]
      }
    }

**7日間、毎日入力する**

    "timingTiming": {
      "repeat": {
        "frequency": 1,
        "period": 7,
        "periodUnit": "d"
      }
    }

患者入力フォームを[適用後パスデータバンドル（Bundle）](StructureDefinition-EPathBundleMessageEP12.html) に格納し、データ連携を行う場合、適用後パスデータバンドル受信側は、バンドルに格納された施設パス（[EPathPlanDefinitionEP02](StructureDefinition-EPathPlanDefinitionEP02.html) ）の action.timingTiming を参照し、入力のタイミングを決定することができる。

指定のタイミングで入力すべき患者用入力フォーム（[EPathQuestionnaire](StructureDefinition-EPathQuestionnaire.html)）は、PlanDefinition.action.definition[x]から参照する（同じ患者入力フォームを再利用可）。

<br/>

### 適用後パスデータに入力フォーム回答を反映する

#### Observation.derivedFrom

入力フォーム回答と観察項目のひもづけは、Observation.derivedFrom を設定する。

これは [評価（EPathObservationEvaluation）](StructureDefinition-EPathObservationEvaluation.html)、[観察結果（EPathObservationExecution）](StructureDefinition-EPathObservationExecution.html) のいずれにも設定することができる。

ひもづけは、識別子（identifier）、参照（reference）のいずれかを用いて回答（QuestionnaireResponse）単位で設定する。

**識別子**

        "derivedFrom": [
            {
                "identifier": {
                    "system": "http://e-path.jp/fhir/ePath/IdSystem/quis-response-id",
                    "value": "quis-12345"
                }
            }
        ]

**参照**

        "derivedFrom": [
            {
              "reference": "QuestionnaireResponse/quis-12345"
            }
        ]


#### 入力フォームを観察結果（Observation）として取り込む場合

QuestionnaireResponseの入力値は、[観察結果（EPathObservationExecution）](StructureDefinition-EPathObservationExecution.html) として適用後パスデータに取り込んでもよい（[Provide and Request Register Multiple \[QSR-04\] 参照](epathtran.html)）(MAY)。

QuestionnaireResponseの入力値を適用後パスデータに取り込む場合、対象のQuestionnaireResponseから発生したObservationをすべて書き換えたうえで、Observation.derivedFrom を設定する。

#### 入力フォームを観察結果（Observation）として取り込まない場合

QuestionnaireResponseの入力値を [観察結果（EPathObservationExecution）](StructureDefinition-EPathObservationExecution.html) として取り込まない場合は、QuestionnaireResponseを[適用後パスデータバンドル（Bundle）](StructureDefinition-EPathBundleMessageEP12.html) のエントリに含めるとともに病日・イベント単位の [評価（EPathObservationEvaluation）](StructureDefinition-EPathObservationEvaluation.html)の Observation.derivedFrom を設定する。

<br/>

<font style="color:gray;">Presented by ePath Project</font>
