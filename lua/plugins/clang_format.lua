vim.cmd [[
  autocmd FileType c,cpp,objc,objcpp autocmd BufWritePre <buffer> :normal m`gg=G``
  autocmd FileType c,cpp,objc,objcpp autocmd BufWritePre <buffer> :silent %!clang-format
]]

