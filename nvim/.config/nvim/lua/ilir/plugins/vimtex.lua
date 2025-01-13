return {
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = "skim"
    vim.g.vimtex_compiler_latexmk = {
        options = {
            '-shell-escape',
            '-verbose',
            '-file-line-error',
            '-synctex=1',
            '-interaction=nonstopmode',
        },
    }
    vim.conceallevel=1
    vim.g.tex_conceal='abdmg'
    vim.g.vimtex_quickfix_ignore_filters = {
        "Underfull",
        'Overfull',
        'specifier changed to',
        'You have requested',
        'Missing number, treated as zero.',
        'There were undefined references',
        'LaTeX Font Warning:',
        'Citation %.%# undefined',
    } 
    vim.g.Tex_IgnoreLevel = 8
  end
}
