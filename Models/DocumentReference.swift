//
//  DocumentReference.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/DocumentReference) on 2015-04-03.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A reference to a document.
 */
public class DocumentReference: DomainResource
{
	override public class var resourceName: String {
		get { return "DocumentReference" }
	}
	
	/// Who/What authenticated the document
	public var authenticator: Reference?
	
	/// Who and/or what authored the document
	public var author: [Reference]?
	
	/// Categorization of document
	public var class_fhir: CodeableConcept?
	
	/// Document security-tags
	public var confidentiality: [CodeableConcept]?
	
	/// Where to access the document
	public var content: [Attachment]?
	
	/// Clinical context of document
	public var context: DocumentReferenceContext?
	
	/// Document creation time
	public var created: DateTime?
	
	/// Org which maintains the document
	public var custodian: Reference?
	
	/// Human-readable description (title)
	public var description_fhir: String?
	
	/// preliminary | final | appended | amended | entered-in-error
	public var docStatus: CodeableConcept?
	
	/// Format/content rules for the document
	public var format: [NSURL]?
	
	/// Other identifiers for the document
	public var identifier: [Identifier]?
	
	/// When this document reference created
	public var indexed: Instant?
	
	/// Master Version Specific Identifier
	public var masterIdentifier: Identifier?
	
	/// Relationships to other documents
	public var relatesTo: [DocumentReferenceRelatesTo]?
	
	/// current | superceded | entered-in-error
	public var status: String?
	
	/// Who|what is the subject of the document
	public var subject: Reference?
	
	/// Kind of document
	public var type: CodeableConcept?
	
	public convenience init(author: [Reference]?, content: [Attachment]?, indexed: Instant?, status: String?, type: CodeableConcept?) {
		self.init(json: nil)
		if nil != author {
			self.author = author
		}
		if nil != content {
			self.content = content
		}
		if nil != indexed {
			self.indexed = indexed
		}
		if nil != status {
			self.status = status
		}
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["authenticator"] as? FHIRJSON {
				self.authenticator = Reference(json: val, owner: self)
			}
			if let val = js["author"] as? [FHIRJSON] {
				self.author = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["class"] as? FHIRJSON {
				self.class_fhir = CodeableConcept(json: val, owner: self)
			}
			if let val = js["confidentiality"] as? [FHIRJSON] {
				self.confidentiality = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["content"] as? [FHIRJSON] {
				self.content = Attachment.from(val, owner: self) as? [Attachment]
			}
			if let val = js["context"] as? FHIRJSON {
				self.context = DocumentReferenceContext(json: val, owner: self)
			}
			if let val = js["created"] as? String {
				self.created = DateTime(string: val)
			}
			if let val = js["custodian"] as? FHIRJSON {
				self.custodian = Reference(json: val, owner: self)
			}
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["docStatus"] as? FHIRJSON {
				self.docStatus = CodeableConcept(json: val, owner: self)
			}
			if let val = js["format"] as? [String] {
				self.format = NSURL.from(val)
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["indexed"] as? String {
				self.indexed = Instant(string: val)
			}
			if let val = js["masterIdentifier"] as? FHIRJSON {
				self.masterIdentifier = Identifier(json: val, owner: self)
			}
			if let val = js["relatesTo"] as? [FHIRJSON] {
				self.relatesTo = DocumentReferenceRelatesTo.from(val, owner: self) as? [DocumentReferenceRelatesTo]
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["subject"] as? FHIRJSON {
				self.subject = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? FHIRJSON {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let authenticator = self.authenticator {
			json["authenticator"] = authenticator.asJSON()
		}
		if let author = self.author {
			json["author"] = Reference.asJSONArray(author)
		}
		if let class_fhir = self.class_fhir {
			json["class"] = class_fhir.asJSON()
		}
		if let confidentiality = self.confidentiality {
			json["confidentiality"] = CodeableConcept.asJSONArray(confidentiality)
		}
		if let content = self.content {
			json["content"] = Attachment.asJSONArray(content)
		}
		if let context = self.context {
			json["context"] = context.asJSON()
		}
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let custodian = self.custodian {
			json["custodian"] = custodian.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let docStatus = self.docStatus {
			json["docStatus"] = docStatus.asJSON()
		}
		if let format = self.format {
			var arr = [AnyObject]()
			for val in format {
				arr.append(val.asJSON())
			}
			json["format"] = arr
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let indexed = self.indexed {
			json["indexed"] = indexed.asJSON()
		}
		if let masterIdentifier = self.masterIdentifier {
			json["masterIdentifier"] = masterIdentifier.asJSON()
		}
		if let relatesTo = self.relatesTo {
			json["relatesTo"] = DocumentReferenceRelatesTo.asJSONArray(relatesTo)
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let subject = self.subject {
			json["subject"] = subject.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Clinical context of document.
 *
 *  The clinical context in which the document was prepared.
 */
public class DocumentReferenceContext: FHIRElement
{
	override public class var resourceName: String {
		get { return "DocumentReferenceContext" }
	}
	
	/// Main Clinical Acts Documented
	public var event: [CodeableConcept]?
	
	/// Kind of facility where patient was seen
	public var facilityType: CodeableConcept?
	
	/// Time of service that is being documented
	public var period: Period?
	
	/// Additional details about where the content was created (e.g. clinical specialty)
	public var practiceSetting: CodeableConcept?
	
	/// Related things
	public var related: [DocumentReferenceContextRelated]?
	
	/// Source patient info
	public var sourcePatientInfo: Reference?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["event"] as? [FHIRJSON] {
				self.event = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["facilityType"] as? FHIRJSON {
				self.facilityType = CodeableConcept(json: val, owner: self)
			}
			if let val = js["period"] as? FHIRJSON {
				self.period = Period(json: val, owner: self)
			}
			if let val = js["practiceSetting"] as? FHIRJSON {
				self.practiceSetting = CodeableConcept(json: val, owner: self)
			}
			if let val = js["related"] as? [FHIRJSON] {
				self.related = DocumentReferenceContextRelated.from(val, owner: self) as? [DocumentReferenceContextRelated]
			}
			if let val = js["sourcePatientInfo"] as? FHIRJSON {
				self.sourcePatientInfo = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let event = self.event {
			json["event"] = CodeableConcept.asJSONArray(event)
		}
		if let facilityType = self.facilityType {
			json["facilityType"] = facilityType.asJSON()
		}
		if let period = self.period {
			json["period"] = period.asJSON()
		}
		if let practiceSetting = self.practiceSetting {
			json["practiceSetting"] = practiceSetting.asJSON()
		}
		if let related = self.related {
			json["related"] = DocumentReferenceContextRelated.asJSONArray(related)
		}
		if let sourcePatientInfo = self.sourcePatientInfo {
			json["sourcePatientInfo"] = sourcePatientInfo.asJSON()
		}
		
		return json
	}
}


/**
 *  Related things.
 *
 *  Related identifiers or resources associated with the DocumentReference.
 */
public class DocumentReferenceContextRelated: FHIRElement
{
	override public class var resourceName: String {
		get { return "DocumentReferenceContextRelated" }
	}
	
	/// Related Identifier
	public var identifier: Identifier?
	
	/// Related Resource
	public var ref: Reference?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["identifier"] as? FHIRJSON {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["ref"] as? FHIRJSON {
				self.ref = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let ref = self.ref {
			json["ref"] = ref.asJSON()
		}
		
		return json
	}
}


/**
 *  Relationships to other documents.
 *
 *  Relationships that this document has with other document references that already exist.
 */
public class DocumentReferenceRelatesTo: FHIRElement
{
	override public class var resourceName: String {
		get { return "DocumentReferenceRelatesTo" }
	}
	
	/// replaces | transforms | signs | appends
	public var code: String?
	
	/// Target of the relationship
	public var target: Reference?
	
	public convenience init(code: String?, target: Reference?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
		if nil != target {
			self.target = target
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["target"] as? FHIRJSON {
				self.target = Reference(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let target = self.target {
			json["target"] = target.asJSON()
		}
		
		return json
	}
}

