# myEmacs
個人環境のメモとemacs設定ファイル

___

## インストール
### Windows
1. Gowのインストール
	1. [GithubのGowページ](https://github.com/bmatzelle/gow/)より最新版を取得
	2. 取得パッケージを任意の場所に展開
	3. 展開先のbinフォルダを環境変数PATHに追加
2. Migu 1Mフォントのインストール
	1. [M+とIPAの合成フォントのサイト](http://mix-mplus-ipa.osdn.jp/)より[Migu 1M](https://osdn.jp/projects/mix-mplus-ipa/downloads/63545/migu-1m-20150712.zip/)をダウンロード
	2. 展開した中のmigu-1m-bold.ttf,migu-1m-regular.ttfをインストール
3. .emacs.dの作成
	1. 環境変数HOMEを定義していたらその場所、ないなら\User\ *ユーザー名* \AppData\Roming下に.emacs.dフォルダを作成  
	```
	# mkdir .emacs.d
	```
4. JDKのインストール
	1. [OracleのJDKサイト](http://www.oracle.com/technetwork/java/javase/downloads/index.html)からJDK 1.8をインストール
5. PlantUMLのインストール
	1. [PlantUMLのサイト](http://plantuml.com)の[Download](http://plantuml.com/download)から[plantuml.jar](http://sourceforge.net/projects/plantuml/files/plantuml.jar/download)をダウンロード
	2. ダウンロードしたplantuml.jarを.emacs.d下に移動
6. CMakeのインストール
	1. [CMakeのサイト](https://cmake.org/)から最新版を取得しインストール
	2. インストール先のbinフォルダを環境変数PATHに追加
7. Pandocのインストール
	1. [Pandocのgitリポジトリ](https://github.com/jgm/pandoc)から[Pandoc](https://github.com/jgm/pandoc/releases)の最新版の.msiを取得し、インストール
8. Emacsのインストール
	1. [GNUのwindows版emacsダウンロード用ftp](http://ftp.gnu.org/pub/gnu/emacs/windows/)から最新のemacs-??.?-x86_64.tgzを取得し任意のフォルダに展開する
	2. [同サイト](http://ftp.gnu.org/pub/gnu/emacs/windows/)からemacs-??-x86_64-deps.zipがあるなら取得し、binの中をemacsのbinの中に展開  
	※この時点ではまだ起動しないこと
9. このリポジトリをclone
	1. .emacs.d直下にこのリポジトリをclone  
	※.emacs.d直下にinit.elが出来ていればOK

## 追記 Windows環境でのirony-install-server

Visual C++やcmakeなどのインストールを行ない、`irony-install-server` のcmakeのコマンドを手動で打つ。  
この時にbuild対象にするのは [ここ](https://github.com/Sarcasm/irony-mode) のserver下。


## 引用
* [my/markdown/github.css](https://gist.github.com/andyferra/2554919)
