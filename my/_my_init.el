;;======================================================================
;; カスタム設定
;;

;;
;;  ~/.emacs.d/init.el上で以下を記載しておくこと
;;
;;  (add-to-list 'load-path (file-name-as-directory (concat
;;  user-emacs-directory "my")))
;;  (load "_my_init.el")

;;  テーマ設定
(load "my_theme.el")

;;  コーディングの設定
(load "my_coding.el")

;;  プラットホームごとの設定
(load "my_platform.el")

;;  IME設定
(load "my_ime.el")

;;  google 翻訳
(load "my_translate.el")

;;  スピードバー設定
(load "my_sr-speedbar.el")

;;  補間設定
(load "my_auto-complete.el")

;;  共通キーバインド
(load "my_keybinds.el")

;;  もろもろの細かい設定
(load "my_etc.el")

;;  Git関連
(load "my_git.el")

;;  言語モード設定
(load "my_lang.el")

