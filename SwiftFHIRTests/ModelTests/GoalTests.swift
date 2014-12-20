//
//  GoalTests.swift
//  GoalTests
//
//  Generated from FHIR 0.4.0.3898 on 2014-12-20.
//  2014, SMART Platforms.
//

import Cocoa
import XCTest
import SwiftFHIR


class GoalTests: FHIRModelTestCase
{
	func instantiateFrom(filename: String) -> Goal? {
		let json = readJSONFile(filename)
		let instance = Goal(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testGoal1() {
		let inst = instantiateFrom("goal-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Goal instance")
	
		XCTAssertEqual(inst!.concern![0].display!, "obesity")
		XCTAssertEqual(inst!.concern![0].reference!, "Condition/12345")
		XCTAssertEqual(inst!.description!, "Target weight is 160 to 180 lbs.")
		XCTAssertEqual(inst!.patient!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.status!, "in progress")
	}
	
	func testGoal2() {
		let inst = instantiateFrom("goal-example.canonical.json")
		XCTAssertNotNil(inst, "Must have instantiated a Goal instance")
	
		XCTAssertEqual(inst!.concern![0].display!, "obesity")
		XCTAssertEqual(inst!.concern![0].reference!, "Condition/12345")
		XCTAssertEqual(inst!.description!, "Target weight is 160 to 180 lbs.")
		XCTAssertEqual(inst!.patient!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.status!, "in progress")
	}
	
	func testGoal3() {
		let inst = instantiateFrom("goal-example.json")
		XCTAssertNotNil(inst, "Must have instantiated a Goal instance")
	
		XCTAssertEqual(inst!.concern![0].display!, "obesity")
		XCTAssertEqual(inst!.concern![0].reference!, "Condition/12345")
		XCTAssertEqual(inst!.description!, "Target weight is 160 to 180 lbs.")
		XCTAssertEqual(inst!.patient!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst!.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst!.status!, "in progress")
	}
}
