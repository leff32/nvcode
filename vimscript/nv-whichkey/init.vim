" Leader Key Maps

" Timeout
let g:which_key_timeout = 50

let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

let g:which_key_map =  {}
let g:which_key_sep = '→'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Format current buffer
function MyFormat()
  lua vim.lsp.buf.formatting()
endfunction

let g:which_key_map[','] = ['<Plug>(emmet-expand-abbr)'         , 'exapnd tags']
let g:which_key_map['"'] = ['<Plug>PeekupOpen'                  , 'registers']
let g:which_key_map['?'] = [':NvimTreeFindFile'                 , 'find current file']
let g:which_key_map['e'] = [':NvimTreeToggle'                   , 'explorer']
let g:which_key_map['f'] = [':call MyFormat()'                  , 'format']
let g:which_key_map['m'] = [':MarkdownPreviewToggle'            , 'markdown preview']
let g:which_key_map['h'] = [':let @/ = ""'                      , 'no highlight']
let g:which_key_map['r'] = [':RnvimrToggle'                     , 'ranger']
" TODO create entire treesitter section
let g:which_key_map['T'] = [':TSHighlightCapturesUnderCursor'   , 'treesitter highlight']
let g:which_key_map['v'] = ['<C-W>v'                            , 'split right']
let g:which_key_map['H'] = ['<C-W>s'                            , 'split below']
" TODO play nice with status line
let g:which_key_map['z'] = [':LazyGit'                          , 'lazygit']

" Group mappings

" a is for actions
let g:which_key_map.a = {
      \ 'name' : '+actions' ,
      \ 'c' : [':ColorizerToggle'        , 'colorizer'],
      \ 'h' : [':let @/ = ""'            , 'remove search highlight'],
      \ 'l' : [':Bracey'                 , 'start live server'],
      \ 'L' : [':BraceyStop'             , 'stop live server'],
      \ 'n' : [':set nonumber!'          , 'line-numbers'],
      \ 's' : [':s/\%V\(.*\)\%V/"\1"/'   , 'surround'],
      \ 'r' : [':set norelativenumber!'  , 'relative line nums'],
      \ 'v' : [':Codi'                   , 'virtual repl on'],
      \ 'V' : [':Codi!'                  , 'virtual repl off'],
      \ }

" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '>' : [':BufferMoveNext'        , 'move next'],
      \ '<' : [':BufferMovePrevious'    , 'move prev'],
      \ 'b' : [':BufferPick'            , 'pick buffer'],
      \ 'd' : [':BufferDelete'          , 'delete buffer'],
      \ 'c' : [':BufferClose'           , 'close buffer'],
      \ 'n' : ['bnext'                  , 'next buffer'],
      \ 'p' : ['bprevious'              , 'previous buffer'],
      \ '?' : [':Telescope buffers'     , 'find buffer'],
      \ }


" F is for fold
let g:which_key_map.F = {
    \ 'name': '+fold',
    \ 'O' : [':set foldlevel=20'  , 'open all'],
    \ 'C' : [':set foldlevel=0'   , 'close all'],
    \ 'c' : [':foldclose'         , 'close'],
    \ 'o' : [':foldopen'          , 'open'],
    \ '1' : [':set foldlevel=1'   , 'level1'],
    \ '2' : [':set foldlevel=2'   , 'level2'],
    \ '3' : [':set foldlevel=3'   , 'level3'],
    \ '4' : [':set foldlevel=4'   , 'level4'],
    \ '5' : [':set foldlevel=5'   , 'level5'],
    \ '6' : [':set foldlevel=6'   , 'level6']
    \ }

" s is for search powered by telescope
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '.' : [':Telescope filetypes'                   , 'filetypes'],
      \ 'b' : [':Telescope buffers'          	        , 'buffers'],
      \ 'B' : [':Telescope git_branches'                , 'git branches'],
      \ 'd' : [':Telescope lsp_document_diagnostics'    , 'document_diagnostics'],
      \ 'D' : [':Telescope lsp_workspace_diagnostics'   , 'workspace_diagnostics'],
      \ 'f' : [':Telescope find_files'                  , 'files'],
      \ 'h' : [':Telescope command_history'             , 'history'],
      \ 'i' : [':Telescope media_files'                 , 'media files'],
      \ 'm' : [':Telescope marks'                       , 'marks'],
      \ 'M' : [':Telescope man_pages'                   , 'man_pages'],
      \ 'o' : [':Telescope vim_options'                 , 'vim_options'],
      \ 't' : [':Telescope live_grep'                   , 'text'],
      \ 'r' : [':Telescope registers'                   , 'registers'],
      \ 'w' : [':Telescope file_browser'                , 'buf_fuz_find'],
      \ 'u' : [':Telescope colorscheme'                 , 'colorschemes'],
      \ }

let g:which_key_map.S = {
      \ 'name' : '+Session' ,
      \ 'c' : [':SClose'    , 'Close Session'],
      \ 'd' : [':SDelete'   , 'Delete Session'],
      \ 'l' : [':SLoad'     , 'Load Session'],
      \ 's' : [':SSave'     , 'Save Session'],
      \ 'S' : [':Startify'  , 'Start Page'],
      \ }

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'b' : [':GitBlameToggle'                   , 'blame'],
      \ 'B' : [':GBrowse'                          , 'browse'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'j' : [':NextHunk'                         , 'next hunk'],
      \ 'k' : [':PrevHunk'                         , 'prev hunk'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'n' : [':Neogit'                           , 'neogit'],
      \ 'p' : [':PreviewHunk'                      , 'preview hunk'],
      \ 'r' : [':ResetHunk'                        , 'reset hunk'],
      \ 'R' : [':ResetBuffer'                      , 'reset buffer'],
      \ 's' : [':StageHunk'                        , 'stage hunk'],
      \ 'S' : [':Gstatus'                          , 'status'],
      \ 'u' : [':UndoStageHunk'                    , 'undo stage hunk'],
      \ }

" l is for language server protocol
let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ 'a' : [':Lspsaga code_action'                , 'code action'],
      \ 'A' : [':Lspsaga range_code_action'          , 'selected action'],
      \ 'd' : [':Telescope lsp_document_diagnostics' , 'document diagnostics'],
      \ 'D' : [':Telescope lsp_workspace_diagnostics', 'workspace diagnostics'],
      \ 'f' : [':LspFormatting'                      , 'format'],
      \ 'I' : [':LspInfo'                            , 'lsp info'],
      \ 'v' : [':LspVirtualTextToggle'               , 'lsp toggle virtual text'],
      \ 'l' : [':Lspsaga lsp_finder'                 , 'lsp finder'],
      \ 'L' : [':Lspsaga show_line_diagnostics'      , 'line_diagnostics'],
      \ 'o' : [':Vista!!'                            , 'outline'],
      \ 'p' : [':Lspsaga preview_definition'         , 'preview definition'],
      \ 'q' : [':Telescope quickfix'                 , 'quickfix'],
      \ 'r' : [':Lspsaga rename'                     , 'rename'],
      \ 'T' : [':LspTypeDefinition'                  , 'type defintion'],
      \ 'x' : [':cclose'                             , 'close quickfix'],
      \ 's' : [':Telescope lsp_document_symbols'     , 'document symbols'],
      \ 'S' : [':Telescope lsp_workspace_symbols'    , 'workspace symbols'],
      \ }
      " \ 'H' : [':Lspsaga signature_help'             , 'signature_help'],

" t is for terminal
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew'             , 'terminal'],
      \ 'f' : [':FloatermNew fzf'         , 'fzf'],
      \ 'g' : [':FloatermNew lazygit'     , 'git'],
      \ 'd' : [':FloatermNew lazydocker'  , 'docker'],
      \ 'n' : [':FloatermNew node'        , 'node'],
      \ 'r' : [':FloatermNew ranger'      , 'ranger'],
      \ 'N' : [':FloatermNew nnn'         , 'nnn'],
      \ 'p' : [':FloatermNew python'      , 'python'],
      \ 'm' : [':FloatermNew lazynpm'     , 'npm'],
      \ 't' : [':FloatermToggle'          , 'toggle'],
      \ 'y' : [':FloatermNew ytop'        , 'ytop'],
      \ 'u' : [':FloatermNew ncdu'        , 'ncdu'],
      \ }

" . is for emmet
" let g:which_key_map['.'] = {
"       \ 'name' : '+emmet' ,
"       \ ',' : ['<Plug>(emmet-expand-abbr)'        , 'expand abbr'],
"       \ ';' : ['<plug>(emmet-expand-word)'        , 'expand word'],
"       \ 'u' : ['<plug>(emmet-update-tag)'        , 'update tag'],
"       \ 'd' : ['<plug>(emmet-balance-tag-inward)'        , 'balance tag in'],
"       \ 'D' : ['<plug>(emmet-balance-tag-outward)'        , 'balance tag out'],
"       \ 'n' : ['<plug>(emmet-move-next)'        , 'move next'],
"       \ 'N' : ['<plug>(emmet-move-prev)'        , 'move prev'],
"       \ 'i' : ['<plug>(emmet-image-size)'        , 'image size'],
"       \ '/' : ['<plug>(emmet-toggle-comment)'        , 'toggle comment'],
"       \ 'j' : ['<plug>(emmet-split-join-tag)'        , 'split join tag'],
"       \ 'k' : ['<plug>(emmet-remove-tag)'        , 'remove tag'],
"       \ 'a' : ['<plug>(emmet-anchorize-url)'        , 'anchorize url'],
"       \ 'A' : ['<plug>(emmet-anchorize-summary)'        , 'anchorize summary'],
"       \ 'm' : ['<plug>(emmet-merge-lines)'        , 'merge lines'],
"       \ 'c' : ['<plug>(emmet-code-pretty)'        , 'code pretty'],
"       \ }

" G is for gist
" let g:which_key_map.G = {
"       \ 'name' : '+gist' ,
"       \ 'b' : [':Gist -b'                          , 'post gist browser'],
"       \ 'd' : [':Gist -d'                          , 'delete gist'],
"       \ 'e' : [':Gist -e'                          , 'edit gist'],
"       \ 'l' : [':Gist -l'                          , 'list public gists'],
"       \ 's' : [':Gist -ls'                         , 'list starred gists'],
"       \ 'm' : [':Gist -m'                          , 'post gist all buffers'],
"       \ 'p' : [':Gist -P'                          , 'post public gist '],
"       \ 'P' : [':Gist -p'                          , 'post private gist '],
"       \ }
"       " \ 'a' : [':Gist -a'                          , 'post gist anon'],

call which_key#register('<Space>', "g:which_key_map")
