;(require 'xcscope)
(global-set-key[f5] 'compile)
;(add-to-list 'load-path "~/.emacs.d/site-lisp/eim")
(add-to-list 'load-path "~/.emacs.d/site-lisp")
(add-to-list 'load-path "~/.emacs.d/org-7.9.2")
(add-to-list 'load-path "~/.emacs.d")

(require 'org-install)
(require 'org-publish)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock)
(add-hook 'org-mode-hook 
  (lambda () (setq truncate-lines nil)))
 
;;(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
;;(global-set-key "\C-cb" 'org-iswitchb)
; 
; 
(require 'multi-term)
(setq multi-term-program "/bin/bash")
; 
(global-set-key (kbd "C-x g") 'grep)
;; 
(setq rj-ring-length 10000)
;(require 'recent-jump)
;(global-set-key (kbd "C-o") 'recent-jump-backward)
;(global-set-key (kbd "C-i") 'recent-jump-forward)
; 
;(add-to-list 'load-path
;              "~/.emacs.d/plugins/yasnippet")
;(require 'yasnippet)
;(recent-jump-mode 1)
;(show-paren-mode 1)
; 
;(setq diary-file "~/journal/diary")
 
;;(setq org-agenda-files (list "~/journal/*.org"))
(setq org-agenda-files (file-expand-wildcards "~/journal/*.org"))
(mouse-avoidance-mode 'animate)
;;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。
;;;
(auto-image-file-mode)
;;;让 Emacs 可以直接打开和显示图片
; 
(fset 'yes-or-no-p 'y-or-n-p) ; 将yes/no替换为y/n
(linum-mode 1)
(cua-mode 1)
(setq frame-title-format "%f") ; 显示当前编辑的文档
;;set ibus-el
;(add-to-list 'load-path "~/.emacs.d/ibus-el-0.3.2")
;(require 'ibus)
;(add-hook 'after-init-hook 'ibus-mode-on)
;(defun wl-org-agenda-to-appt ()
;  ;; Dangerous!!!  This might remove entries added by `appt-add' manually. 
;  (org-agenda-to-appt t "TODO"))
; 
;(wl-org-agenda-to-appt)
;(defadvice  org-agenda-redo (after org-agenda-redo-add-appts)
;  "Pressing `r' on the agenda will also add appointments."
;  (progn
;    (let ((config (current-window-configuration)))
;      (appt-check t)
;      (set-window-configuration config))
;    (wl-org-agenda-to-appt)))
; 
;(ad-activate 'org-agenda-redo)
; 
; 
; 
; 
;(setq display-time-day-and-date t)
;(setq display-time-24hr-format t)
;(display-time)
; 
;(setq appt-issue-message t) 
; 
(global-set-key (kbd "C-x t") 'org-clock-in)
(global-set-key (kbd "C-x s") 'org-clock-out)
; 
; 
;;; add pylookup to your loadpath, ex) ~/.emacs.d/pylookup
;(setq pylookup-dir "~/.emacs.d/pylookup")
;(add-to-list 'load-path pylookup-dir)
; 
;;; load pylookup when compile time
;(eval-when-compile (require 'pylookup))
; 
;;; set executable file and db file
;(setq pylookup-program (concat pylookup-dir "/pylookup.py"))
;(setq pylookup-db-file (concat pylookup-dir "/pylookup.db"))
; 
;;; set search option if you want
;;; (setq pylookup-search-options '("--insensitive" "0" "--desc" "0"))
; 
;;; to speedup, just load it on demand
;(autoload 'pylookup-lookup "pylookup"
;  "Lookup SEARCH-TERM in the Python HTML indexes." t)
; 
;(autoload 'pylookup-update "pylookup" 
;  "Run pylookup-update and create the database at `pylookup-db-file'." t)
(tool-bar-mode nil);去掉那个大大的工具栏
(scroll-bar-mode nil);去掉滚动条，因为可以使用鼠标滚轮了 ^_^
(setq default-fill-column 60);默认显示 80列就换行
; 
(setq initial-frame-alist '((top . 0) (left . 0) (width . 1000) (height . 1000)));启动自动最大化
;(yas-minor-mode 1)
; 
;(setq compilation-scroll-output t)
;(add-to-list 'load-path "~/.emacs.d/plugins/color-theme-6.6.0")
;(require 'color-theme)
;(color-theme-initialize)
;(color-theme-emacs-nw) 
(global-set-key [C-tab] 'other-window);;切换到另一个窗口，快捷键为C+Tab