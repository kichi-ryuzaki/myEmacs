;;======================================================================
;; ホストプラットホームごとの設定
;;

(when (eq system-type 'windows-nt)
  (load "my_platform_win32.el")
  )
