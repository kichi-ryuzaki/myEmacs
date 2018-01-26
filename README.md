# myEmacs
個人環境のメモとemacs設定ファイル
___

## インストール
### Windows
1. Gow  
 1. [サイト](https://github.com/bmatzelle/gow/)より最新版を取得
 2. 取得パッケージを任意の場所に展開
 3. 展開先のbinフォルダを環境変数PATHに追加
2. .emacs.dの作成
 1. 環境変数HOMEを定義していたらその場所、ないなら\User\** ユーザー名 **\AppData\Roming下に.emacs.dフォルダを作成  
  ```
  # mkdir .emacs.d
  ```
3. CMakeのインストール
 1. [サイト](https://cmake.org/)から最新版を取得しインストール
 2. インストール先のbinフォルダを環境変数PATHに追加
4. Perl
 1. [ActivePerl](https://www.activestate.com/activeperl)から最新版を取得してインストール
5. Markdown
 1. [サイト](https://daringfireball.net/projects/markdown/)から最新版を取得し、.emacs.dにMarkdown.plを展開
6. Emacs
 1. [サイト](http://ftp.gnu.org/pub/gnu/emacs/windows/)から最新のemacs-??.?-x86_64.tgzを取得し任意のフォルダに展開する
 2. [同サイト](http://ftp.gnu.org/pub/gnu/emacs/windows/)からemacs-??-x86_64-deps.zipがあるなら取得し、binの中をemacsのbinの中に展開

