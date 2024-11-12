(setq make-backup-files nil
      auto-save-default nil
      menu-bar-mode     nil
      custom-file (make-temp-file "emacs-custom"))

(defun xclip-copy ()
  "Copies region or paragraph to clipboard."
  (interactive)
  (let ((pos (point)))
    (unless (use-region-p)
      (mark-paragraph))
    (call-process-region (region-beginning) (region-end) "xclip" nil nil nil "-sel" "clip")
    (deactivate-mark)
    (goto-char pos)))

(defun xclip-paste ()
  "Pastes clipboard content to point."
  (interactive)
  (insert (shell-command-to-string "xclip -o -sel clip")))
