;;======================================================================
;; cmake-mode設定
;;

;;  cmake-modeをインストールしてなかったらインストールする
(unless (package-installed-p 'cmake-mode)
  (package-install 'cmake-mode)
  )
