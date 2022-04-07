
(* The type of tokens. *)

type token = 
  | RPAREN
  | PLUS
  | NUMBER of (int)
  | MINUS
  | LPAREN
  | EOF

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val parse: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.expr)
