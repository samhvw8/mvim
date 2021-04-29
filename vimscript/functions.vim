command! LspCodeAction lua require 'gv-utils'.code_action()
command! LspDeclaration lua require 'gv-utils'.declaration()
command! LspDefinition lua require 'gv-utils'.definition()
command! LspDocumentSymbol lua require 'gv-utils'.document_symbol()
command! LspFormatting lua require 'gv-utils'.formatting()
command! LspFormattingSync lua require 'gv-utils'.formatting_sync()
command! LspHover lua require 'gv-utils'.hover()
command! LspImplementation lua require 'gv-utils'.implementation()
command! LspRangeCodeAction lua require 'gv-utils'.range_code_action()
command! LspRangeFormatting lua require 'gv-utils'.range_formatting()
command! LspReferences lua require 'gv-utils'.references()
command! LspRename lua require 'gv-utils'.rename()
command! LspTypeDefinition lua require 'gv-utils'.type_definition()
command! LspWorkspaceSymbol lua require 'gv-utils'.workspace_symbol()
command! LspGotoNext lua require 'gv-utils'.goto_next()
command! LspGotoPrev lua require 'gv-utils'.goto_prev()
command! LspShowLineDiagnostics lua require 'gv-utils'.show_line_diagnostics()
command! NextHunk lua require 'gv-utils'.next_hunk()
command! PrevHunk lua require 'gv-utils'.prev_hunk()
command! StageHunk lua require 'gv-utils'.stage_hunk()
command! UndoStageHunk lua require 'gv-utils'.undo_stage_hunk()
command! ResetHunk lua require 'gv-utils'.reset_hunk()
command! ResetBuffer lua require 'gv-utils'.reset_buffer()
command! PreviewHunk lua require 'gv-utils'.preview_hunk()
command! BlameLine lua require 'gv-utils'.blame_line()
command! W noa w

" Debugging
command! DebugToggleBreakpoint lua require'dap'.toggle_breakpoint()
command! DebugStart lua require'dap'.continue()
command! DebugContinue lua require'dap'.continue()
command! DebugStepOver lua require'dap'.step_over()
command! DebugStepOut lua require'dap'.step_out()
command! DebugStepInto lua require'dap'.step_into()
command! DebugToggleRepl lua require'dap'.repl.toggle()
command! DebugGetSession lua require'dap'.session()

" Available Debug Adapters:
"   https://microsoft.github.io/debug-adapter-protocol/implementors/adapters/
" 
" Adapter configuration and installation instructions:
"   https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation
" 
" Debug Adapter protocol:
"   https://microsoft.github.io/debug-adapter-protocol/

