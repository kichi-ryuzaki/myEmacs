;;======================================================================
;; IME設定
;;

;; ddskkをインストールしてなかったらインストールする
(unless (package-installed-p 'ddskk)
  (package-install 'ddskk)
  )

(when (require 'skk nil t)
  (global-set-key (kbd "C-x j") 'skk-mode)
  (setq default-input-method "japanese-skk")
  (require 'skk-study)
  )

;;  IME無効/有効時のカーソルカラー定義
(unless (facep 'cursor-ime-off)
  (make-face 'cursor-ime-off)
  (set-face-attribute 'cursor-ime-off nil
					  :background "DarkRed"
					  :foreground "White"
					  ))
(unless (facep 'cursor-ime-on)
  (make-face 'cursor-ime-on)
  (set-face-attribute 'cursor-ime-on nil
					  :background "DarkGreen"
					  :foreground "White"
					  ))

;;  IME無効/有効時のカーソル切りかえ
(advice-add 'ime-force-on
            :before (lambda (&rest args)
                      (if (facep 'cursor-ime-on)
                          (let ( (fg (face-attribute 'cursor-ime-on :foreground))
                                 (bg (face-attribute 'cursor-ime-on :background)) )
                            (set-face-attribute 'cursor nil :foreground fg :background bg) )
                        )
                      ))
(advice-add 'ime-force-off
            :before (lambda (&rest args)
                      (if (facep 'cursor-ime-off)
                          (let ( (fg (face-attribute 'cursor-ime-off :foreground))
                                 (bg (face-attribute 'cursor-ime-off :background)) )
                            (set-face-attribute 'cursor nil :foreground fg :background bg) )
                        )
                      ))
