# Best Vim practice
'VIM' is one the fastest terminal based IDE, there could be different ideas for defining vim, but 
`Note:` I am also learning vim,this note by no means would be perfect,but I am sure if you follow this note, you will learn alot  

## Best Pratice
  1.This is a practice note
  2.Through this note I will learn alot 
  3.try to read this note as mush as possible 
  4.I will try my best to keep this note clean plus readable
## How to use vim?
  * You must be patient 
  * You must pratice alot
  * You must know how remember the keysmaps (shortcuts)
## Move around
  Move the cursor to the right `h`
  Move the cursor to the left `'l'`
  Move the cursor to down `j`
  Move the cursor to top `k`

## All keys
```
GG move the cursor to the last line, it works with G as well,
gg move the cursor to the top of the line at the very top of the page  
dw delete a single word, this will basically delete from the cursor till the end
d$ delete from the cursor position
zt move the screen cursor to down
zb move the screen cursor to top
ci delete the work from inside the "double" qoute, 'single' qoute, **{}** and other symbols
di delete from "", '' and other symbols
cc will delete the whole line, unline **dw** which deletes a single word
e move one word 
ve select from the cursor position to the end the word
yap select te whole textwidth 
{-} beginning /end of pragraph
```
## Surround
`viw` selects the current word, using j/k to modify the selection where required. 
`o` toggles which end of the selection is expanded/shrunk.
`s` substitues the selection, type the characters to surround the selection.
`p` to pase the original text
Plugin:[Surround](https://github.com/kylechui/nvim-surround)
  ```

      Old text                    Command         New text
--------------------------------------------------------------------------------
    surr*ound_words             ysiw)           lsurround_wordsl
    *make strings               ys$"            "make strings"
    [delete ar*ound me!]        ds]             delete around me!
    remove <b>HTML t*ags</b>    dst             remove HTML tags
    'change quot*es'            cs'"            "change quotes"
    <b>or tag* types</b>        csth1<CR>       <div>or tag types</div>
    functi*on calls     dsf             function calls
  ```
 1.`ysiw` this surrounds a 'single' word.
 2.`ys$` this `surrounds` the whole line
 3.`ds]` delete around lExampel
 4.dst rmove HTML tags
 5.`cs` change the qoutes this ' to this "
## Move quickly

  The purpose of vim is to navigate quickly over you app and notes, or any other things  For that
  there are plugins, but I would rather choose the core vim which enables me to move faster inside
  the buffer  

  On `NORMAL` mode press `s` and you will the text inside you buffer disables, and it will take
  to that word  

**set ColorColumn:**
  This will puts a line on the right side of your terminal.Here how you canofigure it.
  1.Open you options.lua wrote `vim.opt.colorcolumn ='80'`, this will work with lazyvim totally fine
  without lazyvim you would add this  `:set colorcolumn = '80'`.
2.Press shift+: write this hi ColorColumn ctermbg=lightgrey guibg=lightgrey
