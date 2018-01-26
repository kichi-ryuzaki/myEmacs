;;======================================================================
;; カスタム設定
;;

(package-initialize)

;;  my下をロードパスに追加
(add-to-list 'load-path (file-name-as-directory (concat user-emacs-directory "my")))

;;  my下のカスタム設定を有効にする
(load "_my_init.el")
