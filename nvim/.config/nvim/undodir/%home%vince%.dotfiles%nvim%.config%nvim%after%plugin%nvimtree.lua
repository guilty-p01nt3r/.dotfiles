Vim�UnDo� s���[&|����p��+hW��p�����&8   w                  .       .   .   .    e�J9    _�                             ����                                                                                                                                                                                                                                                                                                                                                             dHׁ    �                   �             �             5��                          Q                      �                          Q                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d�Ę     �               vim.g.loaded_netrwPlugin = 15�5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d�ě     �                  �               �               5��                          �                     �                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d�ğ     �                 NvimTreeGenerateOnAttach5��                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d�Ĭ     �                  �               5��                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d�ĳ     �               �               5��                   a       �              
      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             d�Ĵ     �                --5��                          �                     5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                      r          V       d���     �             a   --   --- This function has been generated from your   --   view.mappings.list   --   view.mappings.custom_only   --   remove_keymaps   --   p-- You should add this function to your configuration and set on_attach = on_attach in the nvim-tree setup call.   --   [-- Although care was taken to ensure correctness and completeness, your review is required.   --   C-- Please check for the following issues in auto generated content:   (--   "Mappings removed" is as you expect   $--   "Mappings migrated" are correct   --   q-- Please see https://github.com/nvim-tree/nvim-tree.lua/wiki/Migrating-To-on_attach for assistance in migrating.   --       local function on_attach(bufnr)   &  local api = require('nvim-tree.api')         local function opts(desc)   i    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }     end           A  -- Default mappings. Feel free to modify or remove as you wish.     --     -- BEGIN_DEFAULT_ON_ATTACH   Q  vim.keymap.set('n', '<C-]>', api.tree.change_root_to_node,          opts('CD'))   ]  vim.keymap.set('n', '<C-e>', api.node.open.replace_tree_buffer,     opts('Open: In Place'))   S  vim.keymap.set('n', '<C-k>', api.node.show_info_popup,              opts('Info'))   d  vim.keymap.set('n', '<C-r>', api.fs.rename_sub,                     opts('Rename: Omit Filename'))   \  vim.keymap.set('n', '<C-t>', api.node.open.tab,                     opts('Open: New Tab'))   c  vim.keymap.set('n', '<C-v>', api.node.open.vertical,                opts('Open: Vertical Split'))   e  vim.keymap.set('n', '<C-x>', api.node.open.horizontal,              opts('Open: Horizontal Split'))   ^  vim.keymap.set('n', '<BS>',  api.node.navigate.parent_close,        opts('Close Directory'))   S  vim.keymap.set('n', '<CR>',  api.node.open.edit,                    opts('Open'))   [  vim.keymap.set('n', '<Tab>', api.node.open.preview,                 opts('Open Preview'))   [  vim.keymap.set('n', '>',     api.node.navigate.sibling.next,        opts('Next Sibling'))   _  vim.keymap.set('n', '<',     api.node.navigate.sibling.prev,        opts('Previous Sibling'))   Z  vim.keymap.set('n', '.',     api.node.run.cmd,                      opts('Run Command'))   Q  vim.keymap.set('n', '-',     api.tree.change_root_to_parent,        opts('Up'))   U  vim.keymap.set('n', 'a',     api.fs.create,                         opts('Create'))   ^  vim.keymap.set('n', 'bmv',   api.marks.bulk.move,                   opts('Move Bookmarked'))   _  vim.keymap.set('n', 'B',     api.tree.toggle_no_buffer_filter,      opts('Toggle No Buffer'))   S  vim.keymap.set('n', 'c',     api.fs.copy.node,                      opts('Copy'))   _  vim.keymap.set('n', 'C',     api.tree.toggle_git_clean_filter,      opts('Toggle Git Clean'))   W  vim.keymap.set('n', '[c',    api.node.navigate.git.prev,            opts('Prev Git'))   W  vim.keymap.set('n', ']c',    api.node.navigate.git.next,            opts('Next Git'))   U  vim.keymap.set('n', 'd',     api.fs.remove,                         opts('Delete'))   T  vim.keymap.set('n', 'D',     api.fs.trash,                          opts('Trash'))   Y  vim.keymap.set('n', 'E',     api.tree.expand_all,                   opts('Expand All'))   _  vim.keymap.set('n', 'e',     api.fs.rename_basename,                opts('Rename: Basename'))   ^  vim.keymap.set('n', ']e',    api.node.navigate.diagnostics.next,    opts('Next Diagnostic'))   ^  vim.keymap.set('n', '[e',    api.node.navigate.diagnostics.prev,    opts('Prev Diagnostic'))   [  vim.keymap.set('n', 'F',     api.live_filter.clear,                 opts('Clean Filter'))   U  vim.keymap.set('n', 'f',     api.live_filter.start,                 opts('Filter'))   S  vim.keymap.set('n', 'g?',    api.tree.toggle_help,                  opts('Help'))   a  vim.keymap.set('n', 'gy',    api.fs.copy.absolute_path,             opts('Copy Absolute Path'))   ^  vim.keymap.set('n', 'H',     api.tree.toggle_hidden_filter,         opts('Toggle Dotfiles'))   `  vim.keymap.set('n', 'I',     api.tree.toggle_gitignore_filter,      opts('Toggle Git Ignore'))   [  vim.keymap.set('n', 'J',     api.node.navigate.sibling.last,        opts('Last Sibling'))   \  vim.keymap.set('n', 'K',     api.node.navigate.sibling.first,       opts('First Sibling'))   ^  vim.keymap.set('n', 'm',     api.marks.toggle,                      opts('Toggle Bookmark'))   S  vim.keymap.set('n', 'o',     api.node.open.edit,                    opts('Open'))   e  vim.keymap.set('n', 'O',     api.node.open.no_window_picker,        opts('Open: No Window Picker'))   T  vim.keymap.set('n', 'p',     api.fs.paste,                          opts('Paste'))   _  vim.keymap.set('n', 'P',     api.node.navigate.parent,              opts('Parent Directory'))   T  vim.keymap.set('n', 'q',     api.tree.close,                        opts('Close'))   U  vim.keymap.set('n', 'r',     api.fs.rename,                         opts('Rename'))   V  vim.keymap.set('n', 'R',     api.tree.reload,                       opts('Refresh'))   Y  vim.keymap.set('n', 's',     api.node.run.system,                   opts('Run System'))   U  vim.keymap.set('n', 'S',     api.tree.search_node,                  opts('Search'))   \  vim.keymap.set('n', 'U',     api.tree.toggle_custom_filter,         opts('Toggle Hidden'))   W  vim.keymap.set('n', 'W',     api.tree.collapse_all,                 opts('Collapse'))   R  vim.keymap.set('n', 'x',     api.fs.cut,                            opts('Cut'))   X  vim.keymap.set('n', 'y',     api.fs.copy.filename,                  opts('Copy Name'))   a  vim.keymap.set('n', 'Y',     api.fs.copy.relative_path,             opts('Copy Relative Path'))   S  vim.keymap.set('n', '<2-LeftMouse>',  api.node.open.edit,           opts('Open'))   Q  vim.keymap.set('n', '<2-RightMouse>', api.tree.change_root_to_node, opts('CD'))     -- END_DEFAULT_ON_ATTACH             -- Mappings removed via:     --   remove_keymaps   	  --   OR   &  --   view.mappings.list..action = ""     --   [  -- The dummy set before del is done for safety, in case a default mapping does not exist.     --   N  -- You might tidy things by removing these along with their default mapping.   6  vim.keymap.set('n', '<C-e>', '', { buffer = bufnr })   2  vim.keymap.del('n', '<C-e>', { buffer = bufnr })   2  vim.keymap.set('n', 'd', '', { buffer = bufnr })   .  vim.keymap.del('n', 'd', { buffer = bufnr })       end5��           a               �      
              5�_�                 	           ����                                                                                                                                                                                                                                                                                                                                                V       d���     �       b       �             5��                    a                       
      5�_�   	      
          f        ����                                                                                                                                                                                                                                                                                                                            f          l          V       d���    �   e   f          &    remove_keymaps = { "<C-e>", "d" },       view = {           mappings = {               list =   *            { key = "<C-e>", action = "" }   
        },       },5��    e                      v      �               5�_�                   k        ����                                                                                                                                                                                                                                                                                                                                                             eK�W    �   l               �   m            �   k               �   k            5��    k                                           �    k                                           �    l               	   2                 O      5�_�                    u        ����                                                                                                                                                                                                                                                                                                                                                             eK��    �   t   u           5��    t                      (                     5�_�                    t        ����                                                                                                                                                                                                                                                                                                                                                             e��     �   t   w   v       �   t   v   u    5��    t                      (                     �    t                      (                     5�_�                    t        ����                                                                                                                                                                                                                                                                                                                                                             e�     �   t   w   x       �   t   v   w    5��    t                      (                     �    t                      (                     5�_�                    v        ����                                                                                                                                                                                                                                                                                                                                                             e�     �   u      y       �   v   w   y    5��    u                       )                      �    u                     )              .      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e�     �   ~              5��    ~                      X                     5�_�                    v        ����                                                                                                                                                                                                                                                                                                                                                             e�     �   u   v          Klocal parser_config = require'nvim-treesitter.parsers'.get_parser_configs()5��    u                      )      L               5�_�                    v        ����                                                                                                                                                                                                                                                                                                                            v           v          v       e�    �   u   w         parser_config.gotmpl = {�   v   w       5��    u                     )                    5�_�                   v        ����                                                                                                                                                                                                                                                                                                                            v           v          v       e��    �   u   v       	   #treesitter_parser_config.gotmpl = {     install_info = {   @    url = "https://github.com/ngalaiko/tree-sitter-go-template",       files = {"src/parser.c"}     },     filetype = "gotmpl",   :  used_by = {"gohtmltmpl", "gotexttmpl", "gotmpl", "yaml"}   }    5��    u       	               )      �               5�_�                    m        ����                                                                                                                                                                                                                                                                                                                            m           t                   e�V   	 �   m   u   v      "treesitter_parser_config.templ = {     install_info = {   @    url = "https://github.com/vrischmann/tree-sitter-templ.git",   .    files = {"src/parser.c", "src/scanner.c"},       branch = "master",     },   }�   l   n   v      Wlocal treesitter_parser_config = require "nvim-treesitter.parsers".get_parser_configs()5��    l                                           �    m                      g                     �    n                      �                     �    o                      �                     �    p                      �                     �    q                                           �    r                      3                     �    s                      ;                     5�_�                    v        ����                                                                                                                                                                                                                                                                                                                                                             e�F1     �   v            5��    v                      t                     5�_�                    v        ����                                                                                                                                                                                                                                                                                                                                                             e�F2     �   v   x   w    �   v   w   w    5��    v                      t              3       5�_�                    w   "    ����                                                                                                                                                                                                                                                                                                                                                             e�F5     �   v   x   x      2vim.treesitter.language.register('templ', 'templ')5��    v   "                 �                    �    v   "                 �                    5�_�                    w   +    ����                                                                                                                                                                                                                                                                                                                                                             e�F=   
 �   v   x   x      2vim.treesitter.language.register('gotpl', 'templ')5��    v   +                 �                    5�_�                    w   #    ����                                                                                                                                                                                                                                                                                                                                                             e�FY     �   w   y   x    �   w   x   x    5��    w                      �              3       5�_�      !               x   $    ����                                                                                                                                                                                                                                                                                                                                                             e�F\     �   w   y   y      2vim.treesitter.language.register('gotpl', 'gopls')5��    w   $                 �                    5�_�       "           !   x   +    ����                                                                                                                                                                                                                                                                                                                                                             e�F^     �   w   y   y      2vim.treesitter.language.register('gopls', 'gopls')5��    w   +                 �                    5�_�   !   #           "   x   /    ����                                                                                                                                                                                                                                                                                                                                                             e�F`     �   x   z   y    �   x   y   y    5��    x                      �              3       5�_�   "   $           #   y   +    ����                                                                                                                                                                                                                                                                                                                                                             e�Fa    �   x   z   z      2vim.treesitter.language.register('gopls', 'gotpl')5��    x   +                                     5�_�   #   %           $   y   .    ����                                                                                                                                                                                                                                                                                                                                                             e�Fc     �   y   {   z    �   y   z   z    5��    y                                    2       5�_�   $   &           %   z   "    ����                                                                                                                                                                                                                                                                                                                                                             e�Fe     �   y   {   {      1vim.treesitter.language.register('gopls', 'htmx')5��    y   "                 .                    5�_�   %   (           &   z   *    ����                                                                                                                                                                                                                                                                                                                                                             e�Fh    �   y   {   {      0vim.treesitter.language.register('htmx', 'htmx')5��    y   *                 6                    5�_�   &   )   '       (   y   $    ����                                                                                                                                                                                                                                                                                                                                                             e�Fr    �   x   z   {      1vim.treesitter.language.register('gopls', 'htmx')5��    x   $                 �                    �    x   %                 �                    5�_�   (   *           )   w   &    ����                                                                                                                                                                                                                                                                                                                            z   &       w   &       V   &    e�F�     �   w   �   |       �   x   y   |    �   w   y   {    5��    w                      �                     �    w                     �              .      5�_�   )   +           *   w        ����                                                                                                                                                                                                                                                                                                                            �           w           V        e�F�    �   v   w       
   2vim.treesitter.language.register('gotpl', 'gopls')   Klocal parser_config = require'nvim-treesitter.parsers'.get_parser_configs()   parser_config.gotmpl = {     install_info = {   @    url = "https://github.com/ngalaiko/tree-sitter-go-template",       files = {"src/parser.c"}     },     filetype = "gotmpl",   :  used_by = {"gohtmltmpl", "gotexttmpl", "gotmpl", "yaml"}   }5��    v       
               t      b              5�_�   *   -           +   w        ����                                                                                                                                                                                                                                                                                                                            w           y           V        e�I7    �   x   z          1vim.treesitter.language.register('htmx', 'gotpl')�   w   y          1vim.treesitter.language.register('gotpl', 'htmx')�   v   x   z      2vim.treesitter.language.register('gopls', 'gotpl')5��    v   +                 �                    �    w   "                 �                    �    x   *                                     5�_�   +   .   ,       -   w        ����                                                                                                                                                                                                                                                                                                                            w           y                   e�I�    �   w   z   z      0vim.treesitter.language.register('tmpl', 'htmx')   0vim.treesitter.language.register('htmx', 'tmpl')�   v   x   z      1vim.treesitter.language.register('gopls', 'tmpl')5��    v                      t                     �    w                      �                     �    x                      �                     5�_�   -               .   w   ,    ����                                                                                                                                                                                                                                                                                                                            y   ,       w   ,       V   ,    e�J8    �   v   w          3--vim.treesitter.language.register('gopls', 'tmpl')   2--vim.treesitter.language.register('tmpl', 'htmx')   2--vim.treesitter.language.register('htmx', 'tmpl')5��    v                      t      �               5�_�   +           -   ,   w        ����                                                                                                                                                                                                                                                                                                                            w           w           V        e�Ib    �   v   z        5��    v                      t      �               5�_�   &           (   '   y   +    ����                                                                                                                                                                                                                                                                                                                                                             e�Fm     �   x   z   {      2vim.treesitter.language.register('gopls', 'gotpl')5��    x   +                                     5�_�                   w   /    ����                                                                                                                                                                                                                                                                                                                                                             e�FA     �   w   x   x    �   w   x   x      2vim.treesitter.language.register('gotpl', 'gopls')5��    w                      �              3       5�_�                     x   +    ����                                                                                                                                                                                                                                                                                                                                                             e�FB     �   w   y   y      1vim.treesitter.language.register('gotpl', 'htmx')5��    w   +                 �                    5�_�                    }        ����                                                                                                                                                                                                                                                                                                                            v           v          v       e�)    �   }   ~          �   ~      �    �   }      �      Zautocmd BufNewFile,BufRead * if search('{{.\+}}', 'nw') | setlocal filetype=gotmpl | endif5��    }                                           �    }                   Z                 Z       5�_�                   d       ����                                                                                                                                                                                                                                                                                                                            e          e          V       d���     �   c   f   k      3require("nvim-tree").setup({ on_attach = on_attach,5��    c                   Z                    5�_�                     d       ����                                                                                                                                                                                                                                                                                                                            d   @       d   :       V       d���     �   c   f   j      6require("nvim-tree").setup({ on_attach = on_attach, })5��    c   3                 q                    5�_�   	              
   \        ����                                                                                                                                                                                                                                                                                                                            \           _                   d���     �   [   ]   r      8--  vim.keymap.set('n', '<C-e>', '', { buffer = bufnr })�   \   `   r      4--  vim.keymap.del('n', '<C-e>', { buffer = bufnr })   4--  vim.keymap.set('n', 'd', '', { buffer = bufnr })   0--  vim.keymap.del('n', 'd', { buffer = bufnr })5��    [                      9                     �    [                     9                    �    \                      r                     �    ]                      �                     �    ^                      �                     5��