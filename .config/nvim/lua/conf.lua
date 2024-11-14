local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set("n", "<leader>fo", "<cmd>Telescope oil<CR>", { noremap = true, silent = true , desc= "Telesope oil dir search"})

local cmp = require('cmp')
cmp.setup({
    sources = {
        {name = 'buffer'},
        {name = 'path'},
    },
    mapping = {
        ['<Tab>'] = cmp.mapping.select_next_item(),
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    completion = {
        keyword_length = 3,
        completeopt = 'menu,menuone,noselect',
        autocomplete = {
            require('cmp.types').cmp.TriggerEvent.InsertEnter,
            require('cmp.types').cmp.TriggerEvent.TextChanged
        }
    }
})
require("oil").setup({
    use_default_keymaps = true,
})
vim.keymap.set("n", "-", "<CMD>Oil --float<CR>", { desc = "Open parent directory in float mode" })
vim.keymap.set("n", "<C-f>", "<CMD>Oil<CR>", { desc = "Open parent directory" })
require("telescope").load_extension("oil")

--local lspconfig = require('lspconfig')
--lspconfig.clangd.setup({
--    capabilities = capabilities
--})
--
