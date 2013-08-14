;;(live-add-pack-lib "ipython")

;; (autoload 'dash-at-point "dash-at-point"
;; 	            "Search the word at point with Dash." t nil)

;;ipython
(setq
 python-shell-interpreter "ipython"
 python-shell-interpreter-args "--no-color"
 python-shell-prompt-regexp "In \\[[0-9]+\\]: "
 python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
 python-shell-completion-setup-code
   "from IPython.core.completerlib import module_completion"
 python-shell-completion-module-string-code
   "';'.join(module_completion('''%s'''))\n"
 python-shell-completion-string-code
   "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")

;; Load bindings config
(live-load-config-file "bindings.el")
