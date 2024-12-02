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

syntax match elmNiceOperator "-\ze>" conceal cchar=→
syntax match elmNiceOperator "-\@<=>" conceal cchar= 

syntax match elmNiceOperator "|\ze>" conceal cchar=▷
syntax match elmNiceOperator "|\@<=>" conceal cchar= 

syntax match elmNiceOperator "<\ze|" conceal cchar=◁
syntax match elmNiceOperator "<\@<=|" conceal cchar= 

syntax match elmNiceOperator "|\ze\." conceal cchar=║
syntax match elmNiceOperator "|\@<=\." conceal cchar= 

syntax match elmNiceOperator "|\ze=" conceal cchar=╠
syntax match elmNiceOperator "|\@<==" conceal cchar=═

hi link elmNiceOperator Operator
hi! link Conceal Operator
setlocal conceallevel=2
