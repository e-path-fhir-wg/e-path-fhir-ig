# ePath HL7 FHIR R4 実装ガイド定義

## プロジェクト概要

ePathにおけるHL7 FHIR R4 実装ガイド（IG）を定義するためのソースコードリポジトリです。  
本リポジトリでは FHIR Shorthand (FSH) を用いてプロファイルや定義ファイルを管理しています。  
本プロジェクトのビルド結果となる実装ガイドは[ePathプロジェクトサイト](https://e-path.jp/fhir/ePath/)で公開されています。

## 開発環境のセットアップ

本プロジェクトをローカルでビルドするには以下のツールが必要です。

### 1. Java JDK

IG Publisherの動作に必要です。JDK 11以上のインストールを推奨します。

* OracleやAdoptium等のサイトからインストーラーをダウンロードしてインストールしてください。

### 2. Node.js & SUSHI

FHIR Shorthand (FSH) をコンパイルするために必要です。

1. Node.js公式サイトからLTS版をインストールしてください。
2. ターミナル（コマンドプロンプト）で以下のコマンドを実行し、SUSHIをインストールします。
```bash
npm install -g fsh-sushi
```

### 3. Jekyll

生成されたサイトのデザインを完全に再現・プレビューする場合に推奨されます。

* [Jekyll公式サイト](https://jekyllrb.com/)の手順に従ってインストールしてください。


## 依存関係パッケージの手動配置

自動ダウンロードのエラーを防ぐため、依存するJP Core等のパッケージを手動で入手し、FHIRキャッシュフォルダに配置します。

### 1. 配置先フォルダの確認

以下のパスを開きます（フォルダがない場合は作成してください）。

* **Windows:** `C:\Users\<ユーザー名>\.fhir\packages`
* **Mac/Linux:** `~/.fhir/packages`

### 2. パッケージの入手と配置

以下の2つのパッケージをダウンロードし、指定のフォルダ名で配置・解凍してください。

#### A. JP Core (ver 1.1.2)

* **入手:** [JP Core FHIR実装ガイド インデックスページ](https://jpfhir.jp/fhir/core/)の v1.1.2 に該当するPackage(カメラアイコン：Snapshot)リンク、または `https://jpfhir.jp/fhir/core/1.1.2/jp-core.r4-1.1.2-snap.tgz` からダウンロードします。
* **配置:**
1. `.fhir/packages` 内に **`jp-core.r4#1.1.2`** という名前のフォルダを作成します。
2. その中に `package.tgz` を解凍します。


#### B. JP FHIR Terminology (ver 1.5.0)

* **入手:**  `https://jpfhir.jp/fhir/core/terminology/jpfhir-terminology.r4-1.5.0.tgz` からダウンロードします。
* **配置:**
1. `.fhir/packages` 内に **`jpfhir-terminology.r4#1.5.0`** という名前のフォルダを作成します。
2. その中に `package.tgz` を解凍します。


### 3. フォルダ構成の確認（重要）

配置後、フォルダ構成が以下のようになっていることを確認してください。フォルダ名が一文字でも異なると認識されません。

```text
.fhir/
 └─ packages/
     ├─ jp-core.r4#1.1.2/
     │   └─ package/
     │       ├─ package.json
     │       └─ ... (その他のファイル)
     │
     └─ jpfhir-terminology.r4#1.5.0/
         └─ package/
             ├─ package.json
             └─ ... (その他のファイル)

```

※ 解凍ソフトによっては `package` フォルダが作成されず、ファイルが散乱する場合があります。その際は手動で `package` フォルダを作成し、その中に `package.json` 等を入れてください。


## IG Publisherの最新化

以下のスクリプトを実行してください。最新のビルドツールがダウンロードされます。

* **Windows:**
```cmd
_updatePublisher.bat
```


* **Mac / Linux:**
```bash
./_updatePublisher.sh
```


## ビルド方法
以下のスクリプトを実行してください。IGの生成を開始します。


* **Windows:**
```cmd
_genonce.bat
```


* **Mac / Linux:**
```bash
./_genonce.sh
```

※ 初回実行時はファイルのロードに時間がかかる場合があります。

## 成果物の確認

ビルドが完了（`Build complete`と表示）したら、生成物を確認します。

1. プロジェクト内の `output` フォルダを開きます。
2. `index.html` をブラウザで開きます。
3. 以下の点が正しいか確認してください。
* タイトルが「ePath R4 実装ガイド - ePath R4 Implementation Guide v1.0.1」であること。
* `output/qa.html`でエラー（意図的にコメントが付与されているものは無視してください）が発生していないか。
## トラブルシューティング

**Q. Javaのメモリ不足エラー（OutOfMemoryError）が出る**
大規模なIGのビルドではメモリが多く必要です。`_genonce.bat`（または `.sh`）をテキストエディタで開き、Javaのメモリ設定を変更してください。

* 変更前: `-Xmx2g` (例)
* 変更後: `-Xmx4g` または `-Xmx8g`

**Q. SUSHIのエラーが出る**
SUSHIのバージョンが古い可能性があります。以下で更新してください。

```bash
npm update -g fsh-sushi
```


## ライセンス

本リポジトリのコードは [CC0-1.0](LICENSE) ライセンスの下で公開されています。
