//
//  ReferralRequestTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-04-03.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ReferralRequestTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> ReferralRequest {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> ReferralRequest {
		let instance = ReferralRequest(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testReferralRequest1() {
		let instance = testReferralRequest1_impl()
		testReferralRequest1_impl(json: instance.asJSON())
	}
	
	func testReferralRequest1_impl(json: FHIRJSON? = nil) -> ReferralRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "referralrequest-example.json")
		
		XCTAssertEqual(inst.dateSent!.description, "2014-02-14")
		XCTAssertEqual(inst.description_fhir!, "In the past 2 years Beverly has had 6 instances of r) sided Otitis media. She is     falling behind her peers at school, and displaying some learning difficulties.")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://orionhealth.com/fhir/apps/referralids")
		XCTAssertEqual(inst.identifier![0].value!, "ret4421")
		XCTAssertEqual(inst.patient!.display!, "Beverly Weaver")
		XCTAssertEqual(inst.patient!.reference!, "https://fhir.orionhealth.com/blaze/fhir/Patient/77662")
		XCTAssertEqual(inst.priority!.coding![0].code!, "med")
		XCTAssertEqual(inst.priority!.coding![0].display!, "Medium")
		XCTAssertEqual(inst.priority!.coding![0].system!.absoluteString!, "http://orionhealth.com/fhir/apps/prioritycodes")
		XCTAssertEqual(inst.reason!.text!, "For consideration of Grommets")
		XCTAssertEqual(inst.recipient![0].display!, "Dr Dave")
		XCTAssertEqual(inst.recipient![0].reference!, "https://fhir.orionhealth.com/blaze/fhir/Practitioner/76597")
		XCTAssertEqual(inst.requester!.display!, "Serena Shrink")
		XCTAssertEqual(inst.requester!.reference!, "https://fhir.orionhealth.com/blaze/fhir/Practitioner/77272")
		XCTAssertEqual(inst.serviceRequested![0].coding![0].code!, "172676009")
		XCTAssertEqual(inst.serviceRequested![0].coding![0].display!, "Myringotomy and insertion of tympanic ventilation tube")
		XCTAssertEqual(inst.serviceRequested![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.serviceRequested![0].text!, "Insertion of grommets")
		XCTAssertEqual(inst.specialty!.coding![0].code!, "ent")
		XCTAssertEqual(inst.specialty!.coding![0].display!, "ENT")
		XCTAssertEqual(inst.specialty!.coding![0].system!.absoluteString!, "http://orionhealth.com/fhir/apps/specialties")
		XCTAssertEqual(inst.status!, "requested")
		XCTAssertEqual(inst.text!.div!, "<div>Referral to Dr Dave for Beverly weaver to have grommets inserted in her r) ear</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "rfs")
		XCTAssertEqual(inst.type!.coding![0].display!, "Referral for service")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://orionhealth.com/fhir/apps/referraltypes")
		
		return inst
	}
	
	func testReferralRequest2() {
		let instance = testReferralRequest2_impl()
		testReferralRequest2_impl(json: instance.asJSON())
	}
	
	func testReferralRequest2_impl(json: FHIRJSON? = nil) -> ReferralRequest {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "referralrequest-qicore-example.json")
		
		XCTAssertEqual(inst.dateSent!.description, "2014-02-14")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/referralrequest-reasonRefused")
		XCTAssertEqual(inst.extension_fhir![0].valueCodeableConcept!.coding![0].code!, "609589008")
		XCTAssertEqual(inst.extension_fhir![0].valueCodeableConcept!.coding![0].display!, "Refused by parents of subject")
		XCTAssertEqual(inst.extension_fhir![0].valueCodeableConcept!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.patient!.display!, "Beverly Weaver")
		XCTAssertEqual(inst.patient!.reference!, "https://fhir.orionhealth.com/blaze/fhir/Patient/77662")
		XCTAssertEqual(inst.priority!.coding![0].code!, "394848005")
		XCTAssertEqual(inst.priority!.coding![0].display!, "Normal priority")
		XCTAssertEqual(inst.priority!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.reason!.coding![0].code!, "65363002")
		XCTAssertEqual(inst.reason!.coding![0].display!, "Otitis media")
		XCTAssertEqual(inst.reason!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.recipient![0].display!, "Dr Dave")
		XCTAssertEqual(inst.recipient![0].reference!, "https://fhir.orionhealth.com/blaze/fhir/Practitioner/76597")
		XCTAssertEqual(inst.requester!.display!, "Serena Shrink")
		XCTAssertEqual(inst.requester!.reference!, "https://fhir.orionhealth.com/blaze/fhir/Practitioner/77272")
		XCTAssertEqual(inst.serviceRequested![0].coding![0].code!, "172676009")
		XCTAssertEqual(inst.serviceRequested![0].coding![0].display!, "Myringotomy and insertion of short-term tympanic ventilation tube (procedure)")
		XCTAssertEqual(inst.serviceRequested![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.specialty!.coding![0].code!, "417887005")
		XCTAssertEqual(inst.specialty!.coding![0].display!, "Pediatric otolaryngology")
		XCTAssertEqual(inst.specialty!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.status!, "rejected")
		XCTAssertEqual(inst.text!.div!, "<div>Referral to Dr Dave for Beverly weaver to have grommets inserted in her r) ear</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!.coding![0].code!, "700274009")
		XCTAssertEqual(inst.type!.coding![0].display!, "Referral for procedure")
		XCTAssertEqual(inst.type!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		
		return inst
	}
}
