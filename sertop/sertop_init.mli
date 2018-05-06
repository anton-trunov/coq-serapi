(************************************************************************)
(*         *   The Coq Proof Assistant / The Coq Development Team       *)
(*  v      *   INRIA, CNRS and contributors - Copyright 1999-2018       *)
(* <O___,, *       (see CREDITS file for the list of authors)           *)
(*   \VV/  **************************************************************)
(*    //   *    This file is distributed under the terms of the         *)
(*         *     GNU Lesser General Public License Version 2.1          *)
(*         *     (see LICENSE file for the text of the license)         *)
(************************************************************************)

(************************************************************************)
(* Coq serialization API/Plugin                                         *)
(* Copyright 2016-2018 MINES ParisTech                                  *)
(* Written by: Emilio J. Gallego Arias                                  *)
(************************************************************************)
(* Status: Very Experimental                                            *)
(************************************************************************)

type async_flags = {
  enable_async : string option;
  async_full   : bool;
  deep_edits   : bool;
}

val process_stm_flags : async_flags -> Stm.AsyncOpts.stm_opt

type coq_opts = {

  (* callback to handle async feedback *)
  fb_handler   : Feedback.feedback -> unit;

  (* callback to load cma/cmo files *)
  ml_load      : (string -> unit) option;

  (* Enable Coq Debug mode *)
  debug        : bool;
}

val coq_init : coq_opts -> unit

(* Default load path for Coq's stdlib *)
val coq_loadpath_default : implicit:bool -> coq_path:string -> Mltop.coq_path list
