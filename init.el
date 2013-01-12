(require 'xcscope)
(global-set-key[f5] 'compile)
;(global-set-key[f1] 'man)
;(global-set-key[f2] 'find-file)


;(add-to-list 'load-path "~/.emacs.d/site-lisp/eim")
(add-to-list 'load-path "~/.emacs.d/site-lisp")
(add-to-list 'load-path "~/.emacs.d/org-7.9.2")
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/helm/")

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
(color-theme-dark-blue2) 
 
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
;(require  'wcy-desktop)
;(wcy-desktop-init)
(load "desktop")
(desktop-load-default)
(desktop-read);
(add-hook 'kill-emacs-hook

          '(lambda()(desktop-save "~/")))
;; 在退出 emacs 之前确认是否退出
;;(setq confirm-kill-emacs 'yes-or-no-p)


;; author: pluskid
;; 调用 stardict 的命令行程序 sdcv 来查辞典
;; 如果选中了 region 就查询 region 的内容，否则查询当前光标所在的单词
;; 查询结果在一个叫做 *sdcv* 的 buffer 里面显示出来，在这个 buffer 里面
;; 按 q 可以把这个 buffer 放到 buffer 列表末尾，按 d 可以查询单词
(global-set-key (kbd "C-c d") 'kid-sdcv-to-buffer)
(defun kid-sdcv-to-buffer ()
  (interactive)
  (let ((word (if mark-active
                  (buffer-substring-no-properties (region-beginning) (region-end))
                  (current-word nil t))))
    (setq word (read-string (format "Search the dictionary for (default %s): " word)
                            nil nil word))
    (set-buffer (get-buffer-create "*sdcv*"))
    (buffer-disable-undo)
    (erase-buffer)
    (let ((process (start-process-shell-command "sdcv" "*sdcv*" "sdcv" "-n" word)))
      (set-process-sentinel
       process
       (lambda (process signal)
         (when (memq (process-status process) '(exit signal))
           (unless (string= (buffer-name) "*sdcv*")
             (setq kid-sdcv-window-configuration (current-window-configuration))
             (switch-to-buffer-other-window "*sdcv*")
             (local-set-key (kbd "d") 'kid-sdcv-to-buffer)
             (local-set-key (kbd "q") (lambda ()
                                        (interactive)
                                        (bury-buffer)
                                        (unless (null (cdr (window-list))) ; only one window
                                          (delete-window)))))
           (goto-char (point-min))))))))



(require 'bash-completion)
(bash-completion-setup)

(setq make-backup-files nil)
(setq backup-directory-alist (quote (("." . "~/emacs_edit_backups"))))




;;缺省模式 text-mode
(setq default-major-mode 'text-mode) 
;;以空行结束
(setq require-final-newline t)

(set-default-font "-adobe-Source Code Pro-normal-normal-normal-*-15-*-*-*-m-0-iso10646-1")

(require 'helm-config)
(helm-mode 1)

;;代码折叠
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)  
(add-hook 'python-mode-hook 'hs-minor-mode)



;; yasnippet
(add-to-list 'load-path "~/.emacs.d/yasnippet")
(require 'yasnippet)
(setq yas/snippet-dirs '("~/.emacs.d/yasnippet/snippets" "~/.emacs.d/yasnippet/extras/imported"))
(setq yas/prompt-functions 
      '(yas/dropdown-prompt yas/x-prompt yas/completing-prompt yas/ido-prompt yas/no-prompt))
(yas/global-mode 1)
(yas/minor-mode-on)

;//(add-to-list 'load-path "/home/carlos/.emacs.d")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/home/carlos/.emacs.d/ac-dict")
(ac-config-default)
;; Ignore case if completion target string doesn't include upper characters
(setq ac-ignore-case 'smart)
(add-to-list 'ac-modes 'brandnew-mode)


;; yasnippet

(defface ac-yasnippet-candidate-face
  '((t (:background "sandybrown" :foreground "black")))
  "Face for yasnippet candidate."
  :group 'auto-complete)

(defface ac-yasnippet-selection-face
  '((t (:background "coral3" :foreground "white")))
  "Face for the yasnippet selected candidate."
  :group 'auto-complete)

(defun ac-yasnippet-table-hash (table)
  (cond
   ((fboundp 'yas/snippet-table-hash)
    (yas/snippet-table-hash table))
   ((fboundp 'yas/table-hash)
    (yas/table-hash table))))

(defun ac-yasnippet-table-parent (table)
  (cond
   ((fboundp 'yas/snippet-table-parent)
    (yas/snippet-table-parent table))
   ((fboundp 'yas/table-parent)
    (yas/table-parent table))))

(defun ac-yasnippet-candidate-1 (table)
  (with-no-warnings
    (let ((hashtab (ac-yasnippet-table-hash table))
          (parent (ac-yasnippet-table-parent table))
          candidates)
      (maphash (lambda (key value)
                 (push key candidates))
               hashtab)
      (setq candidates (all-completions ac-prefix (nreverse candidates)))
      (if parent
          (setq candidates
                (append candidates (ac-yasnippet-candidate-1 parent))))
      candidates)))

(defun ac-yasnippet-candidates ()
  (with-no-warnings
    (if (fboundp 'yas/get-snippet-tables)
        ;; >0.6.0
        (apply 'append (mapcar 'ac-yasnippet-candidate-1 (yas/get-snippet-tables major-mode)))
      (let ((table
             (if (fboundp 'yas/snippet-table)
                 ;; <0.6.0
                 (yas/snippet-table major-mode)
               ;; 0.6.0
               (yas/current-snippet-table))))
        (if table
            (ac-yasnippet-candidate-1 table))))))

(ac-define-source yasnippet
  '((depends yasnippet)
    (candidates . ac-yasnippet-candidates)
    (action . yas/expand)
    (candidate-face . ac-yasnippet-candidate-face)
    (selection-face . ac-yasnippet-selection-face)
    (symbol . "a")))
