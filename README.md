My emacs configration.
----------------------

Features:
---------    
    Dark theme.
    Highlight current line.
    Line numbering.
    Hides menubar, scroll bar and tool bar.
    Bar cursor.
    etc.

Instructions:
-------------
    # Backup existing files
    cd ~/
    mv .emacs .emacs.backup
    mv .emacs.d .emacs.d.backup

    # Clone the repo to ~/.emacs.d
    git clone https://github.com/vinayak-kaniyarakkal/.emacs.d
    Fire up your emacs.



If you are uncomfortable without a menubar:
-------------------------------------------

    Open ~/.emacs.d/init.el
    Find out (menu-bar-mode 0)
    Replace 0 with 1