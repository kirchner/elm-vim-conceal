if exists('g:no_elm_conceal') || !has('conceal') || &enc != 'utf-8'
    finish
endif

" vim: set fenc=utf-8:
syntax match elmNiceOperator "\\\ze[[:alpha:][:space:]_([]" conceal cchar=λ
syntax match elmNiceOperator "==" conceal cchar=≡
syntax match elmNiceOperator "\/=" conceal cchar=≠
syntax match elmNiceOperator ">>" conceal cchar=»
syntax match elmNiceOperator "<<" conceal cchar=«
syntax match elmNiceOperator "<=" conceal cchar=≤
syntax match elmNiceOperator ">=" conceal cchar=≥
syntax match elmNiceOperator "\:\:" conceal cchar=∷
syntax match elmNiceOperator "++" conceal cchar=⧺

syntax match elmArrowHead contained ">" conceal cchar= 
syntax match elmArrowTail contained "-" conceal cchar=→
syntax match elmNiceOperator "->" contains=elmArrowHead,elmArrowTail

syntax match elmPizzaLeftHead contained "<" conceal cchar=◁
syntax match elmPizzaLeftTail contained "|" conceal cchar= 
syntax match elmNiceOperator "<|" contains=elmPizzaLeftHead,elmPizzaLeftTail

syntax match elmPizzaRightHead contained "|" conceal cchar=▷
syntax match elmPizzaRightTail contained ">" conceal cchar= 
syntax match elmNiceOperator "|>" contains=elmPizzaRightTail,elmPizzaRightHead

hi link elmNiceOperator Operator
hi! link Conceal Operator
setlocal conceallevel=2
