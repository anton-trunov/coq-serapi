(************************************************************************)
(*  v      *   The Coq Proof Assistant  /  The Coq Development Team     *)
(* <O___,, *   INRIA - CNRS - LIX - LRI - PPS - Copyright 1999-2016     *)
(*   \VV/  **************************************************************)
(*    //   *      This file is distributed under the terms of the       *)
(*         *       GNU Lesser General Public License Version 2.1        *)
(************************************************************************)

(************************************************************************)
(* Coq serialization API/Plugin                                         *)
(* Copyright 2016 MINES ParisTech                                       *)
(************************************************************************)
(* Status: Very Experimental                                            *)
(************************************************************************)

open Sexplib.Std
open Sexplib.Sexp

open Ser_names
open Ser_globnames

(**********************************************************************)
(* Evar_kinds                                                         *)
(**********************************************************************)

(* Private *)
type evar = [%import: Evar.t]

let evar_of_sexp _x = Evar.unsafe_of_int 0
let sexp_of_evar _x = Atom ""

type obligation_definition_status =
  [%import: Evar_kinds.obligation_definition_status]
  [@@deriving sexp]

type evar_kinds = [%import: Evar_kinds.t
                  [@with Globnames.global_reference := global_reference;
                         Names.Id.t        := id;
                         Names.Name.t      := name;
                         Names.inductive   := inductive;
                         Constr.existential_key := evar;
                  ]]
    [@@deriving sexp]

