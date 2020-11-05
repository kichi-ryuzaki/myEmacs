;;======================================================================
;; スニペット関係設定
;;

;;  yasnippet
(my-package-install 'yasnippet)
(eval-after-load "yasnippet"
  '(progn
	 (define-key yas-keymap (kbd "<tab>") nil)
	 (yas-global-mode 1)))

