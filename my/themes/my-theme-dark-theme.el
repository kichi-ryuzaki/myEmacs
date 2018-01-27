(deftheme my-theme-dark
  "Created 2018-01-27.")

(custom-theme-set-faces
 'my-theme-dark
 ;;  カーソル色
 '(cursor ((t (:background "#602c40"))))
 ;;  通常文字色
 '(default ((t (:inherit nil :stipple nil :background "#1b1928" :foreground "#a8a19f" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "outline" :family "Migu 1M"))))

 ;;  固定ピッチ
 '(fixed-pitch ((t (:slant normal :weight bold :height 113 :width normal :foundry "outline" :family "Migu 1M"))))
 '(variable-pitch ((t (:family "Migu 1M" :foundry "outline" :width normal :height 113 :weight normal :slant normal))))
 '(escape-glyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 ;;  ミニバッファのプロンプト(M-xとかそういう)
 '(minibuffer-prompt ((t (:foreground "#407ee7"))))
 '(highlight ((t (:background "#2c2421"))))
 ;;  選択範囲
 '(region ((t (:background "#68615e"))))
 '(shadow ((((class color grayscale) (min-colors 88) (background light)) (:foreground "grey50")) (((class color grayscale) (min-colors 88) (background dark)) (:foreground "grey70")) (((class color) (min-colors 8) (background light)) (:foreground "green")) (((class color) (min-colors 8) (background dark)) (:foreground "yellow"))))
 '(secondary-selection ((t (:background "#766e6b"))))
 '(trailing-whitespace ((t (:foreground "#c38418" :background "#3d97b8"))))
 ;;  Object-cなんかの関数パラメータのパラメータ指定
 '(font-lock-builtin-face ((t (:foreground "#3d97b8"))))
 ;;  コメントの開始、終了文字(//や/*  */)
 '(font-lock-comment-delimiter-face ((t (:foreground "#806000"))))
 ;;  コメントの内容
 '(font-lock-comment-face ((t (:foreground "#a06000" :weight bold))))
 ;;  ラベル
 '(font-lock-constant-face ((t (:foreground "#a070a0" :weight bold))))
 ;;  lispの関数説明などのドキュメント
 '(font-lock-doc-face ((t (:foreground "#808090" :weight bold))))
 ;;  関数定義時の関数名
 '(font-lock-function-name-face ((t (:foreground "#a09090" :weight bold))))
 ;;  予約文字(制御系)
 '(font-lock-keyword-face ((t (:foreground "#9090a8"))))
 '(font-lock-negation-char-face ((t (:foreground "#7b9726"))))
 ;;  プリプロセス
 '(font-lock-preprocessor-face ((t (:foreground "#40a040"))))
 '(font-lock-regexp-grouping-backslash ((t (:foreground "#c38418"))))
 '(font-lock-regexp-grouping-construct ((t (:foreground "#6666ea"))))
 ;;  文字列
 '(font-lock-string-face ((t (:foreground "#90a080" :weight bold))))
 ;;  型
 '(font-lock-type-face ((t (:foreground "#809880" :weight bold))))
 ;;  定義時の変数
 '(font-lock-variable-name-face ((t (:foreground "#a8a19f" :underline t))))
 '(font-lock-warning-face ((t (:foreground "#f22c40"))))
 '(button ((t (:inherit (link)))))
 '(link ((t (:underline (:color foreground-color :style line) :foreground "#407ee7"))))
 '(link-visited ((t (:underline (:color foreground-color :style line) :foreground "#6666ea"))))
 '(fringe ((t (:background "#2c2421"))))
 '(header-line ((t (:foreground "#6666ea" :inherit (mode-line)))))
 '(tooltip ((t (:family "Migu 1M" :foundry "outline" :width normal :height 90 :weight normal :slant normal :foreground "systeminfotext" :background "systeminfowindow" :inherit (variable-pitch)))))
 ;;  フォーカスバッファのモードライン
 '(mode-line ((t (:box nil :foreground "#8c9491" :background "#48413e"))))
 '(mode-line-buffer-id ((t (:foreground "#7b9726"))))
 '(mode-line-emphasis ((t (:slant italic :foreground "#e6e2e0"))))
 '(mode-line-highlight ((t (:weight bold :box nil :foreground "#6666ea"))))
 '(mode-line-inactive ((t (:box nil :foreground "#766e6b" :background "#2c2421"))))
 '(isearch ((t (:inverse-video t :foreground "#c38418" :background "#2c2421"))))
 '(isearch-fail ((t (:inverse-video t :background "#2c2421" :inherit (font-lock-warning-face)))))
 '(lazy-highlight ((t (:inverse-video t :foreground "#3d97b8" :background "#2c2421"))))
 '(match ((t (:inverse-video t :foreground "#407ee7" :background "#2c2421"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch)))))

 )

(provide-theme 'my-theme-dark)
