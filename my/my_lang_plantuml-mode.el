;;======================================================================
;; plantUML-mode設定
;;

;;  puml-modeをインストールしてなかったらインストールする
(my-package-install 'plantuml-mode)

(add-to-list 'auto-mode-alist '("\\.puml\\'" . puml-mode))
(add-to-list 'auto-mode-alist '("\\.plantuml\\'" . puml-mode))

(setq plantuml-jar-path (concat (expand-file-name user-emacs-directory) "plantuml.jar"))
