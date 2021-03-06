//
//  Appointment.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/Appointment) on 2015-04-03.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A booking of a healthcare event among patient(s), practitioner(s), related person(s) and/or device(s) for a specific
 *  date/time. This may result in one or more Encounter(s).
 */
public class Appointment: DomainResource
{
	override public class var resourceName: String {
		get { return "Appointment" }
	}
	
	/// Additional comments about the appointment
	public var comment: String?
	
	/// The brief description of the appointment as would be shown on a subject line in a meeting request, or appointment list. Detailed or expanded information should be put in the comment field
	public var description_fhir: String?
	
	/// Date/Time that the appointment is to conclude
	public var end: Instant?
	
	/// External Ids for this item
	public var identifier: [Identifier]?
	
	/// An Order that lead to the creation of this appointment
	public var order: Reference?
	
	/// List of participants involved in the appointment
	public var participant: [AppointmentParticipant]?
	
	/// The priority of the appointment. Can be used to make informed decisions if needing to re-prioritize appointments. (The iCal Standard specifies 0 as undefined, 1 as highest, 9 as lowest priority)
	public var priority: UInt?
	
	/// The reason that this appointment is being scheduled, this is more clinical than administrative
	public var reason: CodeableConcept?
	
	/// The slot that this appointment is filling. If provided then the schedule will not be provided as slots are not recursive, and the start/end values MUST be the same as from the slot
	public var slot: [Reference]?
	
	/// Date/Time that the appointment is to take place
	public var start: Instant?
	
	/// pending | booked | arrived | fulfilled | cancelled | noshow
	public var status: String?
	
	/// The type of appointment that is being booked
	public var type: CodeableConcept?
	
	public convenience init(end: Instant?, participant: [AppointmentParticipant]?, start: Instant?, status: String?) {
		self.init(json: nil)
		if nil != end {
			self.end = end
		}
		if nil != participant {
			self.participant = participant
		}
		if nil != start {
			self.start = start
		}
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["comment"] as? String {
				self.comment = val
			}
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["end"] as? String {
				self.end = Instant(string: val)
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["order"] as? FHIRJSON {
				self.order = Reference(json: val, owner: self)
			}
			if let val = js["participant"] as? [FHIRJSON] {
				self.participant = AppointmentParticipant.from(val, owner: self) as? [AppointmentParticipant]
			}
			if let val = js["priority"] as? UInt {
				self.priority = val
			}
			if let val = js["reason"] as? FHIRJSON {
				self.reason = CodeableConcept(json: val, owner: self)
			}
			if let val = js["slot"] as? [FHIRJSON] {
				self.slot = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["start"] as? String {
				self.start = Instant(string: val)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["type"] as? FHIRJSON {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let comment = self.comment {
			json["comment"] = comment.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let end = self.end {
			json["end"] = end.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let order = self.order {
			json["order"] = order.asJSON()
		}
		if let participant = self.participant {
			json["participant"] = AppointmentParticipant.asJSONArray(participant)
		}
		if let priority = self.priority {
			json["priority"] = priority.asJSON()
		}
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		if let slot = self.slot {
			json["slot"] = Reference.asJSONArray(slot)
		}
		if let start = self.start {
			json["start"] = start.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  List of participants involved in the appointment.
 */
public class AppointmentParticipant: FHIRElement
{
	override public class var resourceName: String {
		get { return "AppointmentParticipant" }
	}
	
	/// A Person, Location/HealthcareService or Device that is participating in the appointment
	public var actor: Reference?
	
	/// required | optional | information-only
	public var required: String?
	
	/// accepted | declined | tentative | needs-action
	public var status: String?
	
	/// Role of participant in the appointment
	public var type: [CodeableConcept]?
	
	public convenience init(status: String?) {
		self.init(json: nil)
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["actor"] as? FHIRJSON {
				self.actor = Reference(json: val, owner: self)
			}
			if let val = js["required"] as? String {
				self.required = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["type"] as? [FHIRJSON] {
				self.type = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let actor = self.actor {
			json["actor"] = actor.asJSON()
		}
		if let required = self.required {
			json["required"] = required.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let type = self.type {
			json["type"] = CodeableConcept.asJSONArray(type)
		}
		
		return json
	}
}

