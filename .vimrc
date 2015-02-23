# :set secure
# exrc
augroup dash_cheatsheets_project
  autocmd!
  autocmd BufWritePost *.rb !cheatset generate <afile>
augroup END
