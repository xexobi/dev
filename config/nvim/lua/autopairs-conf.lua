require("nvim-autopairs").setup({
  check_ts = true,      -- pakai treesitter untuk cek konteks, biar tidak pasang pasangan di komentar atau string
  fast_wrap = {
    map = '<M-e>',     -- tekan Alt+e untuk wrap teks dengan tanda kurung/dll
    chars = { '{', '[', '(', '"', "'" },
    pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
    offset = 0,
    end_key = '$',
    keys = 'qwertyuiopzxcvbnmasdfghjkl',
    check_comma = true,
    highlight = 'Search',
    highlight_grey='Comment',
  },
})

