" we need the conceal feature (vim ≥ 7.3)
if !has('conceal')
    finish
endif

" remove the keywords. we'll re-add them below
syntax clear pythonOperator

syntax match pythonOperator "\<is\>"

syntax match pyNiceOperator "\<in\>" conceal cchar=∈
syntax match pyNiceOperator "\<or\>" conceal cchar=∨
syntax match pyNiceOperator "\<and\>" conceal cchar=∧
" include the space after “not” – if present – so that “not a” becomes “¬a”.
" also, don't hide “not” behind  ‘¬’ if it is after “is ”.
syntax match pyNiceOperator "\%(is \)\@<!\<not\%( \|\>\)" conceal cchar=¬
syntax match pyNiceOperator "\<not in\>" conceal cchar=∉
syntax match pyNiceOperator "<=" conceal cchar=≤
syntax match pyNiceOperator ">=" conceal cchar=≥
" only conceal “==” if alone, to avoid concealing SCM conflict markers
syntax match pyNiceOperator "=\@<!===\@!" conceal cchar=≡

" Guru's modifictations
syntax match pyNiceOperator "\<contains\>" conceal cchar=∋
syntax match pyNiceOperator "[a-zA-Z)]\zs\[0\]\ze" conceal cchar=₀
syntax match pyNiceOperator "[a-zA-Z)]\zs\[1\]\ze" conceal cchar=₁
syntax match pyNiceOperator "[a-zA-Z)]\zs\[2\]\ze" conceal cchar=₂
syntax match pyNiceOperator "[a-zA-Z)]\zs\[3\]\ze" conceal cchar=₃
syntax match pyNiceOperator "[a-zA-Z)]\zs\[4\]\ze" conceal cchar=₄
syntax match pyNiceOperator "[a-zA-Z)]\zs\[5\]\ze" conceal cchar=₅
syntax match pyNiceOperator "[a-zA-Z)]\zs\[6\]\ze" conceal cchar=₆
syntax match pyNiceOperator "[a-zA-Z)]\zs\[7\]\ze" conceal cchar=₇
syntax match pyNiceOperator "[a-zA-Z)]\zs\[8\]\ze" conceal cchar=₈
syntax match pyNiceOperator "[a-zA-Z)]\zs\[9\]\ze" conceal cchar=₉
syntax match pyNiceOperator "[a-zA-Z)]\zs\[-1\]\ze" conceal cchar=₋
syntax match pyNiceOperator "!=" conceal cchar=≠
syntax match pyNiceOperator "\[a\]" conceal cchar=ₐ
syntax match pyNiceOperator "\[e\]" conceal cchar=ₑ
syntax match pyNiceOperator "\[h\]" conceal cchar=ₕ
syntax match pyNiceOperator "\[i\]" conceal cchar=ᵢ
syntax match pyNiceOperator "\[j\]" conceal cchar=ⱼ
syntax match pyNiceOperator "\[k\]" conceal cchar=ₖ
syntax match pyNiceOperator "\[l\]" conceal cchar=ₗ
syntax match pyNiceOperator "\[m\]" conceal cchar=ₘ
syntax match pyNiceOperator "\[n\]" conceal cchar=ₙ
syntax match pyNiceOperator "\[o\]" conceal cchar=ₒ
syntax match pyNiceOperator "\[p\]" conceal cchar=ₚ
syntax match pyNiceOperator "\[r\]" conceal cchar=ᵣ
syntax match pyNiceOperator "\[s\]" conceal cchar=ₛ
syntax match pyNiceOperator "\[t\]" conceal cchar=ₜ
syntax match pyNiceOperator "\[u\]" conceal cchar=ᵤ
syntax match pyNiceOperator "\[v\]" conceal cchar=ᵥ
syntax match pyNiceOperator "\[x\]" conceal cchar=ₓ
syntax keyword pyNiceOperator None conceal cchar=∅
syntax keyword pyNiceOperator yield conceal cchar=↢
syntax keyword pyNiceOperator while conceal cchar=⟳
" syntax keyword pyNiceOperator from conceal cchar=⥺
syntax keyword pyNiceOperator from conceal cchar=⊂
syntax keyword pyNiceOperator for conceal cchar=∀
syntax keyword pyNiceOperator if conceal cchar=⁇
syntax keyword pyNiceOperator else conceal cchar=‼
syntax keyword pyNiceOperator elif conceal cchar=⁉
syntax keyword pyNiceOperator def conceal cchar=ƒ
syntax keyword pyNiceOperator product conceal cchar=∏
syntax keyword pyNiceOperator len conceal cchar=⍴
syntax keyword pyNiceOperator shape conceal cchar=⍴
syntax keyword pyNiceOperator reshape conceal cchar=⍴
" syntax keyword pyNiceOperator range conceal cchar=𝕣
syntax keyword pyNiceOperator range conceal cchar=…
syntax keyword pyNiceOperator all conceal cchar=∀
syntax keyword pyNiceOperator any conceal cchar=∃
syntax match pyNiceOperator "\<not any\>" conceal cchar=∄
syntax keyword pyNiceOperator self conceal cchar=@
syntax keyword pyNiceOperator int conceal cchar=ℤ
syntax keyword pyNiceOperator float conceal cchar=ℝ
syntax keyword pyNiceOperator str conceal cchar=𝕤
syntax keyword pyNiceOperator set conceal cchar=𝕊
syntax keyword pyNiceOperator tuple conceal cchar=𝕋
syntax keyword pyNiceOperator list conceal cchar=𝕃
syntax keyword pyNiceOperator iter conceal cchar=𝕚
syntax keyword pyNiceOperator complex conceal cchar=ℂ
syntax keyword pyNiceOperator return conceal cchar=⇦
syntax keyword pyNiceOperator import conceal cchar=⇲
syntax keyword pyNiceOperator print conceal cchar=⎙
syntax keyword pyNiceOperator abs conceal cchar=|
"enumerating is applying an index i to every ¨ element
"one can think of it as 'indexed'
syntax keyword pyNiceOperator enumerate conceal cchar=ϊ
syntax keyword pyNiceOperator zip conceal cchar=𝈄
syntax keyword pyNiceOperator next conceal cchar=≺
syntax keyword pyNiceOperator True conceal cchar=Ｔ
syntax keyword pyNiceOperator False conceal cchar=Ｆ
"returns one result symbolized by the circle
syntax keyword pyNiceOperator join conceal cchar=⨁
"returns many values  symbolized by the dots..
syntax keyword pyNiceOperator split conceal cchar=⁜
" syntax keyword pyNiceOperator other conceal cchar=Ö ⅋
syntax keyword pyNiceOperator other conceal cchar=Ѻ
syntax keyword pyNiceOperator assert conceal cchar=⊢
syntax match pyNiceKeyword "\<\%(math\.\)\?exp\>" conceal cchar=ℯ
syntax keyword pyNiceOperator reversed conceal cchar=ᴙ
syntax keyword pyNiceOperator reverse conceal cchar=ᴙ
" syntax keyword pyNiceOperator sorted conceal cchar=⇅
syntax keyword pyNiceOperator sorted conceal cchar=⟠
syntax keyword pyNiceStatement help conceal cchar=ℹ
"the inverted ¿ resembles the symbol d in 'd'escription
syntax keyword pyNiceOperator description conceal cchar=¿
" syntax keyword pyNiceOperator min conceal cchar=⋀
" syntax keyword pyNiceOperator max conceal cchar=⋁
"As in APL ⌊⌈ are not visible 
syntax keyword pyNiceOperator min conceal cchar=⎣
" we would use brackets ⎡⎣
syntax keyword pyNiceOperator max conceal cchar=⎡
"As in APL
syntax keyword pyNiceOperator map conceal cchar=¨
syntax keyword pyNiceOperator filter conceal cchar=⊢
syntax keyword pyNiceOperator filterfalse conceal cchar=⊬
" the idea of every pair ¨  reduced to one ⍢ or Ÿ
" or rather the idea of multiple values reduced to one 𐅱
syntax keyword pyNiceOperator reduce conceal cchar=𐅱
" syntax keyword pyNiceOperator groupby conceal cchar=⩞
"every element is verified using a criteriion (K) and is put in a group(bin) ж
"or every element is filtered by criterion to be put in a group(bin) ѫ
syntax keyword pyNiceOperator groupby conceal cchar=ѫ
" syntax keyword pyNiceOperator starmap conceal cchar=✪
"As in APL (Though the meaning may differ... in python : map ¨/starmap⍣
syntax keyword pyNiceOperator starmap conceal cchar=⍣
syntax keyword pyNiceOperator action conceal cchar=⚡
syntax keyword pyNiceOperator res conceal cchar=𝖗
syntax match pyNiceOperator "\<\%(np\.\)\?zeros\>" conceal cchar=𝟘
syntax match pyNiceOperator "\<\%(np\.\)\?ones\>" conceal cchar=𝟙
syntax match pyNiceOperator "\<\%(np\.\)\?array\>" conceal cchar=𝔸
syntax match pyNiceOperator "\<\%(np\.\)\?dot\>" conceal cchar=•
syntax match pyNiceOperator "\<\%(np\.\)\?arange\>" conceal cchar=…
syntax keyword pyNiceOperator read conceal cchar=⇧
syntax keyword pyNiceOperator imread conceal cchar=⇧
syntax match pyNiceOperator "\<\%(pd\.\)\?read" conceal cchar=⇧
syntax keyword pyNiceOperator write conceal cchar=⇩
syntax keyword pyNiceOperator imsave conceal cchar=⇩
syntax keyword pyNiceOperator args conceal cchar=𝖆
syntax match pyNiceOperator "\<\%(sys\.\)\?argv\>" conceal cchar=𝖆
syntax keyword pyNiceOperator takewhile conceal cchar=⤉
syntax keyword pyNiceOperator dropwhile conceal cchar=⤈
syntax keyword pyNiceOperator combinations conceal cchar=𝓒
syntax keyword pyNiceOperator permutations conceal cchar=𝑃
syntax keyword pyNiceOperator islice conceal cchar=⟦
syntax match pyNiceOperator "\<\%(math\.\)\?log\>" conceal cchar=ℓ
syntax match pyNiceOperator "\(\*\*\)a\ze\_W" conceal cchar=ᵃ
syntax match pyNiceOperator "\(\*\*\)b\ze\_W" conceal cchar=ᵇ
syntax match pyNiceOperator "\(\*\*\)c\ze\_W" conceal cchar=ᶜ
syntax match pyNiceOperator "\(\*\*\)d\ze\_W" conceal cchar=ᵈ
syntax match pyNiceOperator "\(\*\*\)e\ze\_W" conceal cchar=ᵉ
syntax match pyNiceOperator "\(\*\*\)f\ze\_W" conceal cchar=ᶠ
syntax match pyNiceOperator "\(\*\*\)g\ze\_W" conceal cchar=ᵍ
syntax match pyNiceOperator "\(\*\*\)h\ze\_W" conceal cchar=ʰ
syntax match pyNiceOperator "\(\*\*\)i\ze\_W" conceal cchar=ⁱ
syntax match pyNiceOperator "\(\*\*\)j\ze\_W" conceal cchar=ʲ
syntax match pyNiceOperator "\(\*\*\)k\ze\_W" conceal cchar=ᵏ
syntax match pyNiceOperator "\(\*\*\)l\ze\_W" conceal cchar=ˡ
syntax match pyNiceOperator "\(\*\*\)m\ze\_W" conceal cchar=ᵐ
syntax match pyNiceOperator "\(\*\*\)n\ze\_W" conceal cchar=ⁿ
syntax match pyNiceOperator "\(\*\*\)o\ze\_W" conceal cchar=ᵒ
syntax match pyNiceOperator "\(\*\*\)p\ze\_W" conceal cchar=ᵖ
syntax match pyNiceOperator "\(\*\*\)r\ze\_W" conceal cchar=ʳ
syntax match pyNiceOperator "\(\*\*\)s\ze\_W" conceal cchar=ˢ
syntax match pyNiceOperator "\(\*\*\)t\ze\_W" conceal cchar=ᵗ
syntax match pyNiceOperator "\(\*\*\)u\ze\_W" conceal cchar=ᵘ
syntax match pyNiceOperator "\(\*\*\)v\ze\_W" conceal cchar=ᵛ
syntax match pyNiceOperator "\(\*\*\)w\ze\_W" conceal cchar=ʷ
syntax match pyNiceOperator "\(\*\*\)x\ze\_W" conceal cchar=ˣ
syntax match pyNiceOperator "\(\*\*\)y\ze\_W" conceal cchar=ʸ
syntax match pyNiceOperator "\(\*\*\)z\ze\_W" conceal cchar=ᶻ
syntax match pyNiceOperator "\(\*\*\)0\ze\_W" conceal cchar=⁰
syntax match pyNiceOperator "\(\*\*\)1\ze\_W" conceal cchar=¹
syntax match pyNiceOperator "\(\*\*\)2\ze\_W" conceal cchar=²
syntax match pyNiceOperator "\(\*\*\)3\ze\_W" conceal cchar=³
syntax match pyNiceOperator "\(\*\*\)4\ze\_W" conceal cchar=⁴
syntax match pyNiceOperator "\(\*\*\)5\ze\_W" conceal cchar=⁵
syntax match pyNiceOperator "\(\*\*\)6\ze\_W" conceal cchar=⁶
syntax match pyNiceOperator "\(\*\*\)7\ze\_W" conceal cchar=⁷
syntax match pyNiceOperator "\(\*\*\)8\ze\_W" conceal cchar=⁸
syntax match pyNiceOperator "\(\*\*\)9\ze\_W" conceal cchar=⁹
syntax keyword pyNiceOperator most_common conceal cchar=∇
" syntax keyword pyNiceOperator Exception conceal cchar=⚠
syntax keyword pyNiceOperator Exception conceal cchar=❗
"resembles speed bump
syntax keyword pyNiceOperator raise conceal cchar=≏
syntax keyword pyNiceOperator count conceal cchar=＃
syntax keyword pyNiceOperator Counter conceal cchar=＃
" syntax keyword pyNiceOperator items conceal cchar=＊
" syntax keyword pyNiceOperator keys conceal cchar=⟜
" syntax keyword pyNiceOperator values conceal cchar=⊸
syntax keyword pyNiceOperator values conceal cchar=＊
" syntax keyword pyNiceOperator keys conceal cchar=☌
syntax keyword pyNiceOperator keys conceal cchar=⚷
syntax keyword pyNiceOperator items conceal cchar=☍
syntax keyword pyNiceOperator repeat conceal cchar=↻
syntax keyword pyNiceOperator cycle conceal cchar=⥁
syntax keyword pyNiceOperator compress conceal cchar=⨝
syntax keyword pyNiceOperator tee conceal cchar=¦
" as in APL
syntax match pyNiceOperator "\<\%(random\.\)\?sample\>" conceal cchar=⍰
syntax keyword pyNiceOperator xs conceal cchar=Ẍ
syntax keyword pyNiceOperator ys conceal cchar=Ÿ
syntax keyword pyNiceOperator ts conceal cchar=ẗ
" as in APL
syntax match pyNiceOperator "\<\%(re\.\)\?search\>" conceal cchar=⍷
" as in Haskell
syntax keyword pyNiceOperator isinstance conceal cchar=∷
" syntax keyword pyNiceOperator line conceal cchar=−
syntax keyword pyNiceOperator lines conceal cchar=≣
" syntax keyword pyNiceOperator word conceal cchar=⫾
syntax keyword pyNiceOperator words conceal cchar=⫼
syntax keyword pyNiceOperator columns conceal cchar=⫼
syntax match pyNiceOperator "\<nb_" conceal cchar=ᴺ
syntax match pyNiceOperator "_count\>" conceal cchar=#
syntax keyword pyNiceOperator strip conceal cchar=︺
syntax keyword pyNiceOperator encode conceal cchar=⭳
syntax keyword pyNiceOperator decode conceal cchar=⭱
syntax keyword pyNiceOperator replace conceal cchar=⇝
syntax match pyNiceOperator "\<\%(re\.\)\?sub\>" conceal cchar=⇝
syntax keyword pyNiceOperator group conceal cchar=ɠ
syntax keyword pyNiceOperator or_ conceal cchar=∨
syntax keyword pyNiceOperator and_ conceal cchar=∧
syntax keyword pyNiceOperator not_ conceal cchar=¬
syntax keyword pyNiceOperator union conceal cchar=∪
syntax keyword pyNiceOperator intersection conceal cchar=∩
syntax keyword pyNiceOperator T conceal cchar=ᵀ
syntax keyword pyNiceOperator transpose conceal cchar=ᵀ
syntax keyword pyNiceOperator maximum conceal cchar=⎡
syntax keyword pyNiceOperator minimum conceal cchar=⎣
syntax keyword pyNiceOperator ceil conceal cchar=⌈
syntax keyword pyNiceOperator floor conceal cchar=⌊
syntax keyword pyNiceOperator round conceal cchar=≈
syntax keyword pyNiceOperator mean conceal cchar=μ
syntax keyword pyNiceOperator std conceal cchar=σ
syntax keyword pyNiceOperator cumsum conceal cchar=𝝨
syntax keyword pyNiceOperator cumprod conceal cchar=𝝥
syntax match pyNiceOperator "\<\%(random\.\)\?randrange\>" conceal cchar=Ʀ
syntax match pyNiceOperator "\<\%(np\.random\.\)\?randn\>" conceal cchar=⍰
syntax match pyNiceOperator " @ " conceal cchar=•
syntax keyword pyNiceOperator index conceal cchar=⚷
syntax keyword pyNiceOperator index_col conceal cchar=⚷
syntax keyword pyNiceOperator isin conceal cchar=⋵
syntax keyword pyNiceOperator iloc conceal cchar=⟦
syntax keyword pyNiceOperator loc conceal cchar=⦃
syntax keyword pyNiceOperator copy conceal cchar=⎘
syntax match pyNiceKeyword "\<ascending=True\>" conceal cchar=↗
syntax match pyNiceKeyword "\<ascending=False\>" conceal cchar=↘
syntax match pyNiceOperator "\<\%(np\.\)\?nan\>" conceal cchar=ᴎ
" we create an intersection ^ of unique elements
" syntax keyword pyNiceOperator unique conceal cchar=û
" no two elements are repeated
syntax keyword pyNiceOperator unique conceal cchar=ƻ
syntax keyword pyNiceOperator is_unique conceal cchar=ƻ
syntax keyword pyNiceOperator diff conceal cchar=Δ
syntax keyword pyNiceOperator sep conceal cchar=␣
syntax match pyNiceKeyword "\<inplace=True\>" conceal cchar=！
syntax match pyNiceKeyword "\<\%(time\.\)\?sleep\>" conceal cchar=⌛
" The order of the following two elements are important
syntax match pyNiceKeyword "\<find_element" conceal cchar=𝟙
syntax match pyNiceKeyword "\<find_elements" conceal cchar=＊
syntax match pyNiceKeyword "\<get_attribute\>" conceal cchar=∷
syntax match pyNiceKeyword "by_id\>" conceal cchar=#

syntax keyword pyNiceOperator sum conceal cchar=∑
syntax match pyNiceOperator "\<\%(math\.\)\?sqrt\>" conceal cchar=√
syntax match pyNiceKeyword "\<\%(math\.\)\?pi\>" conceal cchar=π

syntax keyword pyNiceStatement lambda conceal cchar=λ

hi link pyNiceOperator Operator
hi link pyNiceStatement Statement
hi link pyNiceKeyword Keyword
hi! link Conceal Operator

setlocal conceallevel=1
