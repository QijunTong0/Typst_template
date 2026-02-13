# 概要

Typstのテンプレートレポジトリです。
テンプレートとなるいくつかのtypファイルと自動フォーマット機能を提供します。

## 環境構築

このプロジェクトをビルドするには、[Typst](https://github.com/typst/typst) と [typstyle](https://github.com/typstyle-rs/typstylee) が必要です。

お使いの環境に応じて、以下の方法でインストールしてください。

### Typstのインストール

**macOS (Homebrew):**
```bash
brew install typst
```

**Windows (Winget):**
```bash
winget install --id Typst.Typst
```

**Linux (Snap):**
```bash
snap install typst
```

または、[GitHubリリースページ](https://github.com/typst/typst/releases)からバイナリをダウンロードすることもできます。

### typstyleのインストール

**macOS (Homebrew):**
```bash
brew install typstyle
```

**Cargo (Rust toolchain):**
```bash
cargo install typstyle
```

### VS Codeの推奨設定

[Visual Studio Code](https://code.microsoft.com/) をお使いの場合、拡張機能 [Run on Save](https://marketplace.visualstudio.com/items?itemName=emeraldwalk.RunOnSave) をインストールすることで、ファイルを保存するたびに自動でフォーマットとコンパイルを実行できます。

1.  VS Codeで `Run on Save` 拡張機能 (ID: `emeraldwalk.RunOnSave`) をインストールします。
これにより、`.typ` ファイルを保存するたびに `format_compile.sh` が実行され、自動でPDFが更新されます。

## 使用方法


### 実行権限の付与

最初に、スクリプトに実行権限を付与してください。

```bash
chmod +x ./format_compile.sh
```

### フォーマットとコンパイル

リポジトリには、フォーマットとコンパイルを一度に行うためのスクリプトが含まれています。

```bash
./format_compile.sh main.typ
```

これにより、`main.typ`がフォーマットされ、`main.pdf`としてコンパイルされます。

---

# Overview(English Version)

This is a Typst template repository. It provides several template .typ files and an auto-formatting feature.

**The auto-formatter automatically inserts spaces before and after inline math expressions, eliminating the need for manual spacing adjustments.**

## Environment Setup

To build this project, you need [Typst](https://github.com/typst/typst) and [typstyle](https://github.com/typstyle-rs/typstylee).

Please install them according to your environment using one of the following methods.

### Installing Typst

**macOS (Homebrew):**
```bash
brew install typst
```

**Windows (Winget):**
```bash
winget install --id Typst.Typst
```

**Linux (Snap):**
```bash
snap install typst
```

Alternatively, you can download the binaries from the [GitHub releases page](https://github.com/typst/typst/releases).

### Installing typstyle

**macOS (Homebrew):**
```bash
brew install typstyle
```

**Cargo (Rust toolchain):**
```bash
cargo install typstyle
```

### Recommended VS Code Setup

If you are using [Visual Studio Code](https.com/microsoft.com/), you can install the [Run on Save](https://marketplace.visualstudio.com/items?itemName=emeraldwalk.RunOnSave) extension to automatically format and compile files every time you save.

1.  In VS Code, install the `Run on Save` extension (ID: `emeraldwalk.RunOnSave`).
This will run `format_compile.sh` every time a `.typ` file is saved, automatically updating the PDF.

## Usage


### Granting Execution Permissions

First, grant execution permissions to the script.

```bash
chmod +x ./format_compile.sh
```

### Formatting and Compiling

The repository includes a script to format and compile at the same time.

```bash
./format_compile.sh main.typ
```

This will format `main.typ` and compile it into `main.pdf`.
