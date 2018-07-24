
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu" . "https://elpa.gnu.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))
(package-initialize)

;; Symbolic link to Git-controlled source file
(setq vc-follow-symlinks t)
;; (unless (package-installed-p 'use-package)
;; (package-refresh-contents)

(eval-when-compile
  ;; Following line is not needed if use-package.el is in ~/.emacs.d
  (add-to-list 'load-path "~/.emacs.d/elpa/use-package")
  (require 'use-package))



(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))



(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; (org-babel-do-load-languages 'org-babel-load-languages
;;			     '((shell         . t)
;;			       (emacs-lisp . t)
;;			       (perl       . t)
;;			       (python     . t)
;;			       (ipython . t)
;;			       ))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (doom-modeline org-present exwm ox-twbs yasnippet-snippets org org-plus-contrib doom try org-beautify-theme nasm-mode x86-lookup rainbow-mode web-mode elpy pyvenv company-jedi dired-subtree dired-quick-sort dired+ evil-collection evil-goggles evil-nerd-commenter evil-surround evil-matchit fzf persistent-scratch mingus golden-ratio prodigy docker shell-switcher markdown-mode pandoc-mode ox-pandoc magit boxquote dumb-jump wgrep-ag ag wgrep image+ elfeed-org ob-async which-key use-package spaceline smex read-aloud pdf-tools ox-gfm org-download org-bullets multi-term key-chord imenu-anywhere hydra htmlize flyspell-correct-ivy flycheck flx-ido expand-region evil-mc elfeed-goodies doom-themes counsel-projectile company-quickhelp color-theme all-the-icons-ivy aggressive-indent ace-window ace-link))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(dashboard-banner-logo-title-face ((t (:inherit default :background "red" :foreground "black"))))
 '(org-level-1 ((t (:inherit outline-1 :height 1.3))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.1))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.0)))))
