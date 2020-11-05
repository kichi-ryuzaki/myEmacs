;;======================================================================
;; c/c++-mode設定
;;

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;;  flycheck
(my-package-install 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'c++-mode-hook (lambda () (setq flycheck-clang-language-standard "c++17")))
(add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++17")))

;; irony
(my-package-install 'irony)
(my-package-install 'flycheck-irony)
(use-package flycheck
			 :config
			 (when (locate-library "flycheck-irony")
			   (flycheck-irony-setup))
			 (global-flycheck-mode t))
(use-package irony
			 :commands irony-mode
			 :config
			 (custom-set-variables '(irony-additional-clang-options '("-std=c++17")))
			 (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
			 (add-hook 'c-mode-common-hook 'irnoy-mode))

(defun my-c-c++-mode-init ()
  ;; コードスタイルはstroustrup
  (c-set-style "stroustrup")
  ;; タブ幅4
  (setq c-basic-offset 4)
  ;; 左橋はインデント それ以外はタブコード
  (setq c-tab-always-indent nil)
  ;; ブレース入れても勝手に改行させない
  (setq c-auto-newline nil)
  ;; backspaceで空白の一括削除はさせない
  (setq c-hungry-delete-key nil)

  ;; 勝手な改行はさせない
  (auto-fill-mode -1)

  ;; 式を複数行にした時の行頭揃え
  (c-set-offset 'statement-cont 'c-lineup-math)

  ;; コンストラクタの変数初期化は関数の頭に揃える
  (c-set-offset 'member-init-intro 0)

  ;;  コンストラクタのインデントは関数の頭にあわせる
  (c-set-offset 'inline-open 0)

  ;;  case直後の{はインデントかける
  (c-set-offset 'statement-case-open '+)

  ;;  namespaceはインデント
  (c-set-offset 'innamespace '+)

  ;;  unreal engineの自己展開型マクロのエスケープ
  (add-to-list 'c-macro-names-with-semicolon
			   "GENERATED_BODY"
			   "GENERATED_UCLASS_BODY"
			   "UFUNCTION"
			   "UPROPERTY")
  )
(add-hook 'c-mode-common-hook 'my-c-c++-mode-init)
