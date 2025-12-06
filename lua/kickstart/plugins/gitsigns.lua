return {
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      on_attach = function(bufnr)
        local gitsigns = require 'gitsigns'

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        -- Navigation
        map('n', ']c', function()
          if vim.wo.diff then
            vim.cmd.normal { ']c', bang = true }
          else
            gitsigns.nav_hunk 'next'
          end
        end, { desc = 'Jump to next git [c]hange' })

        map('n', '[c', function()
          if vim.wo.diff then
            vim.cmd.normal { '[c', bang = true }
          else
            gitsigns.nav_hunk 'prev'
          end
        end, { desc = 'Jump to previous git [C]hange' })

        -- Actions
        -- visual mode
        map('v', '<leader>hs', function()
          gitsigns.stage_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, { desc = 'Git [S]tage Hunk' })
        map('v', '<leader>hr', function()
          gitsigns.reset_hunk { vim.fn.line '.', vim.fn.line 'v' }
        end, { desc = 'Git [R]eset Hunk' })
        -- normal mode
        map('n', '<leader>hs', gitsigns.stage_hunk, { desc = 'Git [S]tage Hunk' })
        map('n', '<leader>hr', gitsigns.reset_hunk, { desc = 'Git [R]eset Hunk' })
        map('n', '<leader>hS', gitsigns.stage_buffer, { desc = 'Git [S]tage Buffer' })
        map('n', '<leader>hu', gitsigns.stage_hunk, { desc = 'Git [U]ndo Stage Hunk' })
        map('n', '<leader>hR', gitsigns.reset_buffer, { desc = 'Git [R]eset Buffer' })
        map('n', '<leader>hp', gitsigns.preview_hunk, { desc = 'Git [P]review Hunk' })
        map('n', '<leader>hb', gitsigns.blame_line, { desc = 'Git [B]lame Line' })
        map('n', '<leader>hd', gitsigns.diffthis, { desc = 'Git [D]iff Against Index' })
        map('n', '<leader>hD', function()
          gitsigns.diffthis '@'
        end, { desc = 'git [D]iff against last commit' })
        -- Toggles
        map('n', '<leader>tb', gitsigns.toggle_current_line_blame, { desc = '[T]oggle git show [b]lame line' })
        map('n', '<leader>tD', gitsigns.preview_hunk_inline, { desc = '[T]oggle git show [D]eleted' })
      end,
    },
  },
}
