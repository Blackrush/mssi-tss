{
  open Parser ;;
}

rule lexer = parse

  | [' ' '\t']                                          {lexer lexbuf}
  | '\n'                                                {Leol}

  | "("                                                 {Loparen}
  | ")"                                                 {Lcparen}
  | "lambda"                                            {Llambda}
  | "."                                                 {Ldot}
  | "let"                                               {Llet}
  | "="                                                 {Leq}
  | "true"                                              {Ltrue}
  | "false"                                             {Lfalse}
  | "if"                                                {Lif}
  | "then"                                              {Lthen}
  | "else"                                              {Lelse}
  | ['a'-'z' 'A'-'Z'] ['a'-'z' 'A'-'Z' '0'-'9']*        {Lident (Lexing.lexeme lexbuf)}
  | ['0'-'9']+                                          {Linteger (Lexing.lexeme lexbuf)}
