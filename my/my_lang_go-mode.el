;;======================================================================
;; Go設定
;;

;;  go-modeをインストールしてなかったらインストールする
(my-package-install 'go-mode)


(defun my-go-mode-init ()
  ;; コードスタイルはbsd
  ;(c-set-style "bsd")
  ;; タブ幅4
  (setq tab-width 4)
  ;; 左橋はインデント それ以外はタブコード
  (setq tab-always-indent nil)
  ;; ブレース入れても勝手に改行させない
  ;(setq c-auto-newline nil)
  ;; backspaceで空白の一括削除はさせない
  ;(setq c-hungry-delete-key nil)

  ;; 勝手な改行はさせない
  (auto-fill-mode -1)

  ;; 式を複数行にした時の行頭揃え
  ;(c-set-offset 'statement-cont 'c-lineup-math)

  ;;  case直後の{はインデントかける
  ;(c-set-offset 'statement-case-open '+)

  ;;  自動補間有効
  (auto-complete-mode t)
  )

(add-hook 'go-mode-hook 'my-go-mode-init)
