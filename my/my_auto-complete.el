;;======================================================================
;; 補間設定
;;

;(my-package-install 'auto-complete)

;(require 'auto-complete)
;(global-auto-complete-mode t)

;;;  呼び出した時以外は補間させない
;(setq ac-auto-start nil)

;;;  Ctrl+Tabで補間開始
;(define-key ac-mode-map (kbd "<C-tab>") 'auto-complete)

(my-package-install 'company)
(when (locate-library "company")
  (global-company-mode 1)
  (global-set-key (kbd "<C-tab>") 'company-complete)
  (set-face-attribute 'company-tooltip nil
					  :foreground "black" :background "dark khaki")
  (set-face-attribute 'company-tooltip-common nil
					  :foreground "black" :background "steelblue")
  (set-face-attribute 'company-tooltip-common-selection nil
					  :foreground "pale turquoise" :background "dodger blue")
  (set-face-attribute 'company-tooltip-selection nil
					  :foreground "misty rose" :background "cadet blue")
  (set-face-attribute 'company-preview-common nil
					  :foreground "lightgrey" :background nil :underline t)
  (set-face-attribute 'company-scrollbar-fg nil
					  :background "chocolate2")
  (set-face-attribute 'company-scrollbar-bg nil
					  :background "gray40")
  )
