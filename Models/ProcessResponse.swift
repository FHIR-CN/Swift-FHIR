//
//  ProcessResponse.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/ProcessResponse) on 2015-04-03.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  ProcessResponse resource.
 *
 *  This resource provides processing status, errors and notes from the processing of a resource.
 */
public class ProcessResponse: DomainResource
{
	override public class var resourceName: String {
		get { return "ProcessResponse" }
	}
	
	/// Creation date
	public var created: DateTime?
	
	/// Disposition Message
	public var disposition: String?
	
	/// Error code
	public var error: [Coding]?
	
	/// Printed Form Identifier
	public var form: Coding?
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// Notes
	public var notes: [ProcessResponseNotes]?
	
	/// Authoring Organization
	public var organization: Reference?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// Processing outcome
	public var outcome: Coding?
	
	/// Request reference
	public var request: Reference?
	
	/// Responsible organization
	public var requestOrganization: Reference?
	
	/// Responsible Practitioner
	public var requestProvider: Reference?
	
	/// Resource version
	public var ruleset: Coding?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["created"] as? String {
				self.created = DateTime(string: val)
			}
			if let val = js["disposition"] as? String {
				self.disposition = val
			}
			if let val = js["error"] as? [FHIRJSON] {
				self.error = Coding.from(val, owner: self) as? [Coding]
			}
			if let val = js["form"] as? FHIRJSON {
				self.form = Coding(json: val, owner: self)
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["notes"] as? [FHIRJSON] {
				self.notes = ProcessResponseNotes.from(val, owner: self) as? [ProcessResponseNotes]
			}
			if let val = js["organization"] as? FHIRJSON {
				self.organization = Reference(json: val, owner: self)
			}
			if let val = js["originalRuleset"] as? FHIRJSON {
				self.originalRuleset = Coding(json: val, owner: self)
			}
			if let val = js["outcome"] as? FHIRJSON {
				self.outcome = Coding(json: val, owner: self)
			}
			if let val = js["request"] as? FHIRJSON {
				self.request = Reference(json: val, owner: self)
			}
			if let val = js["requestOrganization"] as? FHIRJSON {
				self.requestOrganization = Reference(json: val, owner: self)
			}
			if let val = js["requestProvider"] as? FHIRJSON {
				self.requestProvider = Reference(json: val, owner: self)
			}
			if let val = js["ruleset"] as? FHIRJSON {
				self.ruleset = Coding(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let disposition = self.disposition {
			json["disposition"] = disposition.asJSON()
		}
		if let error = self.error {
			json["error"] = Coding.asJSONArray(error)
		}
		if let form = self.form {
			json["form"] = form.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let notes = self.notes {
			json["notes"] = ProcessResponseNotes.asJSONArray(notes)
		}
		if let organization = self.organization {
			json["organization"] = organization.asJSON()
		}
		if let originalRuleset = self.originalRuleset {
			json["originalRuleset"] = originalRuleset.asJSON()
		}
		if let outcome = self.outcome {
			json["outcome"] = outcome.asJSON()
		}
		if let request = self.request {
			json["request"] = request.asJSON()
		}
		if let requestOrganization = self.requestOrganization {
			json["requestOrganization"] = requestOrganization.asJSON()
		}
		if let requestProvider = self.requestProvider {
			json["requestProvider"] = requestProvider.asJSON()
		}
		if let ruleset = self.ruleset {
			json["ruleset"] = ruleset.asJSON()
		}
		
		return json
	}
}


/**
 *  Notes.
 *
 *  Suite of processing note or additional requirements is the processing has been held.
 */
public class ProcessResponseNotes: FHIRElement
{
	override public class var resourceName: String {
		get { return "ProcessResponseNotes" }
	}
	
	/// Notes text
	public var text: String?
	
	/// display | print | printoper
	public var type: Coding?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["text"] as? String {
				self.text = val
			}
			if let val = js["type"] as? FHIRJSON {
				self.type = Coding(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

