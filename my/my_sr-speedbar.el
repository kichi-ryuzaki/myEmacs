;;======================================================================
;; sr-speedbar設定
;;

;;  インストールしてない場合はする
(my-package-install 'sr-speedbar)

;;  左側に出す
(setq sr-speedbar-right-side nil)

;;  キーバインド
;(global-unset-key (kbd "C-\\"))
(global-set-key (kbd "C-\\") 'sr-speedbar-toggle)
