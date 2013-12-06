(install-packs '(elpy))

;; Support for pyenv
(defvar pyenv-path "~/.pyenv"
  "pyenv root directory.")

(when (file-exists-p pyenv-path)
  (let ((bin-path (concat pyenv-path "/bin"))
        (shims-path (concat pyenv-path "/shims")))
    (setenv "PATH"
            (concat bin-path ":" shims-path ":"
                    (getenv "PATH")))
    (setq python-check-command (concat shims-path "/flake8"))
    (setq elpy-rpc-python-command (concat shims-path "/python"))))

(elpy-enable)
(elpy-use-ipython)

;;(elpy-clean-modeline)

;; Load bindings config
(live-load-config-file "bindings.el")
