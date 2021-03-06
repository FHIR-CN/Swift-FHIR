//
//  ClinicalImpressionTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-04-03.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class ClinicalImpressionTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> ClinicalImpression {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> ClinicalImpression {
		let instance = ClinicalImpression(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testClinicalImpression1() {
		let instance = testClinicalImpression1_impl()
		testClinicalImpression1_impl(json: instance.asJSON())
	}
	
	func testClinicalImpression1_impl(json: FHIRJSON? = nil) -> ClinicalImpression {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "clinicalimpression-example.json")
		
		XCTAssertEqual(inst.assessor!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.date!.description, "2014-12-06T22:33:00+11:00")
		XCTAssertEqual(inst.description_fhir!, "This 26 yo male patient is brought into ER by ambulance after being involved in a motor vehicle accident")
		XCTAssertEqual(inst.finding![0].item!.coding![0].code!, "850.0")
		XCTAssertEqual(inst.finding![0].item!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/sid/icd-9")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.investigations![0].code!.text!, "Initial Examination")
		XCTAssertEqual(inst.investigations![0].item![0].display!, "deep laceration of the scalp (left temporo-occipital)")
		XCTAssertEqual(inst.investigations![0].item![1].display!, "decreased level of consciousness")
		XCTAssertEqual(inst.investigations![0].item![2].display!, "disoriented to time and place")
		XCTAssertEqual(inst.investigations![0].item![3].display!, "restless")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.plan![0].display!, "hospital standard closed head injury management protocol ")
		XCTAssertEqual(inst.problem![0].display!, "MVA")
		XCTAssertEqual(inst.status!, "completed")
		XCTAssertEqual(inst.summary!, "provisional diagnoses of laceration of head and traumatic brain injury (TBI)")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
