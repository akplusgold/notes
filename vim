


1. Capital I insert at the beginning of line in normal mode
2. Capital A is similar to 'a' but puts you into insert mode after the end of line.
3. Capital J merges the line below with the cursor on the current line with a space.
4. '*' can be used to move to the next instance of the word under cursor.
5. '#' can be used to move to the previous instance of the word under cursor .
6. '%' can be used to move to the next curly brace, brackets, etc. (quite useful in programming).
7. '.' can be used to repeat the last action (very useful)
8. 'saveas [name]' saves the current file with given name
9. 'tabe [name]' edits the specified file in a new tab
10. Ctrl+a increments number in normal mode
11. Ctrl+x decrements number in normal mode
12. m[any a-z character] sets the mark on the current line. E.g: 'mw' 
13. '[marked character]' jumps to marked line
14. 'delmarks [character]' deletes specific mark that is mapped
     to that character
15. Lower case marks are stored within that file, Uppers case marks
    are stored across different files and can be accessed from anywhere
16. Numbers 0-9 represent marks used by vim to keep track of where 
    the cursor was most recently, useful for making jumps
17. 'Shift+d' or 'D' deleted from current cursor to end of line
18. 'zf}' folds an entire paragraph or block
19. 'zf[number]gg' folds from current cursor to the line number
20. 'zo' opens fold on specific line
21. 'zc' closes fold that already exists on specific line
22. 'zr' automatically opens next fold without going to specific line
23. 'zm' automatically closes next fold without going to specific line
24. 'mkview [number]' e.g mkview 1, stores current state of folds in view 1
     Note: each file can have maximum of upto 10 views
25. 'loadview [number]' e.g loadview 1, loads current state of folds from view 1
26. 'ZZ' save and exit current file
27. 'ZQ' discard changes and exit current file
28. '~' in visual mode switches case of selected text or character under cursor
        in normal mode
29. 'gd' Go to declaration, useful to find where a specific function
    under the cursor was declared without manually jumping to that spot
30. '[n]<C-x>' or '[n]<C-a>' Decrements or Increments number on a given
	line by the specified amount
31. 'db' deletes word backword or 'dw' deletes word forwards
32. 'U' converts selected text to uppercase and 'u' to lowercase
33. Search & replace word from current line to end of file with confirmation: 
    .,$s/\vpattern/replacement/gc
34. 'ciw' change word, can be used by '.' operator to repeat it on other words

Insert mode keybindings:
1) <C-w> deletes one word to the left
2) <C-h> deletes one character to the left


Miscellaneous:
==============
- Vim help on a command ":h <command>"

- Vim help completion ":h <partialcommand><tab>"

- Generating tags (install ctags): 
        1) Add code root dir path to vimrc:
            e.g: set tags +="$HOME/Coding/Python/Password_Manager/"
        2) ctags -R *

- mksession <session name.vim>
    Saves current vim setup as a sesion file which can be loaded with 'vim -S <session name.vim>' 

Ctags utility can be used to generate tags for source files allowing navigation to and for definition
    e.g: ctags *.c
        - 'C-[' Jumps to definition of the function/class under the cursor
        - 'C-t' Jumps back to the previous location
