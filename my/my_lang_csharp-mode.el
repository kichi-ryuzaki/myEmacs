;;======================================================================
;; c#-mode設定
;;

;;  csharp-modeをインストールしてなかったらインストールする
(my-package-install 'csharp-mode)

(defun my-csharp-mode-init ()
  ;; コードスタイルはbsd
  (c-set-style "bsd")
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

  ;;  case直後の{はインデントかける
  (c-set-offset 'statement-case-open '+)

  ;;  コメント展開は無視
  (local-unset-key (kbd "/"))

  ;;  自動補間有効
  (auto-complete-mode t)

  ;;  コメントなんかを入力したり文字列を入力するとインデントがおかしくなる問題の対策
  (defun  c-clear-string- fences ()
    " yasnippetを壊すため、この関数はnullにされます。そして、引用するときは明らかにcsharp-modeです。")
  )

(add-to-list 'ac-modes 'csharp-mode)
(add-hook 'csharp-mode-hook 'my-csharp-mode-init)
