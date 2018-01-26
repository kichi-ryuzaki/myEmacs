;;======================================================================
;; Markdown設定
;;

;;  markdown-modeをインストールしてなかったらインストールする
(my-package-install 'markdown-mode)

(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(setq markdown-command (concat "perl " (expand-file-name user-emacs-directory) "Markdown.pl"))

;;  markdown-preview-ewwをインストールしてなかったらインストールする
(my-package-install 'markdown-preview-eww)
