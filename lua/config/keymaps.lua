-- keymaps.lua

--local discipline = require("craftzdog.discipline")
--discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- プラグイン: NERDTree
-- リーダーキー + n で NERDTree をトグル
keymap.set("n", "<leader>n", ":Neotree<CR>", opts)

-- プラグイン: vim-airline
-- Ctrl + p と Ctrl + t でタブを切り替え
keymap.set("n", "<C-p>", "<Plug>(AirlineSelectPrevTab)", opts)
keymap.set("n", "<C-t>", "<Plug>(AirlineSelectNextTab)", opts)

-- ウィンドウ移動
-- Ctrl + h/j/k/l でウィンドウ間を移動
keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)

-- インサートモードから抜ける
-- jk または jj でインサートモードを終了
keymap.set("i", "jk", "<Esc>", opts)
keymap.set("i", "jj", "<Esc>", opts)

-- プラグイン: OmniSharp-Vim
-- OmniSharp サーバーの起動/停止と定義へ移動
keymap.set("n", "<leader>cs", ":OmniSharpStartServer<CR>", opts)
keymap.set("n", "<leader>cc", ":OmniSharpStopServer<CR>", opts)
keymap.set("n", "<leader>cd", ":OmniSharpGotoDefinition<CR>", opts)

-- 高速移動
-- J/K/H/L で一度に5行または5文字移動
keymap.set("n", "J", "5j", opts)
keymap.set("n", "H", "5h", opts)
keymap.set("n", "K", "5k", opts)
keymap.set("n", "L", "5l", opts)

-- プラグイン: Lazygit
-- リーダーキー + gg で Lazygit を起動
keymap.set("n", "<leader>gg", ":LazyGit<CR>", opts)

-- レジスタに影響を与えずに操作
keymap.set("n", "x", '"_x')
keymap.set("n", "<Leader>p", '"0p')
keymap.set("n", "<Leader>P", '"0P')
keymap.set("v", "<Leader>p", '"0p')
keymap.set("n", "<Leader>c", '"_c')
keymap.set("n", "<Leader>C", '"_C')
keymap.set("v", "<Leader>c", '"_c')
keymap.set("v", "<Leader>C", '"_C')
keymap.set("n", "<Leader>d", '"_d')
keymap.set("n", "<Leader>D", '"_D')
keymap.set("v", "<Leader>d", '"_d')
keymap.set("v", "<Leader>D", '"_D')

-- インクリメント/デクリメント
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- 前の単語を削除
keymap.set("n", "dw", 'vb"_d')

-- すべて選択
keymap.set("n", "<C-a>", "gg<S-v>G")

-- 継続を無効化
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- ジャンプリスト
keymap.set("n", "<C-m>", "<C-i>", opts)

-- 新しいタブ
keymap.set("n", "te", ":tabedit")

-- ウィンドウを分割
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
-- ウィンドウを移動
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")
-- ウィンドウをリサイズ

keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")

keymap.set("n", "<C-w><down>", "<C-w>-")
-- Copilot
keymap.set("n", "<leader>ce", "<cmd>Copilot enable<cr>", { desc = "Copilot Enable" })
keymap.set("n", "<leader>cd", "<cmd>Copilot disable<cr>", { desc = "Copilot Disable" })
keymap.set("n", "<leader>cs", "<cmd>Copilot status<cr>", { desc = "Copilot Status" })
-- 診断
--keymap.set("n", "<C-j>", function()
--   diagnostic.goto_next()

--end, opts)
-- カスタム関数
keymap.set("n", "<leader>r", function()
    require("craftzdog.hsl").replaceHexWithHSL()
end)
keymap.set("n", "<leader>i", function()
    require("craftzdog.lsp").toggleInlayHints()
end)
