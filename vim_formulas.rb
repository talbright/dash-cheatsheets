cheatsheet do
  title 'Vim Formulas'
  docset_file_name 'vim_formulas'
  keyword 'vimformulas'

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
    id 'Force syntax and filetype association (modeline)'
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

