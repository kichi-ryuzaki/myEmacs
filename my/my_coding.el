;;======================================================================
;; コーディング設定
;;

;; デフォルトの文字コード
(set-default-coding-systems 'utf-8-dos)

;;  テキストファイル/新規バッファの文字コード
(prefer-coding-system 'utf-8-dos)

;;  キーボード入力の文字コード
(set-keyboard-coding-system 'utf-8-dos)

;;  ファイル名の文字コード
(set-file-name-coding-system 'utf-8-dos)

;;  サブプロセスのデフォルト文字コード
(setq default-process-coding-system '(undecided-dos . utf-8-dos))

;; 環境依存文字 文字化け対応
(set-charset-priority 'ascii 'japanese-jisx0208 'latin-jisx0201
                      'katakana-jisx0201 'iso-8859-1 'cp1252 'unicode)
(set-coding-system-priority 'utf-8 'euc-jp 'iso-2022-jp 'cp932)
