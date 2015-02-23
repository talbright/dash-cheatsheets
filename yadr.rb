cheatsheet do
  title 'Yadr'                # Will be displayed by Dash in the docset list
  docset_file_name 'yadr'     # Used for the filename of the docset
  keyword 'yadr'              # Used as the initial search keyword (listed in Preferences > Docsets)
  introduction <<-EOS
YADR - The best vim, git, zsh plugins and the cleanest vimrc you've ever seen
http://skwp.github.com/dotfiles 
EOS

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
