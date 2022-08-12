(*
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *)

open! IStd

(** Basic Pulse modules that are safe to use in any module *)

module AbstractValue = PulseAbstractValue
module Attribute = PulseAttribute
module Attributes = PulseAttribute.Attributes
module CallEvent = PulseCallEvent
module Formula = PulseFormula
module Invalidation = PulseInvalidation
module SatUnsat = PulseSatUnsat
module SkippedCalls = PulseSkippedCalls
module Taint = PulseTaint
module Timestamp = PulseTimestamp
module Trace = PulseTrace
module ValueHistory = PulseValueHistory
include SatUnsat.Types

(** {2 Enforce short form usage} *)

include struct
  [@@@warning "-60"]

  module PulseAbstractValue = PulseAbstractValue
  [@@deprecated "use the short form AbstractValue instead"]
  module PulseAttribute = PulseAttribute [@@deprecated "use the short form Attribute instead"]
  module PulseCallEvent = PulseCallEvent [@@deprecated "use the short form CallEvent instead"]
  module PulseInvalidation = PulseInvalidation
  [@@deprecated "use the short form Invalidation instead"]
  module PulseTimestamp = PulseTimestamp [@@deprecated "use the short form Timestamp instead"]
  module PulseSkippedCalls = PulseSkippedCalls
  [@@deprecated "use the short form SkippedCalls instead"]
  module PulseTaint = PulseTaint [@@deprecated "use the short form Taint instead"]
  module PulseTrace = PulseTrace [@@deprecated "use the short form Trace instead"]
  module PulseValueHistory = PulseValueHistory
  [@@deprecated "use the short form ValueHistory instead"]
  module PulseSatUnsat = PulseSatUnsat [@@deprecated "use the short form SatUnsat instead"]
end
