augroup vimlsp_settings_vim_language_server
  au!
  autocmd User lsp_setup call lsp#register_server({
      \ 'name': 'vim-language-server',
      \ 'cmd': {server_info->[&shell, &shellcmdflag, 'vim-language-server --stdio']},
      \ 'initialization_options': {
      \   'vimruntime': $VIMRUNTIME,
      \   'runtimepath': &rtp,
      \ },
      \ 'whitelist': ['vim'],
      \ })
augroup END