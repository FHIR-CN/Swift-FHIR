//
//  PaymentReconciliation.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/PaymentReconciliation) on 2015-04-03.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  PaymentReconciliation resource.
 *
 *  This resource provides payment details and claim references supporting a bulk payment.
 */
public class PaymentReconciliation: DomainResource
{
	override public class var resourceName: String {
		get { return "PaymentReconciliation" }
	}
	
	/// Creation date
	public var created: DateTime?
	
	/// Details
	public var detail: [PaymentReconciliationDetail]?
	
	/// Disposition Message
	public var disposition: String?
	
	/// Printed Form Identifier
	public var form: Coding?
	
	/// Business Identifier
	public var identifier: [Identifier]?
	
	/// Note text
	public var note: [PaymentReconciliationNote]?
	
	/// Insurer
	public var organization: Reference?
	
	/// Original version
	public var originalRuleset: Coding?
	
	/// complete | error
	public var outcome: String?
	
	/// Period covered
	public var period: Period?
	
	/// Claim reference
	public var request: Reference?
	
	/// Responsible organization
	public var requestOrganization: Reference?
	
	/// Responsible practitioner
	public var requestProvider: Reference?
	
	/// Resource version
	public var ruleset: Coding?
	
	/// Total amount of Payment
	public var total: Money?
	
	public convenience init(total: Money?) {
		self.init(json: nil)
		if nil != total {
			self.total = total
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["created"] as? String {
				self.created = DateTime(string: val)
			}
			if let val = js["detail"] as? [FHIRJSON] {
				self.detail = PaymentReconciliationDetail.from(val, owner: self) as? [PaymentReconciliationDetail]
			}
			if let val = js["disposition"] as? String {
				self.disposition = val
			}
			if let val = js["form"] as? FHIRJSON {
				self.form = Coding(json: val, owner: self)
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["note"] as? [FHIRJSON] {
				self.note = PaymentReconciliationNote.from(val, owner: self) as? [PaymentReconciliationNote]
			}
			if let val = js["organization"] as? FHIRJSON {
				self.organization = Reference(json: val, owner: self)
			}
			if let val = js["originalRuleset"] as? FHIRJSON {
				self.originalRuleset = Coding(json: val, owner: self)
			}
			if let val = js["outcome"] as? String {
				self.outcome = val
			}
			if let val = js["period"] as? FHIRJSON {
				self.period = Period(json: val, owner: self)
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
			if let val = js["total"] as? FHIRJSON {
				self.total = Money(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let created = self.created {
			json["created"] = created.asJSON()
		}
		if let detail = self.detail {
			json["detail"] = PaymentReconciliationDetail.asJSONArray(detail)
		}
		if let disposition = self.disposition {
			json["disposition"] = disposition.asJSON()
		}
		if let form = self.form {
			json["form"] = form.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let note = self.note {
			json["note"] = PaymentReconciliationNote.asJSONArray(note)
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
		if let period = self.period {
			json["period"] = period.asJSON()
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
		if let total = self.total {
			json["total"] = total.asJSON()
		}
		
		return json
	}
}


/**
 *  Details.
 *
 *  List of individual settlement amounts and the corresponding transaction.
 */
public class PaymentReconciliationDetail: FHIRElement
{
	override public class var resourceName: String {
		get { return "PaymentReconciliationDetail" }
	}
	
	/// Detail amount
	public var amount: Money?
	
	/// Invoice date
	public var date: Date?
	
	/// Payee
	public var payee: Reference?
	
	/// Claim
	public var request: Reference?
	
	/// Claim Response
	public var responce: Reference?
	
	/// Submitter
	public var submitter: Reference?
	
	/// Type code
	public var type: Coding?
	
	public convenience init(type: Coding?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["amount"] as? FHIRJSON {
				self.amount = Money(json: val, owner: self)
			}
			if let val = js["date"] as? String {
				self.date = Date(string: val)
			}
			if let val = js["payee"] as? FHIRJSON {
				self.payee = Reference(json: val, owner: self)
			}
			if let val = js["request"] as? FHIRJSON {
				self.request = Reference(json: val, owner: self)
			}
			if let val = js["responce"] as? FHIRJSON {
				self.responce = Reference(json: val, owner: self)
			}
			if let val = js["submitter"] as? FHIRJSON {
				self.submitter = Reference(json: val, owner: self)
			}
			if let val = js["type"] as? FHIRJSON {
				self.type = Coding(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let amount = self.amount {
			json["amount"] = amount.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let payee = self.payee {
			json["payee"] = payee.asJSON()
		}
		if let request = self.request {
			json["request"] = request.asJSON()
		}
		if let responce = self.responce {
			json["responce"] = responce.asJSON()
		}
		if let submitter = self.submitter {
			json["submitter"] = submitter.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Note text.
 *
 *  Suite of notes.
 */
public class PaymentReconciliationNote: FHIRElement
{
	override public class var resourceName: String {
		get { return "PaymentReconciliationNote" }
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

