;;======================================================================
;; Git設定
;;

;;--------------------------------------------------------------

(my-package-install 'magit)

(require 'magit)
(define-key global-map (kbd "M-g") 'magit-status)
