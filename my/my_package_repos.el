;;======================================================================
;; パッケージのリポジトリ設定
;;

;; melpa
(when (require 'package nil t)
  (let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
		      (not (gnutls-available-p))))
		 (proto (if no-ssl "http" "https")))
	;; MELPA/MELPA Stableの切り変え
    (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
    ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)

    (when (< emacs-major-version 24)
      ;; For important compatibility libraries like cl-lib
      (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
  (package-initialize))


