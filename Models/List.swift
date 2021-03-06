//
//  List.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/List) on 2015-04-03.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Information summarized from a list of other resources.
 *
 *  A set of information summarized from a list of other resources.
 */
public class List: DomainResource
{
	override public class var resourceName: String {
		get { return "List" }
	}
	
	/// What the purpose of this list is
	public var code: CodeableConcept?
	
	/// When the list was prepared
	public var date: DateTime?
	
	/// Why list is empty
	public var emptyReason: CodeableConcept?
	
	/// Entries in the list
	public var entry: [ListEntry]?
	
	/// Business identifier
	public var identifier: [Identifier]?
	
	/// working | snapshot | changes
	public var mode: String?
	
	/// Comments about the note
	public var note: String?
	
	/// What order the list has
	public var orderedBy: CodeableConcept?
	
	/// Who and/or what defined the list contents
	public var source: Reference?
	
	/// current | retired | entered-in-error
	public var status: String?
	
	/// If all resources have the same subject
	public var subject: Reference?
	
	/// Descriptive name for the list
	public var title: String?
	
	public convenience init(mode: String?, status: String?) {
		self.init(json: nil)
		if nil != mode {
			self.mode = mode
		}
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? FHIRJSON {
				self.code = CodeableConcept(json: val, owner: self)
			}
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["emptyReason"] as? FHIRJSON {
				self.emptyReason = CodeableConcept(json: val, owner: self)
			}
			if let val = js["entry"] as? [FHIRJSON] {
				self.entry = ListEntry.from(val, owner: self) as? [ListEntry]
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["mode"] as? String {
				self.mode = val
			}
			if let val = js["note"] as? String {
				self.note = val
			}
			if let val = js["orderedBy"] as? FHIRJSON {
				self.orderedBy = CodeableConcept(json: val, owner: self)
			}
			if let val = js["source"] as? FHIRJSON {
				self.source = Reference(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? FHIRJSON {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["title"] as? String {
				self.title = val
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let emptyReason = self.emptyReason {
			json["emptyReason"] = emptyReason.asJSON()
		}
		if let entry = self.entry {
			json["entry"] = ListEntry.asJSONArray(entry)
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let mode = self.mode {
			json["mode"] = mode.asJSON()
		}
		if let note = self.note {
			json["note"] = note.asJSON()
		}
		if let orderedBy = self.orderedBy {
			json["orderedBy"] = orderedBy.asJSON()
		}
		if let source = self.source {
			json["source"] = source.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let title = self.title {
			json["title"] = title.asJSON()
		}
		
		return json
	}
}


/**
 *  Entries in the list.
 *
 *  Entries in this list.
 */
public class ListEntry: FHIRElement
{
	override public class var resourceName: String {
		get { return "ListEntry" }
	}
	
	/// When item added to list
	public var date: DateTime?
	
	/// If this item is actually marked as deleted
	public var deleted: Bool?
	
	/// Workflow information about this item
	public var flag: [CodeableConcept]?
	
	/// Actual entry
	public var item: Reference?
	
	public convenience init(item: Reference?) {
		self.init(json: nil)
		if nil != item {
			self.item = item
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["deleted"] as? Bool {
				self.deleted = val
			}
			if let val = js["flag"] as? [FHIRJSON] {
				self.flag = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["item"] as? FHIRJSON {
				self.item = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let deleted = self.deleted {
			json["deleted"] = deleted.asJSON()
		}
		if let flag = self.flag {
			json["flag"] = CodeableConcept.asJSONArray(flag)
		}
		if let item = self.item {
			json["item"] = item.asJSON()
		}
		
		return json
	}
}

