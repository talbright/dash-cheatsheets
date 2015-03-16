cheatsheet do
  title 'Vim Formulas'
  docset_file_name 'vim_formulas'
  keyword 'vimformulas'

  category do
    id 'Search and replace with prompting'
    entry do
      notes <<-EOS

```
:%s/SearchText/ReplaceText/gc
```

      EOS
    end
  end

  category do
    id 'Wrap text at 80 characters (gq)'
    entry do
      command ':set textwidth=80'
      name 'set width to wrap at'
    end
    entry do
      command 'v{motion}'
      name 'select text to wrap'
    end
    entry do
      command 'gq'
      name 'format text'
    end
  end

  category do
    id 'Execute a command on file save by directory (autocmd)'
    entry do
      notes <<-EOS
The autocmd is used to hook into various events, including when files are saved.
If you had a project in ```~/Code/dash-cheatsheets```, and you wanted to
automatically run the ```cheatset generate``` command when saving ruby files,
you would add the following to your vimrc:

```
augroup dash_cheatsheets_project
  autocmd!
  autocmd BufWritePost ~/Code/dash-cheatsheets/*.rb !cheatset generate <afile>
augroup END
```

      EOS
    end
  end

  category do
    id 'Swapping windows'
    entry do
      command 'CTRL-W r'
      name 'Rotate windows downwards/rightwards'
    end
    entry do
      command 'CTRL-W R'
      name 'Rotate windows upwards/leftwards'
    end
    entry do
      command 'CTRL-W t, CTRL-W H'
      name 'Rotate from horizontal to vertical split'
      notes %q(With only two windows ```CTRL-W t``` is not necessary)
    end
    entry do
      command 'CTRL-W t, CTRL-W K'
      name 'Rotate from vertial to horizontal split'
      notes %q(With only two windows ```CTRL-W t``` is not necessary)
    end
    entry do
      notes %q(See also <a href="http://vimdoc.sourceforge.net/htmldoc/windows.html#window-moving">help window-moving</a>)
    end
  end

  category do
    id 'The zen of tab settings'
    entry do
      notes <<-EOS
        <a name='//dash_ref/Entry/The zen of tab settings/0'></a>
      EOS
    end
    entry do
      command ':set tabstop={n}'
      name 'number of space characters inserted when a tab is pressed'
    end
    entry do
      command ':set shiftwidth={n}'
      name 'number of space characters inserted for identation'
    end
    entry do
      command ':set expandtab'
      name 'output spaces instead of an actual tab'
      notes 'Use Ctrl-V<Tab> to insert an actual tab'
    end
    entry do
      command ':retab'
      name 'change existing tab characters to match current settings'
    end
  end

  category do
    id 'Set file tabs (modeline)'
    entry do
      notes <<-EOS
Add the following to the top or bottom of a file.

```
# vim: set tabstop=2 expandtab shiftwidth=2 softtabstop=2
```

See also <a href='#//dash_ref/Entry/The zen of tab settings/0'>The art of tab settings</a>
      EOS
    end
  end

  category do
    id 'Set file syntax and filetype (modeline)'
    entry do
      notes <<-EOS
Add the following to the top or bottom of a file. In this example
we are forcing the file syntax to sh, and making sure syntax
highlighting is on.

```
# vim: set syntax=sh syntax=on filetype=sh:
```

      EOS
    end
  end

end

