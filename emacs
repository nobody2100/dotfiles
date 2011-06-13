(setq inhibit-startup-message   t)   ; Don't want any startup message 
(setq make-backup-files         nil) ; Don't want any backup files 
(setq auto-save-list-file-name  nil) ; Don't want any .saves files 
(setq auto-save-default         nil) ; Don't want any auto saving 

;#
;# programming
;#

; C-F11 to compile
(global-set-key [(control f11)] 'compile)


; turn on random customization options
(custom-set-variables
  '(column-number-mode t)
  '(completion-ignore-case t)
  '(read-file-name-completion-ignore-case t)
  '(default-major-mode 'text-mode)  ; default to text mode, not fundamental
  '(diff-default-read-only nil)  ; don't make diff mode (for patches) read-only
  '(diff-switches "-u --ignore-all-space")

  '(line-number-mode t)

  '(require-final-newline t)
  '(sentence-end-double-space nil)
 
 
  '(history-length t)      ; no max length for minibuffer history; store it all
  '(history-delete-duplicates t)
  '(isearch-allow-scroll t)
  '(isearch-case-fold-search t)
  '(set-mark-command-repeat-pop t) ; allow repeating C-space after C-u

)



