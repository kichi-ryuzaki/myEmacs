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

;;--------------------------------------------------
;; インストールが発生するときだけパッケージ情報を自動更新させる
(defvar my-package-refreshed nil
  "パッケージのリフレッシュがされたらt")
(defun my-package-install (pkg)
  "パッケージ未インストールならインストールする"
  (unless (package-installed-p pkg)
	(unless my-package-refreshed
	  (package-refresh-contents)
	  (setq my-package-refreshed t))
	(package-install pkg))
  )
;;  通常(package-install 'ddskk)のようにするところを
;;  (my-package-install 'ddskk)のようにすると
;;  パッケージ一覧の更新をした後にインストールするようになります
;;--------------------------------------------------

;;  byte-compileのワーニングoff
(setq byte-compile-warnings nil)

;;  my下をロードパスに追加
(add-to-list 'load-path (file-name-as-directory (concat user-emacs-directory "my")))

;;  my下のカスタム設定を有効にする
(load "_my_init.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
	("eb6196d0b5baa26be14ff9f506f350e2c729e35e658bf308abed11916553fdad" "188081e09548900e09a194aa4e0551ffa16006ca6bdee1b03e6b6e810bc8dfcb" "b8f2c10cdba494b863d6d1830622101a8675d37abde0c75ed3ee07de9ad2e434" "447e7f85b30943425823306ee1bf4b184c5aeb78bf179186b827d8f580dc9f14" default)))
 '(package-selected-packages
   (quote
	(docker-compose-mode cmake-mode csharp-mode auto-complete sr-speedbar ddskk base16-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
