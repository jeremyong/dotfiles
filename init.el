(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
	     '("original" . "http://tromey.com/elpa/"))
(package-initialize)

(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)

(setq delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(require 'evil)
(evil-mode 1)

(add-to-list 'auto-mode-alist '("\\.erl?$" . erlang-mode))
(add-to-list 'auto-mode-alist '("\\.hrl?$" . erlang-mode))
(add-to-list 'auto-mode-alist '("\\.app?$" . erlang-mode))

(add-to-list 'auto-mode-alist '("\\.md?$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown?$" . markdown-mode))

(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile.lock$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake?$" . ruby-mode))

(add-to-list 'auto-mode-alist '("\\.hs?$" . haskell-mode))

;;(require 'surround)
;;(global-surround-mode 1)

(color-theme-sanityinc-tomorrow-night)

(require 'rcirc)

(add-hook 'rcirc-mode-hook
          (lambda ()
            (set (make-local-variable 'scroll-conservatively)
                 8192)))

(setq rcirc-debug-flag-t)

(set-face-foreground 'rcirc-my-nick "red" nil)

(setq rcirc-default-nick "banachtarski")
(setq rcirc-default-user-name "banachtarski")
(setq rcirc-default-full-name "jeremy ong")

(setq rcirc-startup-channels-alist
      '(("\\.freenode\\.net$" "#erlang" "#riak" "#engineyard" "#ey-playmesh")))

(setq c-basic-offset 4)
(c-set-offset 'substatement-open 0)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(scroll-bar ((t nil))))
