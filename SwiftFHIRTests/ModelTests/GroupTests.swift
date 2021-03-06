//
//  GroupTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-04-03.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class GroupTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Group {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> Group {
		let instance = Group(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testGroup1() {
		let instance = testGroup1_impl()
		testGroup1_impl(json: instance.asJSON())
	}
	
	func testGroup1_impl(json: FHIRJSON? = nil) -> Group {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "group-example.json")
		
		XCTAssertTrue(inst.actual!)
		XCTAssertEqual(inst.characteristic![0].code!.text!, "gender")
		XCTAssertFalse(inst.characteristic![0].exclude!)
		XCTAssertEqual(inst.characteristic![0].valueCodeableConcept!.text!, "mixed")
		XCTAssertEqual(inst.characteristic![1].code!.text!, "owner")
		XCTAssertFalse(inst.characteristic![1].exclude!)
		XCTAssertEqual(inst.characteristic![1].valueCodeableConcept!.text!, "John Smith")
		XCTAssertEqual(inst.code!.text!, "Horse")
		XCTAssertEqual(inst.id!, "101")
		XCTAssertEqual(inst.name!, "John's herd")
		XCTAssertEqual(inst.quantity!, UInt(25))
		XCTAssertEqual(inst.text!.status!, "additional")
		XCTAssertEqual(inst.type!, "animal")
		
		return inst
	}
}
