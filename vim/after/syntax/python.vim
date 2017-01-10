" if (exists('b:did_syntax_python'))
"     finish
" endif

syn match pythonOperator /\(+\|=\|-\|\^\|*\)/
syn keyword pythonSpecialWord self args kwargs
syn keyword pythonPrePosition in not is
syn keyword pythonSpecialFunction __init__ __str__ __iter__ __add__ __mul__ __lshift__ __iadd__ __lt__ __le__ __eq__ __ne__ __ge__ __gt__ __not__ __abs__ __and__ __div__ __index__ __mod__ __neg__ __or__ __pos__ __pow__ __rshift__ __sub__ __truediv__ __xor__ __concat__ __contains__ __getitem__ __getslice__ __setitem__ __call__ __get__ __set__
syn region pythonDocComment start=/"""/ end=/"""/

hi link pythonSpecialWord    Identifier
hi link pythonDelimiter      Special
hi link pythonPrePosition      Structure
hi link pythonSpecialFunction Structure
hi link pythonDocComment DocComment

let b:did_syntax_python = 1
