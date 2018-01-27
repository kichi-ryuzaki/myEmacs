;;======================================================================
;; もろもろの細かい設定
;;

;;--------------------------------------------------------------
;;  起動画面関係

;;  スプラッシュ非表示
(setq inhibit-splash-screen t)

;;  起動直後のメッセージ非表示
(setq inhibit-startup-message t)
(setq inhibit-startup-screen  t)
(setq initial-scratch-message "")

;;  画面の右端で折り返さない
(setq-default truncate-lines t)
(setq truncate-partial-width-windows t)



;;--------------------------------------------------------------
;;  バッファ

;; 同一バッファ名にディレクトリ付与
(require 'uniquify)
;(setq uniquify-buffer-name-style 'forward)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
(setq uniquify-ignore-buffers-re "*[^*]+*")

;; ロックファイルを生成（有効：t、無効：nil）
(setq create-lockfiles nil)



;;--------------------------------------------------------------
;;  タブ関係

;;  タブ幅4
(setq-default tab-width 4 indent-tabs-mode t)



;;--------------------------------------------------------------
;;  自動保存関係

;;  自動保存させない
(setq make-backup-files nil)
(setq auto-save-default nil)



;;--------------------------------------------------------------
;;  カーソル関係

;;  モードラインにカーソル位置の行番号表示
(line-number-mode t)
;;  モードラインにカーソル位置の列位置の表示
(column-number-mode t)

;;  カーソルの点滅停止
(blink-cursor-mode 0)

;;  バッファの上下端で画面外にカーソルを移動したときのスクロール量
(setq scroll-conservatively 1)

;; 画面スクロール時の重複表示する行数
(setq next-screen-context-lines 4)



;;--------------------------------------------------------------
;;  モードラインの情報関係

;; 改行コードの表記追加
(setq eol-mnemonic-dos       ":Dos ")
(setq eol-mnemonic-mac       ":Mac ")
(setq eol-mnemonic-unix      ":Unx ")
(setq eol-mnemonic-undecided ":??? ") 


;;--------------------------------------------------------------
;; GUI専用の設定
(if window-system
	(progn

	  ;; ツールバー消去
	  (tool-bar-mode -1)

	  ;;  画像表示on
	  (setq auto-image-file-mode t)

	  ;;  デフォルトフレーム設定
	  (setq default-frame-alist
			(append '((width                .  85) ; フレーム幅
					  (height               .  35) ; フレーム高
					  (line-spacing         .   0) ; 文字感覚
					  (left-fringe          .  10) ; 左フリンジ幅
					  (right-fringe         .  10) ; 右フリンジ幅
					  (menu-bar-lines       .   1) ; メニューバー幅
					  (vertical-scroll-bars .   1) ; スクロールバー
					  (scroll-bar-width     .  17) ; スクロールバー幅
					  (cursor-type          . box) ; カーソル種類
					  (alpha                . 100) ; 不透明
					  )
					default-frame-alist)
			)
	  (setq initial-frame-alist default-frame-alist)

	  ;;  フレームタイトルにバッファ名を
	  (setq frame-title-format
			'("emacs " emacs-version (buffer-file-name " - %f")))

	  ))
