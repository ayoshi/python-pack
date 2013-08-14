(live-add-pack-lib "emacs-for-python")

;; Fix for some incompatibility shit
(defun yas/initialize nil)

(require 'epy-init)

;; Load bindings config
(live-load-config-file "bindings.el")
