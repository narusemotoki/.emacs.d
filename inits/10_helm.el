(require 'helm-config)
(helm-mode 1)

; bufferやrecentfを表示する
(global-set-key (kbd "C-c h") 'helm-mini)
; bufferを切り替える
(global-set-key (kbd "C-x b") 'helm-buffers-list)
; ファイルの履歴を表示する
(global-set-key (kbd "C-x C-r") 'helm-recentf)
; kill-ringを一覧表示する
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
; Gitで管理されているファイルから絞り込む
(global-set-key (kbd "C-c C-l") 'helm-ls-git-ls)
; Gitでgrep
(global-set-key (kbd "C-C C-g") 'helm-git-grep)
; M-xを置き換える。これにしないとHistoryが上に出てこない
(global-set-key (kbd "M-x") 'helm-M-x)
; Gitでfind-file
(global-set-key (kbd "C-x C-f") 'helm-find-files)

(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)

; 高速で反応させる
(setq helm-idle-delay 0.1)
(setq helm-input-idle-delay 0.1)

; 自動補完を無効
; パスが勝手に補完されて不便なことがあるし、どうせTABで自分で補完するので無効化
(custom-set-variables '(helm-ff-auto-update-initial-value nil))

; C-hでバックスペースと同じように文字を削除
(eval-after-load 'helm
  '(progn
     (define-key helm-map (kbd "C-h") 'delete-backward-char)))
(eval-after-load 'helm-files
  '(progn
     (define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)))
