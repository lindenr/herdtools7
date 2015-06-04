(*********************************************************************)
(*                        Herd                                       *)
(*                                                                   *)
(* Luc Maranget, INRIA Paris-Rocquencourt, France.                   *)
(* Jade Alglave, University College London, UK.                      *)
(* John Wickerson, Imperial College London, UK.                      *)
(*                                                                   *)
(*  Copyright 2013 Institut National de Recherche en Informatique et *)
(*  en Automatique and the authors. All rights reserved.             *)
(*  This file is distributed  under the terms of the Lesser GNU      *)
(*  General Public License.                                          *)
(*********************************************************************)

(*********)
(* Archs *)
(*********)

module System = struct
  type t =
    [ 
    (*    | `X86
    | `PPC
    | `ARM
    | `MIPS
    | `GPU_PTX
     *)    | `Bell
    | `AArch64
]

  let tags = ["X86";"PPC";"ARM";"AArch64";"MIPS";"GPU_PTX";"Bell"]

  let parse s = match s with
(*  | "X86" -> Some `X86
  | "PPC" -> Some `PPC
  | "ARM" -> Some `ARM
  | "MIPS" -> Some `MIPS
  | "GPU_PTX" -> Some `GPU_PTX
 *)  | "Bell" -> Some `Bell
  | "AArch64" -> Some `AArch64
  | _ -> None

  let lex s = match parse s with
  | Some a -> a
  | None -> assert false


  let pp a = match a with
(*  | `X86 -> "X86"
  | `PPC -> "PPC"
  | `ARM -> "ARM"
  | `MIPS -> "MIPS"
  | `GPU_PTX -> "GPU_PTX"
 *)  | `Bell -> "Bell"
  | `AArch64 -> "AArch64"
end

type t = System.t (*[ | `C | `OpenCL ]*)

let tags = ["X86";"PPC";"ARM";"AArch64";"MIPS";"GPU_PTX";"C";"OpenCL"; "Bell"]

let parse s = match s with
(*| "X86" -> Some `X86
| "PPC" -> Some `PPC
| "ARM" -> Some `ARM
| "MIPS" -> Some `MIPS
| "GPU_PTX" -> Some `GPU_PTX
| "C" -> Some `C
| "OpenCL" -> Some `OpenCL
 *)| "Bell"|"BELL" -> Some `Bell
  | "AArch64" -> Some `AArch64
| _ -> None

let lex s = match parse s with
| Some a -> a
| None -> assert false


let pp a = match a with
(*| `X86 -> "X86"
| `PPC -> "PPC"
| `ARM -> "ARM"
| `MIPS -> "MIPS"
| `GPU_PTX -> "GPU_PTX"
| `C -> "C"
| `OpenCL -> "OpenCL"
 *)| `AArch64 -> "AArch64"
| `Bell -> "Bell"

(*let arm = `ARM
let ppc = `PPC
let x86 = `X86
let mips = `MIPS
let gpu_ptx = `GPU_PTX
let c = `C
let opencl = `OpenCL
 *)let bell = `Bell
let aarch64 = `AArch64