(require 'xcscope)
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
;;(global-set-key "\C-ca" 'org-agenda)
;;(global-set-key "\C-cb" 'org-iswitchb)
; 
; 
(require 'multi-term)
(setq multi-term-program "/bin/bash")
; 
(global-set-key (kbd "C-x g") 'grep)
;; 
(setq rj-ring-length 10000)

(setq rj-ring-length 10000)
(require 'recent-jump)
(recent-jump-mode)
(global-set-key (kbd "C-o") 'recent-jump-backward)
(global-set-key (kbd "C-i") 'recent-jump-forward)




 
;;(setq org-agenda-files (list "~/journal/*.org"))
(setq org-agenda-files (file-expand-wildcards "/mnt/hgfs/Document/journal/*.org"))
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
(add-to-list 'load-path "~/.emacs.d/ibus-el-0.3.2")

(require 'ibus)
;; Turn on ibus-mode automatically after loading .emacs
(add-hook 'after-init-hook 'ibus-mode-on)
;; Use C-SPC for Set Mark command
(ibus-define-common-key ?\C-\s nil)
;; Use C-/ for Undo command
(ibus-define-common-key ?\C-/ nil)
;; Change cursor color depending on IBus status
;;(setq ibus-cursor-color '("red" "blue" "limegreen"))

 
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
(setq compilation-scroll-output t)
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")
(require 'color-theme)
(color-theme-initialize)
(color-theme-gnome) 
(global-set-key [C-tab] 'other-window);;切换到另一个窗口，快捷键为C+Tab
;(autoload 'gtags-mode "gtags" "" t)
; (setq c-mode-hook
;          '(lambda ()
;              (gtags-mode 1)
;      ))
; (setq c++-mode-hook
;          '(lambda ()
;              (gtags-mode 1)
;      ))
(ido-mode t)

(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
;                  ; when Smex is auto-initialized on its first run.
;Bind some keys:
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.

(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;(require 'ibuffer)
;(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key [(meta ?/)] 'hippie-expand)


(setq hippie-expand-try-functions-list 
      '(try-expand-dabbrev
	try-expand-dabbrev-visible
	try-expand-dabbrev-all-buffers
	try-expand-dabbrev-from-kill
	try-complete-file-name-partially
	try-complete-file-name
	try-expand-all-abbrevs
	try-expand-list
	try-expand-line
	try-complete-lisp-symbol-partially
	try-complete-lisp-symbol))

(global-set-key "%" 'match-paren)
(show-paren-mode t)          
(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
	((looking-at "\\s\)") (forward-char 1) (backward-list 1))
	(t (self-insert-command (or arg 1)))))

(defun wy-go-to-char (n char)
  "Move forward to Nth occurence of CHAR.
Typing `wy-go-to-char-key' again will move forwad to the next Nth
occurence of CHAR."
  (interactive "p\ncGo to char: ")
  (search-forward (string char) nil nil n)
  (while (char-equal (read-char)
		     char)
    (search-forward (string char) nil nil n))
  (setq unread-command-events (list last-input-event)))

(define-key global-map (kbd "C-c a") 'wy-go-to-char)

;(require 'session)
;  (add-hook 'after-init-hook 'session-initialize)

;(load "desktop") 
;(desktop-load-default) 
;(desktop-read)

(require 'session)
(add-hook 'after-init-hook 'session-initialize)
(require  'wcy-desktop)
(wcy-desktop-init)

;; 在退出 emacs 之前确认是否退出
;;(setq confirm-kill-emacs 'yes-or-no-p)


