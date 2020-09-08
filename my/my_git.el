;;======================================================================
;; Git設定
;;

;;--------------------------------------------------------------

(my-package-install 'magit)

(require 'magit)
(define-key global-map (kbd "M-g") 'magit-status)

(my-package-install 'git-gutter+)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(git-gutter+ dired-single dired-git shader-mode go-mode plantuml-mode markdown-preview-eww markdown-mode docker-compose-mode cmake-mode csharp-mode auto-complete sr-speedbar google-translate ddskk)))
(global-git-gutter+-mode)
