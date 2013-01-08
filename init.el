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

(require 'recent-jump)
(recent-jump-mode)
(global-set-key (kbd "C-o") 'recent-jump-backward)
(global-set-key (kbd "C-i") 'recent-jump-forward)




 
;;(setq org-agenda-files (list "~/journal/*.org"))
(setq org-agenda-files (file-expand-wildcards "~/Document/journal/*.org"))
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
; 
(global-set-key (kbd "C-x t") 'org-clock-in)
(global-set-key (kbd "C-x s") 'org-clock-out)
; 
; 

(tool-bar-mode nil);去掉那个大大的工具栏
(scroll-bar-mode nil);去掉滚动条，因为可以使用鼠标滚轮了 ^_^
(setq default-fill-column 60);默认显示 80列就换行
; 
;(setq initial-frame-alist '((top . 0) (left . 0) (width . 1000) (height . 1000)));启动自动最大化
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
