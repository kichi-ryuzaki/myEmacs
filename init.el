;;======================================================================
;; カスタム設定
;;

;; パッケージリポジトリを追加
(require 'package)
;; melpa
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
		    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; MELPA/MELPA Stableの切り変え
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)

  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))

(package-initialize)
(package-refresh-contents)

;;  my下をロードパスに追加
(add-to-list 'load-path (file-name-as-directory (concat user-emacs-directory "my")))

;;  my下のカスタム設定を有効にする
(load "_my_init.el")
