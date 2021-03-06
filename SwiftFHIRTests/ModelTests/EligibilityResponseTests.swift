//
//  EligibilityResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-04-03.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class EligibilityResponseTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> EligibilityResponse {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> EligibilityResponse {
		let instance = EligibilityResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testEligibilityResponse1() {
		let instance = testEligibilityResponse1_impl()
		testEligibilityResponse1_impl(json: instance.asJSON())
	}
	
	func testEligibilityResponse1_impl(json: FHIRJSON? = nil) -> EligibilityResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "eligibilityresponse-example.json")
		
		XCTAssertEqual(inst.created!.description, "2014-08-16")
		XCTAssertEqual(inst.disposition!, "Policy is currently in-force.")
		XCTAssertEqual(inst.id!, "E2500")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://www.BenefitsInc.com/fhir/eligibilityresponse")
		XCTAssertEqual(inst.identifier![0].value!, "881234")
		XCTAssertEqual(inst.organization!.reference!, "Organization/2")
		XCTAssertEqual(inst.outcome!, "complete")
		XCTAssertEqual(inst.request!.reference!, "http://www.BenefitsInc.com/fhir/eligibility/225476332402")
		XCTAssertEqual(inst.requestOrganization!.reference!, "Organization/1")
		XCTAssertEqual(inst.text!.div!, "<div>A human-readable rendering of the EligibilityResponse.</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
