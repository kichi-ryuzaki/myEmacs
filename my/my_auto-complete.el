;;======================================================================
;; 補間設定
;;

(my-package-install 'auto-complete)

(require 'auto-complete)
(global-auto-complete-mode t)

;;  呼び出した時以外は補間させない
(setq ac-auto-start nil)

;;  Ctrl+Tabで補間開始
(define-key ac-mode-map (kbd "<C-tab>") 'auto-complete)
