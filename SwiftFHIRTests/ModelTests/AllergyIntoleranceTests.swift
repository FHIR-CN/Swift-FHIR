//
//  AllergyIntoleranceTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-04-03.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class AllergyIntoleranceTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> AllergyIntolerance {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> AllergyIntolerance {
		let instance = AllergyIntolerance(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testAllergyIntolerance1() {
		let instance = testAllergyIntolerance1_impl()
		testAllergyIntolerance1_impl(json: instance.asJSON())
	}
	
	func testAllergyIntolerance1_impl(json: FHIRJSON? = nil) -> AllergyIntolerance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "allergyintolerance-example.json")
		
		XCTAssertEqual(inst.category!, "food")
		XCTAssertEqual(inst.criticality!, "high")
		XCTAssertEqual(inst.event![0].description_fhir!, "Challenge Protocol. Severe Reaction to 1/8 cashew. Epinephrine administered")
		XCTAssertEqual(inst.event![0].manifestation![0].coding![0].code!, "39579001")
		XCTAssertEqual(inst.event![0].manifestation![0].coding![0].display!, "Anaphylactic reaction")
		XCTAssertEqual(inst.event![0].manifestation![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.event![0].onset!.description, "2012-06-12")
		XCTAssertEqual(inst.event![0].severity!, "severe")
		XCTAssertEqual(inst.event![0].substance!.coding![0].code!, "C3214954")
		XCTAssertEqual(inst.event![0].substance!.coding![0].display!, "cashew nut allergenic extract Injectable Product")
		XCTAssertEqual(inst.event![0].substance!.coding![0].system!.absoluteString!, "http://www.nlm.nih.gov/research/umls/rxnorm")
		XCTAssertEqual(inst.event![1].certainty!, "likely")
		XCTAssertEqual(inst.event![1].manifestation![0].coding![0].code!, "64305001")
		XCTAssertEqual(inst.event![1].manifestation![0].coding![0].display!, "Urticaria")
		XCTAssertEqual(inst.event![1].manifestation![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.event![1].onset!.description, "2004")
		XCTAssertEqual(inst.event![1].severity!, "moderate")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://acme.com/ids/patients/risks")
		XCTAssertEqual(inst.identifier![0].value!, "49476534")
		XCTAssertEqual(inst.lastOccurence!.description, "2012-06")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.recordedDate!.description, "2014-10-09T14:58:00+11:00")
		XCTAssertEqual(inst.recorder!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.status!, "confirmed")
		XCTAssertEqual(inst.substance!.coding![0].code!, "227493005")
		XCTAssertEqual(inst.substance!.coding![0].display!, "Cashew nuts")
		XCTAssertEqual(inst.substance!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!, "immune")
		
		return inst
	}
	
	func testAllergyIntolerance2() {
		let instance = testAllergyIntolerance2_impl()
		testAllergyIntolerance2_impl(json: instance.asJSON())
	}
	
	func testAllergyIntolerance2_impl(json: FHIRJSON? = nil) -> AllergyIntolerance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "allergyintolerance-qicore-example.json")
		
		XCTAssertEqual(inst.category!, "food")
		XCTAssertEqual(inst.criticality!, "high")
		XCTAssertEqual(inst.event![0].certainty!, "confirmed")
		XCTAssertEqual(inst.event![0].description_fhir!, "Challenge Protocol. Severe Reaction to 1/8 cashew. Epinephrine administered")
		XCTAssertEqual(inst.event![0].manifestation![0].coding![0].code!, "39579001")
		XCTAssertEqual(inst.event![0].manifestation![0].coding![0].display!, "Anaphylactic reaction")
		XCTAssertEqual(inst.event![0].manifestation![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.event![0].onset!.description, "2012-06-12")
		XCTAssertEqual(inst.event![0].severity!, "severe")
		XCTAssertEqual(inst.event![0].substance!.coding![0].code!, "C3214954")
		XCTAssertEqual(inst.event![0].substance!.coding![0].display!, "cashew nut allergenic extract Injectable Product")
		XCTAssertEqual(inst.event![0].substance!.coding![0].system!.absoluteString!, "http://www.nlm.nih.gov/research/umls/rxnorm")
		XCTAssertEqual(inst.event![1].certainty!, "likely")
		XCTAssertEqual(inst.event![1].manifestation![0].coding![0].code!, "64305001")
		XCTAssertEqual(inst.event![1].manifestation![0].coding![0].display!, "Urticaria")
		XCTAssertEqual(inst.event![1].manifestation![0].coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.event![1].onset!.description, "2004")
		XCTAssertEqual(inst.event![1].severity!, "moderate")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/allergyintolerance-reasonRefuted")
		XCTAssertEqual(inst.extension_fhir![0].valueCodeableConcept!.coding![0].code!, "MED")
		XCTAssertEqual(inst.extension_fhir![0].valueCodeableConcept!.coding![0].display!, "Medical Status Altered")
		XCTAssertEqual(inst.extension_fhir![0].valueCodeableConcept!.coding![0].system!.absoluteString!, "http://hl7.org/fhir/v3/ActReason")
		XCTAssertEqual(inst.id!, "qicore")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://acme.com/ids/patients/risks")
		XCTAssertEqual(inst.identifier![0].value!, "49476534")
		XCTAssertEqual(inst.lastOccurence!.description, "2012-06")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.recordedDate!.description, "2014-10-09T14:58:00+11:00")
		XCTAssertEqual(inst.recorder!.reference!, "Practitioner/example")
		XCTAssertEqual(inst.status!, "confirmed")
		XCTAssertEqual(inst.substance!.coding![0].code!, "227493005")
		XCTAssertEqual(inst.substance!.coding![0].display!, "Cashew nuts")
		XCTAssertEqual(inst.substance!.coding![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.text!.status!, "generated")
		XCTAssertEqual(inst.type!, "immune")
		
		return inst
	}
}
