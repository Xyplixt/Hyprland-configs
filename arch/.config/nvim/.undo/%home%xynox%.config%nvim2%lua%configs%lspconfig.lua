Vim�UnDo� �A���=����k�D}ש���m�'�F0e�GT   A                                  f�L7    _�                     0        ����                                                                                                                                                                                                                                                                                                                                                             f�J�     �   0            5��    0                      �                     5�_�                    1        ����                                                                                                                                                                                                                                                                                                                                                             f�J�     �   0               �   1            5��    0                   N   �              N       5�_�                    1   M    ����                                                                                                                                                                                                                                                                                                                                                             f�J�    �         1      lspconfig.clangd.setup{�   +   -   1      lspconfig.pyright.setup{5��    +                     .                     �                         o                     5�_�                    1        ����                                                                                                                                                                                                                                                                                                                                                             f�J�     �   0              Nmap("n", "<leader>sh", vim.lsp.buf.signature_help, opts "Show signature help")5��    0                      �                     5�_�                    1   
    ����                                                                                                                                                                                                                                                                                                                                                             f�J�    �   0              Uvim.keymap("n", "<leader>sh", vim.lsp.buf.signature_help, opts "Show signature help")5��    0   
                  �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f�Kf     �          1    5��                                                  �                                                5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             f�Kg     �          2      --�         2    5��                                        w       5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                                             f�Kh     �          5      "--M.on_attach = function(_, bufnr)5��                                                  5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                             f�Ki     �          5      !-M.on_attach = function(_, bufnr)5��                                                  5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                             f�Kt     �          5    5��                                                  5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                             f�Ku    �          6       �         6    5��                                                  5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        f�K�     �          1    �         1    �                 local M = {}    M.on_attach = function(_, bufnr)     local function opts(desc)   4    return { buffer = bufnr, desc = "LSP " .. desc }     end5��                                   �               �                                           �      5�_�                    @        ����                                                                                                                                                                                                                                                                                                                                          \       V        f�K�     �   ?   @          Yvim.keymap.set("n", "<leader>sh", vim.lsp.buf.signature_help, opts "Show signature help")5��    ?                      /      Z               5�_�                    ?        ����                                                                                                                                                                                                                                                                                                                                          \       V        f�K�     �   ?            5��    ?                      /                     �    ?                      /                     �    ?                     0                     �    ?                      /                     5�_�                    @        ����                                                                                                                                                                                                                                                                                                                                          \       V        f�K�    �   ?               �   @            5��    ?                      /                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                          \       V        f�L3     �         @    5��                          �                     �                         �                     �                          �                     5�_�                             ����                                                                                                                                                                                                                                                                                                                                          \       V        f�L6    �         A       5��                          �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                          X       V        f�K�     �               �         1    �          1      Yvim.keymap.set("n", "<leader>sh", vim.lsp.buf.signature_help, opts "Show signature help")5��                                   �               �                                           Z       5�_�                    6        ����                                                                                                                                                                                                                                                                                                                            6           D   \       V       f�K�     �   5   7        �   5   6        �   5   6          local M = {}   local map = vim.keymap.set       "-- export on_attach & capabilities    M.on_attach = function(_, bufnr)     local function opts(desc)   4    return { buffer = bufnr, desc = "LSP " .. desc }     end       C  map("n", "gD", vim.lsp.buf.declaration, opts "Go to declaration")   A  map("n", "gd", vim.lsp.buf.definition, opts "Go to definition")   I  map("n", "gi", vim.lsp.buf.implementation, opts "Go to implementation")   P  map("n", "<leader>sh", vim.lsp.buf.signature_help, opts "Show signature help")   W  map("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts "Add workspace folder")   ]  map("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts "Remove workspace folder")5��    5                            Z               �    5                                    �      5��