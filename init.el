;------------------------------------------------------------------------------
; elpaとelisp以下にパスを通す
; http://d.hatena.ne.jp/sandai/20120304/p2
;------------------------------------------------------------------------------
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory (expand-file-name (concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
            (normal-top-level-add-subdirs-to-load-path))))))

(add-to-load-path "elpa" "elisp")

;------------------------------------------------------------------------------
; init-loaderの設定
; initファイルを複数に分割する
;------------------------------------------------------------------------------
(require 'init-loader)
(setq init-loader-show-log-after-init `error-only)
(init-loader-load "~/.emacs.d/inits")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(anzu-deactivate-region t)
 '(anzu-mode-lighter "")
 '(anzu-replace-to-string-separator " => ")
 '(anzu-search-threshold 1000)
 '(helm-ff-auto-update-initial-value nil)
 '(initial-buffer-choice "~/Dropbox/Documents/note.org"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "VL ゴシック" :foundry "unknown" :slant normal :weight normal :height 120 :width normal)))))
