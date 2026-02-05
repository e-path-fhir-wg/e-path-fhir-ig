### はじめに

この実装ガイドは、ePathメッセージ構造をHL7FHIR R4に表現するための最小限の適合性要件を定めたものである。

ePathメッセージ構造の仕様は、[ePathのデータ要素と構造に関する仕様書（Ver.1.2.0）](https://www.jami.jp/jamistd/standards/)を参照のこと。

**ePathプロジェクトについてはこちらを参照**

- [ePathプロジェクト総合サイト（準備中）](https://e-path.jp/prjt.html)


### 本実装ガイドの適用範囲

（1）	HL7&reg;FHIR&reg;R4 版 ePathデータ構造 ひな型パス<br/>
（2）	HL7&reg;FHIR&reg;R4 版 ePathデータ構造 施設パス<br/>
（3）	HL7&reg;FHIR&reg;R4 版 ePathデータ構造 適用後パスデータ<br/>

付録1. HL7&reg;FHIR&reg;R4 版 ePath FHIRリポジトリ<br/>
付録2. 患者用入力フォーム<br/>
付録3. トランザクション<br/>

インターフェースについては、本仕様では規定しない（付録とする）。
また、ファイル形式、文字集合・符号化形式についても本仕様では規定せず参照するFHIR仕様（HL7FHIR R4 Ver.4.0.1、および JP Core 実装ガイド）に従うものとする。

### 本実装ガイドの構成

- ガイダンス
    - [総合ガイダンス](guide.html)
    - [Must SupportとCardinality](guide-msandcard.html)
    - [XML定義との差異](guide-difference.html)
    - [欠損値の扱い](guide-missingval.html)
    - [使用上の注意点](guide-precautions.html)
    - [改訂履歴](history.html)
- ePath FHIR 仕様
    - [ePathデータ構造 ひな型パス](epathte.html)
    - [ePathデータ構造 施設パス](epathte2.html)
    - [ePathデータ構造 適用後パスデータ](epathst.html)
    - [付録１．ePath FHIRリポジトリ](epathre.html)
    - [付録２．患者用入力フォーム](epathqu.html)
    - [付録３．トランザクション](epathtran.html)
    
### 参考規格・文献

* [ePathのデータ要素と構造に関する仕様書（日本医療情報学会）](https://www.jami.jp/jamistd/standards/)

* [患者状態アウトカム用語集ベーシックアウトカムマスター（日本クリニカルパス学会）](http://www.jscp.gr.jp/bom.html)

* [標準クリニカルパスコード（日本医療情報学会・日本クリニカルパス学会合同委員会）](https://e-path.jp)

* [HL7FHIR R4 Ver.4.0.1](http://hl7.org/fhir/index.html) 本仕様書では FHIR 基底仕様という。
 
* [HL7 FHIR JP Core Implementation Guide(JP Core 実装ガイド)](https://jpfhir.jp/fhir/core/)

<br/>

<font style="color:gray;">Presented by ePath Project</font>

 