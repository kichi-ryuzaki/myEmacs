;;======================================================================
;; テーマ設定
;;

(if window-system
	(progn


	  ;;  ample-themeをインストールしてなかったらインストールする
	  (unless (package-installed-p 'base16-theme)
		(package-install 'base16-theme)
		)

	  ;;  テーマ選択
	  (load-theme 'base16-atelier-forest t)


	  ;;  フォント設定
	  (cond
	   ;;  以下インストールされているフォントを検索してあったら割りあてる
	   ;;  Miguフォント(M+とIPA混合: http://mix-mplus-ipa.osdn.jp/migu/)
	   ((find-font (font-spec :name "Migu 1M-11"))
		(set-frame-font "Migu 1M-11:antialias=standard")
		(set-face-font 'default "Migu 1M-11:antialias=standard")
		(set-face-font 'variable-pitch "Migu 1M-11:antialias=standard")
		(set-face-font 'fixed-pitch "Migu 1M-11:antialias=standard")
		(set-face-font 'tooltip "Migu 1M-9:antialias=standard")
		))

	  ))