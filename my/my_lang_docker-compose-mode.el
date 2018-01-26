;;======================================================================
;; docker-compose-mode設定
;;

;;  docker-compose-modeをインストールしてなかったらインストールする
(unless (package-installed-p 'docker-compose-mode)
  (package-install 'docker-compose-mode)
  )
