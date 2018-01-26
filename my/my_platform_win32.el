;;======================================================================
;; ホストプラットホームごとの設定(Windows)
;;

;; Altキーを使用せずにMetaキーを使用（有効：t、無効：nil）
(setq w32-alt-is-meta t)

;; モードライン カスタマイズ
(setq-default
 mode-line-format
 `(
   ""
   " "
   mode-line-mule-info
   mode-line-modified
   mode-line-frame-identification
   mode-line-buffer-identification
   " "
   global-mode-string
   " %[("
   mode-name
   mode-line-process
   "%n"
   ")%] "
   (which-func-mode ("" which-func-format " "))
   (line-number-mode
    (:eval
     (format "L%%l/L%d " (count-lines (point-max) 1) )))
   (column-number-mode " C%c ")
   (-3 . "%p")
   )
 )
(setq mode-line-frame-identification " ")
