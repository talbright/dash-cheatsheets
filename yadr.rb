cheatsheet do
  title 'Yadr'                # Will be displayed by Dash in the docset list
  docset_file_name 'yadr'     # Used for the filename of the docset
  keyword 'yadr'              # Used as the initial search keyword (listed in Preferences > Docsets)
  introduction <<-EOS
YADR - The best vim, git, zsh plugins and the cleanest vimrc you've ever seen
http://skwp.github.com/dotfiles 
EOS

  category do
    id 'Vim - EasyMotion'
    entry do
      command ',<Esc>'
      name 'Motion forward'
    end
    entry do
      command ',<Shift><Esc>'
      name 'Motion backward'
    end
    entry do
      notes %q(See also <a href="https://github.com/Lokaltog/vim-easymotion">EasyMotion</a>)
    end
  end

  category do
    id 'Vim - CtrlP'
    entry do
      command ',b'
      name 'Buffer finder'
    end
    entry do
      command ',t'
      name 'File finder'
    end
    entry do
      command '<c-t>'
      name 'Open list item in new tab'
    end
    entry do
      command '<c-x>'
      name 'Open list item in horizontal split'
    end
    entry do
      command '<c-v>'
      name 'Open list item in vertical split'
    end
    entry do
      command '<c-r>'
      name 'Regex mode'
    end
    entry do
      command '<c-d>'
      name 'Filename only search'
    end
    entry do
      command '<c-f>'
      command '<c-b>'
      name 'Cycle modes'
    end
    entry do
      notes %q(See also <a href="https://github.com/kien/ctrlp.vim">CtrlP</a>)
    end
  end

  category do
    id 'Vim - Gundo'
    entry do
      command ',u'
      name 'Open Gundo visual undo'
    end
    entry do
      command 'q'
      name 'Quit Gundo'
    end
    entry do
      command 'p'
      name 'Preview diff of change'
    end
    entry do
      notes %q(See also <a href="http://sjl.bitbucket.org/gundo.vim/">Gundo</a>)
    end
  end

  category do
    id 'Updating YADR'
    entry do
      notes <<-EOS
        ```
        % cd ~/.yadr
        % git pull --rebase
        % rake update
        ```
      EOS
    end
  end

  category do
    id 'Vim - Plugin Management'
    entry do
      name 'Add a Plugin'
      notes <<-EOS
        ```
        % yav -u https://github.com/airblade/vim-rooter
        ```
      EOS
    end
    entry do
      name 'Remove a Plugin'
      notes <<-EOS
        ```
        % ydv -u airblade/vim-rooter
        ```
      EOS
    end
  end

end
