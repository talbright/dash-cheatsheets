cheatsheet do
  title 'Vim Formulas'
  docset_file_name 'vim_formulas'
  keyword 'vimformulas'

  category do
    id 'Wrap text at 80 characters'
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
    id 'Force syntax and filetype association'
    entry do
      notes <<-EOS
Add the following to the top or bottom of a file. In this example
we are forcing the file syntax to sh.

```
# vim: set syntax=sh syntax=on filetype=sh:
```

      EOS
    end
  end

end
