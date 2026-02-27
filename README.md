# Typst テンプレートリポジトリ

Typst を使った学術文書作成のためのテンプレート集です。英語・日本語の論文、スライド、ポスターに対応したテンプレートを提供します。

## 推奨環境：Visual Studio Code

このリポジトリは **VSCode** での使用を推奨しています。リポジトリを開くと、推奨拡張機能のインストールを促されます。

### 推奨拡張機能

| 拡張機能 | 説明 |
|---|---|
| [Tinymist Typst](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) | シンタックスハイライト、補完、リアルタイムプレビュー、フォーマット |

VSCode が自動でインストールを提案しますが、手動でインストールする場合は以下のコマンドを使用してください。

```bash
code --install-extension myriad-dreamin.tinymist
```

### VSCode 設定

`.vscode/settings.json` により以下が自動設定されます。

- フォーマッタ：[typstyle](https://github.com/Enter-tainer/typstyle)（保存時に自動整形）
- PDF 出力：保存時に自動エクスポート

## リポジトリ構成

```
.
├── main.typ                  # メインファイル（ここを編集して使う）
├── templates/                # テンプレート定義ファイル
│   ├── article_en.typ        # 英語論文テンプレート
│   ├── article_ja.typ        # 日本語論文テンプレート
│   ├── poster.typ            # ポスターテンプレート
│   └── slide_visual.typ      # スライドテンプレート
├── samples/                  # 各テンプレートの使用例
│   ├── article_en.typ
│   ├── article_ja.typ
│   ├── poster.typ
│   ├── slide_math.typ
│   └── slide_visual.typ
├── bib/
│   └── cite.bib              # 参考文献ファイル
└── img/                      # 画像ファイル
```

## 使い方

1. `main.typ` を開き、使いたいテンプレートを `#import` で指定します。
2. `samples/` 内の対応するサンプルを参考にしてください。

### 英語論文

```typst
#import "templates/article_en.typ": *

#show: project.with(
  title: "Your Title",
  author: "Your Name",
)

= Introduction
Your content here.
```

### 日本語論文

```typst
#import "templates/article_ja.typ": *
#set text(cjk-latin-spacing: auto)

#show: project.with(
  title: "タイトル",
  author: "氏名",
)

= はじめに
本文をここに書く。
```

## ローカルビルド

Typst をインストールして `main.typ` をコンパイルします。

**macOS (Homebrew):**
```bash
brew install typst
typst compile main.typ
```

**Windows (Winget):**
```bash
winget install --id Typst.Typst
typst compile main.typ
```

**Linux (Snap):**
```bash
snap install typst
typst compile main.typ
```

または [GitHub リリースページ](https://github.com/typst/typst/releases) からバイナリをダウンロードしてください。

> **日本語フォントについて**：ローカルで日本語テンプレートを使う場合は、原ノ味フォント等の日本語フォントを別途インストールしてください。

## GitHub Actions による自動ビルド

`main` ブランチを含む全ブランチへのプッシュ時に、自動的に `main.typ` をコンパイルします。

- 日本語対応のため **原ノ味フォント**（HaranoAji Mincho/Gothic）を使用
- コンパイル結果の PDF は Actions の Artifact としてダウンロード可能

## AI エージェントの利用

このリポジトリでは AI エージェント（Claude など）を活用した Typst 文書作成をサポートしています。詳細は [AI_AGENT.md](AI_AGENT.md) を参照してください。
