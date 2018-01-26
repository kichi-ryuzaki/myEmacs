;;======================================================================
;; 共通のキーバインド設定
;;

;;  Ctrl+Enter: フルスクリーンのトグル
(if window-system (progn
					(global-set-key (kbd "<C-return>")
									'toggle-frame-maximized)
					))

;;  Ctrl+p: 直前のマクロを実行
(global-set-key (kbd "C-p") 'call-last-kbd-macro)


;;  Shift+カーソル: フレーム移動
(global-set-key (kbd "<S-left>")  'windmove-left)
(global-set-key (kbd "<S-right>") 'windmove-right)
(global-set-key (kbd "<S-up>")    'windmove-up)
(global-set-key (kbd "<S-down>")  'windmove-down)

;;  ライン移動
(global-set-key (kbd "C-l") 'goto-line)

;;  アイコン化
(global-set-key (kbd "C-z") 'iconify-or-deiconify-frame)
