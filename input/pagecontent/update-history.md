### 履歴の記載方針
    掲載にあたっては、内容の変更に関わらない修正（リンク切れの修正、表示体裁、表現修正、レイアウト変更、小さな説明追加、
    少数の事例追加など）の履歴は含まない。また、より正確なValidationを可能とするためのProfile記述方法の変更履歴も含まない。
    
    トップページの日付が更新されているのにバージョン番号の変更がない場合には、上記のような内容の変更に関わらない修正があったことを示す。
    

### 改訂内容

***ver.1.0.1 (2026/02/19版)*** 


【修正内容】  

* スペルミスの修正: `PlanDifinition`, `PlanDefinition`

* スペルミスの修正: `CapablityStatement`, `CapabilityStatement`

* スペルミスの修正: `packgage.json`, `package.json`

* サンプルデータファイルの修正: Observation.performer未設定に関する警告などに対応しました。

* サンプルデータファイルの修正に伴い、ignoreWarnings.txtの修正を行いました。

<br/>

***ver.1.0.1 (2025/12/05版)*** 


【修正内容】  
本バージョンの修正内容は、有識者によるコメントおよび指摘を受けての修正が大部分を占めている関係から、指摘事項に対する修正内容のような表記にしております。
* Gビルドのエラー・警告：定義リソースの修正および、ignoreWarnigへの記載を行いました。

* JP Coreパッケージバージョン:JP Coreパッケージは1.1.2、用語は1.5.0を採用します。各パッケージの最新バージョンを取得しました。

*  IGビルドのエラー・警告に伴う定義リソースのid/url 対応:idとurlは同一の文字列を設定した。フォーマットは「スネークケースとアッパーキャメルケースの混在」から「アッパーキャメルケース」としました。それに伴い、sushi-config.yamlのspecial url を削除しました。 

* MSの付与基準:MSの付与基準をIGに明記した。JP Coreのものを参考にしました。

* 評価のリソース化: Observationリソースを採用し、EPathObservationEvaluationプロファイルを追加しました。SOAP、総合評価テキストはそれを示すためのコード体系を設け、Observation.valueStringやObservation.component.valueStringに設定することとしました。

* 評価者・実施者のリソース化:氏名（@name）をPractitioner、職種（@job）をPractirionerRoleとしました。インラインでの参照を想定しています。

* URLにOIDが使われている:OIDの箇所をURLに変更しました。患者IDの識別子体系についてはOIDを残しました。

* 独自の拡張の削減:評価、評価者・実施者のリソース化に伴い、意味が重複する拡張は削除しました。

* ValueSet バインディングの追加:BOM、Extensionに関して、ValueSet バインディングを追加しました。

* 適応基準テキスト拡張の値:valueString のみとしました。

* 診療科拡張:リソース化も検討しましたが拡張を用います。理由は主要なリソースがOrganizationを参照できないためです。JP-CLINSも拡張となっています。

* スペルミスの修正: `JP Core`, `organization`

* 依存関係、利用している知的財産の表示:pagecontents の md （総合ガイダンス）に追加しました。

* 一意識別子のルール:各リソースごとに識別子の設定仕様を明確化した。識別子のNamingSystemを追加しました。また、定義リソースからパス識別子や病日、パスステップを除外しました。

* CarePlanリソースにおける ひな型、施設パスの識別子の廃止:CarePlan.instantiatesCanonicalから、ひな型ののPlanDefinitionの正規URLを参照するよう変更しました。

* 説明文書:説明文書を追加しました。

* meta.profile:カーディナリティを1..* MS としました。

* tagのカーディナリティ:カーディナリティを0..としました。また、StatusTypeは不要なため廃止しました。

* activity.detail機能の無効化解除:activity.detail機能の無効化を解除しました。

* activity.outcomeReference機能の多重度限定、などCard.の緩和について:制限を緩和しました。

* PlanDefinition.action.definition:PlanDefinition（ひな型）.action.definition[x] から 病日イベントレベルのPlanDefinition や Questionnaire などを参照できるよう修正しました。

* 項目追加:リソースプロファイルの「EPath PlanDefinition EP01」「EPath PlanDefinition EP02」に項目「action.timingTiming」の記述を追加しました。

* 例示追加:「付録１．ePath FHIRリポジトリ」に「ePathリポジトリ機能定義（Capability Statement）の実装例」を追加しました。

* 例示追加:「付録２．患者用入力フォーム」に「入力のタイミングの指示」を追加しました。

* 項目記述修正:拡張項目の「リピート番号(EPath CarePlan RepeatNo)」、「パスステップ回数目(EPath CarePlan PathStep)」のvalue[x]が必須となるようカーディナリティ1..1に修正しました。

* 項目記述修正:拡張項目の「予定外区分(EPath CarePlan UnplannedKind)」のvalue[x]のコード値のバリュセットにYN(EPath YNIDentification VS)をrequiredとして指定するよう修正しました。

* 例図差し替え: ePathデータ構造におけるモデル図の画像を差し替えました。

* 例示追加:「付録３．トランザクション」を追加ました。

* 定義の修正:<br/>・EPath CarePlan Assessmentにパス状態区分がなかったため追加しました。<br>・EPathYNIDentificationVS→EPathYNIdentificationVS 記述修正しました。<br/>・Bundle.entry中のencounterのカーディナリティ変更（0..1 → 0..*）しました。<br/>（他） 

* ライセンス記載の修正:ライセンス「Copuright/Legal」の記載において以下の通り修正しました。<br>・IGの仕様に係る記載： Joint Committee of JAMI and JSCP（日本医療情報学会と日本クリニカルパス学会との合同委員会<br/>・BOMマスタに係る記載： 一般社団法人 日本クリニカルパス学会

* 定義の修正:<br/>・ローカルコードのスライスを明示的に追加しました<br/>・LHS/外来パス用のアウトカムコード、アセスメントコードのコード体系をNamingSystemとして追加しました。<br/>・OAT配下のアウトカムコード、アセスメントコードの項目に説明を追加しました。

* IGソースのhistory.md→update-history.mdにしました。

<br/>

***ver.1.0.0 (2025/09/25版)***   

【修正内容】

* 前バージョンver.1.0.0 (2025/06/23版)において、ビルドエラー(`QA.html`)が残っていたため、これらのエラーを解消するよう対応しました。


【修正に関する留意点】

* id/urlの不整合のエラー対応は、URL記述で使用していた「_」を「-」に置き換える対応も考えましたが、JPCore/JPCLINSと同様の方法であるエラーとならないための設定special-urlを設けることとしました。

* コードシステムのURL解決に関する警告（「ターミノロジー関連でBOMなどのリソース化（コード定義の明示化）が必要」等）が発生していますが、マスタに関してはBOMのコード・名称内容を記載するは難しい（有償マスタである点やメンテンナンス負荷等の配慮が必要）ことから警告が含まったままとしています。

* サンプルデータにコードシステムのURL解決に関する警告が発生しているが、ローカル環境でのビルドという点とサンプルデータ内のreferenceのリンク先は必ずしも実在し得ない考えより、当警告は編集コメントを加えた形で警告が存在したままとしています。

* タスク分類のValueSet（EPath_TaskCategory_VS）は「ePathのデータ要素と構造に関する仕様書Ver1.2.0」と併せている関係から警告が残ったままとなっております（ValueSetにローカルコードなど、仕様書に記載されていないコードが含まれていたため）。

<br/>


***ver.1.0.0 (2025/06/23版)***  

【修正内容】

* 初版公開


<br/>


***ver.0.0.4 ドラフト (2025/03/21版)***  

【修正内容】

* ePath FHIR IG策定のWGメンバー内にて暫定ドラフトを限定公開


<br/>
<br/>

<font style="color:gray;">Presented by ePath Project</font>
