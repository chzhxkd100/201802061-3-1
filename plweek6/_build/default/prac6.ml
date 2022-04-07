let rec interp (e: Ast.expr) : Value.t =
        let add (a : Value.t) (b : Value.t) : Value.t =
                match a,b with
                | NumV x, NumV y -> NumV (x+y)
        in
        let sub (a : Value.t) (b : Value.t) : Value.t =
                match a,b with
                | NumV x, NumV y -> NumV (x-y)
        in
        match e with
        | Num n -> NumV n
        | Add (expr1, expr2) -> add (interp expr1) (interp expr2)
        | Sub (expr1, expr2) -> sub (interp expr1) (interp expr2)
(*
let _=
        let ast = ParserMain.parse "6 + 1 - 4" in
        let _= Format.printf "%a\n" Ast.pp ast in
        Format.printf "%a\n" Value.pp (interp ast)

*)
