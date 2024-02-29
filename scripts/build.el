(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-refresh-contents)
(package-initialize)
(package-install 'ox-hugo)
(require 'ox-hugo)

(defun export-org-files ()
  "Export files to hugo markdown."
  (interactive)
  (dolist (f (append (file-expand-wildcards "content-org/**/*.org")
                     (file-expand-wildcards "content-org/*.org")))
    (with-current-buffer (find-file f)
      (org-hugo-export-to-md))))
