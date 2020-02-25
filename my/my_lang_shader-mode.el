;;======================================================================
;; shader-mode設定
;;

;;  shader-modeをインストールしてなかったらインストールする
(my-package-install 'shader-mode)

(add-to-list 'auto-mode-alist '("\\.shader\\'" . shader-mode))
