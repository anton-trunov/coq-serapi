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

(**********************************************************************)
(* Decl_kinds                                                         *)
(**********************************************************************)

open Sexplib

type binding_kind = Decl_kinds.binding_kind

val binding_kind_of_sexp : Sexp.t -> Decl_kinds.binding_kind
val sexp_of_binding_kind : Decl_kinds.binding_kind -> Sexp.t

