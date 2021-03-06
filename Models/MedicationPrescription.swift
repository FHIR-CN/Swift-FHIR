//
//  MedicationPrescription.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/MedicationPrescription) on 2015-04-03.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  Prescription of medication to for patient.
 *
 *  An order for both supply of the medication and the instructions for administration of the medicine to a patient.
 */
public class MedicationPrescription: DomainResource
{
	override public class var resourceName: String {
		get { return "MedicationPrescription" }
	}
	
	/// When prescription was authorized
	public var dateWritten: DateTime?
	
	/// Medication supply authorization
	public var dispense: MedicationPrescriptionDispense?
	
	/// How medication should be taken
	public var dosageInstruction: [MedicationPrescriptionDosageInstruction]?
	
	/// Created during encounter / admission / stay
	public var encounter: Reference?
	
	/// External identifier
	public var identifier: [Identifier]?
	
	/// Medication to be taken
	public var medication: Reference?
	
	/// Information about the prescription
	public var note: String?
	
	/// Who prescription is for
	public var patient: Reference?
	
	/// Who ordered the medication(s)
	public var prescriber: Reference?
	
	/// Reason or indication for writing the prescription
	public var reasonCodeableConcept: CodeableConcept?
	
	/// Reason or indication for writing the prescription
	public var reasonReference: Reference?
	
	/// active | on-hold | completed | entered-in-error | stopped | superceded | draft
	public var status: String?
	
	/// Any restrictions on medication substitution?
	public var substitution: MedicationPrescriptionSubstitution?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["dateWritten"] as? String {
				self.dateWritten = DateTime(string: val)
			}
			if let val = js["dispense"] as? FHIRJSON {
				self.dispense = MedicationPrescriptionDispense(json: val, owner: self)
			}
			if let val = js["dosageInstruction"] as? [FHIRJSON] {
				self.dosageInstruction = MedicationPrescriptionDosageInstruction.from(val, owner: self) as? [MedicationPrescriptionDosageInstruction]
			}
			if let val = js["encounter"] as? FHIRJSON {
				self.encounter = Reference(json: val, owner: self)
			}
			if let val = js["identifier"] as? [FHIRJSON] {
				self.identifier = Identifier.from(val, owner: self) as? [Identifier]
			}
			if let val = js["medication"] as? FHIRJSON {
				self.medication = Reference(json: val, owner: self)
			}
			if let val = js["note"] as? String {
				self.note = val
			}
			if let val = js["patient"] as? FHIRJSON {
				self.patient = Reference(json: val, owner: self)
			}
			if let val = js["prescriber"] as? FHIRJSON {
				self.prescriber = Reference(json: val, owner: self)
			}
			if let val = js["reasonCodeableConcept"] as? FHIRJSON {
				self.reasonCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["reasonReference"] as? FHIRJSON {
				self.reasonReference = Reference(json: val, owner: self)
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["substitution"] as? FHIRJSON {
				self.substitution = MedicationPrescriptionSubstitution(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let dateWritten = self.dateWritten {
			json["dateWritten"] = dateWritten.asJSON()
		}
		if let dispense = self.dispense {
			json["dispense"] = dispense.asJSON()
		}
		if let dosageInstruction = self.dosageInstruction {
			json["dosageInstruction"] = MedicationPrescriptionDosageInstruction.asJSONArray(dosageInstruction)
		}
		if let encounter = self.encounter {
			json["encounter"] = encounter.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = Identifier.asJSONArray(identifier)
		}
		if let medication = self.medication {
			json["medication"] = medication.asJSON()
		}
		if let note = self.note {
			json["note"] = note.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let prescriber = self.prescriber {
			json["prescriber"] = prescriber.asJSON()
		}
		if let reasonCodeableConcept = self.reasonCodeableConcept {
			json["reasonCodeableConcept"] = reasonCodeableConcept.asJSON()
		}
		if let reasonReference = self.reasonReference {
			json["reasonReference"] = reasonReference.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let substitution = self.substitution {
			json["substitution"] = substitution.asJSON()
		}
		
		return json
	}
}


/**
 *  Medication supply authorization.
 *
 *  Deals with details of the dispense part of the order.
 */
public class MedicationPrescriptionDispense: FHIRElement
{
	override public class var resourceName: String {
		get { return "MedicationPrescriptionDispense" }
	}
	
	/// Days supply per dispense
	public var expectedSupplyDuration: Duration?
	
	/// Product to be supplied
	public var medication: Reference?
	
	/// # of refills authorized
	public var numberOfRepeatsAllowed: UInt?
	
	/// Amount of medication to supply per dispense
	public var quantity: Quantity?
	
	/// Time period supply is authorized for
	public var validityPeriod: Period?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["expectedSupplyDuration"] as? FHIRJSON {
				self.expectedSupplyDuration = Duration(json: val, owner: self)
			}
			if let val = js["medication"] as? FHIRJSON {
				self.medication = Reference(json: val, owner: self)
			}
			if let val = js["numberOfRepeatsAllowed"] as? UInt {
				self.numberOfRepeatsAllowed = val
			}
			if let val = js["quantity"] as? FHIRJSON {
				self.quantity = Quantity(json: val, owner: self)
			}
			if let val = js["validityPeriod"] as? FHIRJSON {
				self.validityPeriod = Period(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let expectedSupplyDuration = self.expectedSupplyDuration {
			json["expectedSupplyDuration"] = expectedSupplyDuration.asJSON()
		}
		if let medication = self.medication {
			json["medication"] = medication.asJSON()
		}
		if let numberOfRepeatsAllowed = self.numberOfRepeatsAllowed {
			json["numberOfRepeatsAllowed"] = numberOfRepeatsAllowed.asJSON()
		}
		if let quantity = self.quantity {
			json["quantity"] = quantity.asJSON()
		}
		if let validityPeriod = self.validityPeriod {
			json["validityPeriod"] = validityPeriod.asJSON()
		}
		
		return json
	}
}


/**
 *  How medication should be taken.
 *
 *  Indicates how the medication is to be used by the patient.
 */
public class MedicationPrescriptionDosageInstruction: FHIRElement
{
	override public class var resourceName: String {
		get { return "MedicationPrescriptionDosageInstruction" }
	}
	
	/// Supplemental instructions - e.g. "with meals"
	public var additionalInstructions: CodeableConcept?
	
	/// Take "as needed" f(or x)
	public var asNeededBoolean: Bool?
	
	/// Take "as needed" f(or x)
	public var asNeededCodeableConcept: CodeableConcept?
	
	/// Amount of medication per dose
	public var doseQuantity: Quantity?
	
	/// Amount of medication per dose
	public var doseRange: Range?
	
	/// Upper limit on medication per unit of time
	public var maxDosePerPeriod: Ratio?
	
	/// Technique for administering medication
	public var method: CodeableConcept?
	
	/// Amount of medication per unit of time
	public var rate: Ratio?
	
	/// How drug should enter body
	public var route: CodeableConcept?
	
	/// When medication should be administered
	public var scheduledDateTime: DateTime?
	
	/// When medication should be administered
	public var scheduledPeriod: Period?
	
	/// When medication should be administered
	public var scheduledTiming: Timing?
	
	/// Body site to administer to
	public var site: CodeableConcept?
	
	/// Dosage instructions expressed as text
	public var text: String?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["additionalInstructions"] as? FHIRJSON {
				self.additionalInstructions = CodeableConcept(json: val, owner: self)
			}
			if let val = js["asNeededBoolean"] as? Bool {
				self.asNeededBoolean = val
			}
			if let val = js["asNeededCodeableConcept"] as? FHIRJSON {
				self.asNeededCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["doseQuantity"] as? FHIRJSON {
				self.doseQuantity = Quantity(json: val, owner: self)
			}
			if let val = js["doseRange"] as? FHIRJSON {
				self.doseRange = Range(json: val, owner: self)
			}
			if let val = js["maxDosePerPeriod"] as? FHIRJSON {
				self.maxDosePerPeriod = Ratio(json: val, owner: self)
			}
			if let val = js["method"] as? FHIRJSON {
				self.method = CodeableConcept(json: val, owner: self)
			}
			if let val = js["rate"] as? FHIRJSON {
				self.rate = Ratio(json: val, owner: self)
			}
			if let val = js["route"] as? FHIRJSON {
				self.route = CodeableConcept(json: val, owner: self)
			}
			if let val = js["scheduledDateTime"] as? String {
				self.scheduledDateTime = DateTime(string: val)
			}
			if let val = js["scheduledPeriod"] as? FHIRJSON {
				self.scheduledPeriod = Period(json: val, owner: self)
			}
			if let val = js["scheduledTiming"] as? FHIRJSON {
				self.scheduledTiming = Timing(json: val, owner: self)
			}
			if let val = js["site"] as? FHIRJSON {
				self.site = CodeableConcept(json: val, owner: self)
			}
			if let val = js["text"] as? String {
				self.text = val
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let additionalInstructions = self.additionalInstructions {
			json["additionalInstructions"] = additionalInstructions.asJSON()
		}
		if let asNeededBoolean = self.asNeededBoolean {
			json["asNeededBoolean"] = asNeededBoolean.asJSON()
		}
		if let asNeededCodeableConcept = self.asNeededCodeableConcept {
			json["asNeededCodeableConcept"] = asNeededCodeableConcept.asJSON()
		}
		if let doseQuantity = self.doseQuantity {
			json["doseQuantity"] = doseQuantity.asJSON()
		}
		if let doseRange = self.doseRange {
			json["doseRange"] = doseRange.asJSON()
		}
		if let maxDosePerPeriod = self.maxDosePerPeriod {
			json["maxDosePerPeriod"] = maxDosePerPeriod.asJSON()
		}
		if let method = self.method {
			json["method"] = method.asJSON()
		}
		if let rate = self.rate {
			json["rate"] = rate.asJSON()
		}
		if let route = self.route {
			json["route"] = route.asJSON()
		}
		if let scheduledDateTime = self.scheduledDateTime {
			json["scheduledDateTime"] = scheduledDateTime.asJSON()
		}
		if let scheduledPeriod = self.scheduledPeriod {
			json["scheduledPeriod"] = scheduledPeriod.asJSON()
		}
		if let scheduledTiming = self.scheduledTiming {
			json["scheduledTiming"] = scheduledTiming.asJSON()
		}
		if let site = self.site {
			json["site"] = site.asJSON()
		}
		if let text = self.text {
			json["text"] = text.asJSON()
		}
		
		return json
	}
}


/**
 *  Any restrictions on medication substitution?.
 *
 *  Indicates whether or not substitution can or should be part of the dispense. In some cases substitution must happen,
 *  in other cases substitution must not happen, and in others it does not matter. This block explains the prescriber's
 *  intent. If nothing is specified substitution may be done.
 */
public class MedicationPrescriptionSubstitution: FHIRElement
{
	override public class var resourceName: String {
		get { return "MedicationPrescriptionSubstitution" }
	}
	
	/// Why should substitution (not) be made
	public var reason: CodeableConcept?
	
	/// generic | formulary +
	public var type: CodeableConcept?
	
	public convenience init(type: CodeableConcept?) {
		self.init(json: nil)
		if nil != type {
			self.type = type
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["reason"] as? FHIRJSON {
				self.reason = CodeableConcept(json: val, owner: self)
			}
			if let val = js["type"] as? FHIRJSON {
				self.type = CodeableConcept(json: val, owner: self)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let reason = self.reason {
			json["reason"] = reason.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

