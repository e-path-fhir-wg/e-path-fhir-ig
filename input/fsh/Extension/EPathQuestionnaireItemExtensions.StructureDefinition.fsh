Alias: $EPathYNIdentificationVS = http://e-path.jp/fhir/ePath/ValueSet/EPathYNIdentificationVS
Alias: $EPathRoundingTypeVS = http://e-path.jp/fhir/ePath/ValueSet/EPathRoundingTypeVS

Extension: EPathQuestionnaireItemExtensions
Id: EPathQuestionnaireItemExtensions
Title: "EPath Questionnaire ItemExtensions"
Description: "観察項目結果値定義（入力フォームコントロール）"
Context: Questionnaire.item
* . ^short = "観察項目結果値定義"
* . ^definition = "観察項目結果値の値型、桁数、選択値、最大・最小値等の属性や制約を定めた情報。\r\n設定可能な内容や表現方法は施設・運用主体等のローカル内で定め、これに則り設定する。"
* extension contains
    Digits 0..1 and
    InputControl 0..1 and
    Format 0..1 and
    Unit 0..1 and
    ValueRangeMin 0..1 and
    ValueRangeMax 0..1 and
    Required 0..1 and
    Rounding 0..1 and
    AllowInvalidValue 0..1 and
    VisibleCondition 0..1 and
    AutoCalc 0..1 and
    CalcFormula 0..1 and
    InputUserRestriction 0..1 and
    Approval 0..1 and
    Description 0..1
* extension[Digits] ^short = "値桁数"
* extension[Digits] ^definition = "結果値の有効桁数。"
* extension[Digits].value[x] 1..
* extension[Digits].value[x] only decimal
* extension[InputControl] ^short = "結果値を入力するコントロールの種類。原則として Questionnaire.item.type に設定し、この拡張は独自の値入力コントロール種別（小分類）がある場合に使用する。"
* extension[InputControl] ^definition = "結果値を入力するコントロールの種類。原則として Questionnaire.item.type に設定し、この拡張は独自の値入力コントロール種別（小分類）がある場合に使用する。\r\n例）ラジオボタン、チェックボックス"
* extension[InputControl].value[x] from QuestionnaireItemType (example)
* extension[InputControl].value[x] 1..
* extension[InputControl].value[x] only code
* extension[Format] ^short = "値書式"
* extension[Format] ^definition = "結果値の書式。\r\n例）「日付」型の場合に「YYYY-MM-DD」"
* extension[Format].value[x] 1..
* extension[Format].value[x] only string
* extension[Unit] ^short = "値単位"
* extension[Unit] ^definition = "結果値の単位。"
* extension[Unit].value[x] 1..
* extension[Unit].value[x] only string
* extension[ValueRangeMin] ^short = "値範囲 最小値"
* extension[ValueRangeMin] ^definition = "結果値の許容最小値。"
* extension[ValueRangeMin].value[x] 1..
* extension[ValueRangeMin].value[x] only string
* extension[ValueRangeMax] ^short = "値範囲 最大値"
* extension[ValueRangeMax] ^definition = "結果値の許容最大値。"
* extension[ValueRangeMax].value[x] 1..
* extension[ValueRangeMax].value[x] only string
* extension[Required] ^short = "必須"
* extension[Required] ^definition = "結果値の入力が必須であるかの識別。"
* extension[Required].value[x] 1..
* extension[Required].value[x] only code
* extension[Required].value[x] from $EPathYNIdentificationVS (example)
* extension[Rounding] ^short = "値丸め"
* extension[Rounding] ^definition = "導入元の数値を結果値に入力する際、四捨五入等の丸めが必要である場合の指示。"
* extension[Rounding].value[x] 1..
* extension[Rounding].value[x] only code
* extension[Rounding].value[x] from $EPathRoundingTypeVS (example)
* extension[AllowInvalidValue] ^short = "不適切値設定許可"
* extension[AllowInvalidValue].value[x] 1..
* extension[AllowInvalidValue].value[x] only code
* extension[AllowInvalidValue].value[x] from $EPathYNIdentificationVS (example)
* extension[AllowInvalidValue].value[x] ^short = "不適切値設定許可"
* extension[AllowInvalidValue].value[x] ^definition = "入力値が指定範囲にない等の不適切値な値であっても値の設定を認めるかの識別。"
* extension[VisibleCondition] ^short = "項目表示条件"
* extension[VisibleCondition] ^definition = "当項目が他の項目値によって表示・有効となる条件がある場合の指示。"
* extension[VisibleCondition].value[x] 1..
* extension[VisibleCondition].value[x] only string
* extension[AutoCalc] ^short = "自動計算指示"
* extension[AutoCalc] ^definition = "結果値を計算式から自動計算する場合の指示。"
* extension[AutoCalc].value[x] 1..
* extension[AutoCalc].value[x] only code
* extension[AutoCalc].value[x] from $EPathYNIdentificationVS (example)
* extension[CalcFormula] ^short = "計算式"
* extension[CalcFormula] ^definition = "結果値を自動計算する場合の計算式。"
* extension[CalcFormula].value[x] 1..
* extension[CalcFormula].value[x] only string
* extension[InputUserRestriction] ^short = "入力者制限"
* extension[InputUserRestriction] ^definition = "結果値の入力が行える人、職種等の制限。"
* extension[InputUserRestriction].value[x] 1..
* extension[InputUserRestriction].value[x] only code or string
* extension[Approval] ^short = "承認要否"
* extension[Approval] ^definition = "結果値の設定に承認を必要とするかを識別する区分。"
* extension[Approval].value[x] from $EPathYNIdentificationVS (example)
* extension[Approval].value[x] 1..
* extension[Approval].value[x] only code
* extension[Description] ^short = "説明"
* extension[Description] ^definition = "項目の説明や例示。"
* extension[Description].value[x] 1..
* extension[Description].value[x] only string