Vim�UnDo� �Km�gB���A�'��}�M�)C��h&   /   ?  { import = "xyno.plugins.lsp" }, -- Adding lsp folder to lazy   $         	       	   	   	    f�-�    _�                             ����                                                                                                                                                                                                                                                                                                                                                  V        f�S     �          '    �         '    �                 )vim.api.nvim_create_autocmd("VimEnter", {   -    command = "call system('~/startnvim.sh')"   })       )vim.api.nvim_create_autocmd("VimLeave", {   +    command = "call system('~/endnvim.sh')"   })       ,-- vim.api.nvim_create_autocmd("VimLeave", {   (--     command = "call system('~/a.sh')"   -- })5��                                                 �                                           �       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V        f�X     �         -    5��                          �                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V        f�[    �         .      :  command = "silent !kitty @ set-window-state in_editor=1"�         .      :  command = "silent !kitty @ set-window-state in_editor=0"5��       :                  �                      �       :                  d                      5�_�                    #        ����                                                                                                                                                                                                                                                                                                                                                             f�-�     �   #   %   .    5��    #                      t                     �    #                     u                     �    #                      t                     5�_�                    $        ����                                                                                                                                                                                                                                                                                                                                                             f�-�     �   $   '   /    �   $   %   /    5��    $                      u              y       5�_�                    %       ����                                                                                                                                                                                                                                                                                                                                                             f�-�     �   $   %          8  { import = "xyno.plugins" }, -- Adding plugins to lazy5��    $                      u      9               5�_�                    $        ����                                                                                                                                                                                                                                                                                                                                                             f�-�     �   #   $           5��    #                      t                     5�_�      	              $       ����                                                                                                                                                                                                                                                                                                                                                             f�-�     �   #   %   /      ?  { import = "xyno.plugins.lsp" }, -- Adding lsp folder to lazy5��    #                     �                     5�_�                  	   $       ����                                                                                                                                                                                                                                                                                                                                                             f�-�    �   #   %   /      ;  { import = ".plugins.lsp" }, -- Adding lsp folder to lazy5��    #                     �                     5��