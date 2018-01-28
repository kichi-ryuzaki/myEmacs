;;======================================================================
;; Markdown設定
;;

;;  markdown-modeをインストールしてなかったらインストールする
(my-package-install 'markdown-mode)

(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(setq markdown-command "pandoc")

;;  markdown-preview-ewwをインストールしてなかったらインストールする
(my-package-install 'markdown-preview-eww)

;  見た目を調整
(custom-set-faces
 '(markdown-header-face ((t (:inherit font-lock-function-name-face :weight bold))))
 '(markdown-header-face-1 ((t (:inherit markdown-header-face :height 1.8))))
 '(markdown-header-face-2 ((t (:inherit markdown-header-face :height 1.4))))
 '(markdown-header-face-3 ((t (:inherit markdown-header-face :height 1.2))))
 )
