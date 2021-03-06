//
//  QuestionnaireTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 on 2015-04-03.
//  2015, SMART Health IT.
//

import XCTest
import SwiftFHIR


class QuestionnaireTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Questionnaire {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: FHIRJSON) -> Questionnaire {
		let instance = Questionnaire(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testQuestionnaire1() {
		let instance = testQuestionnaire1_impl()
		testQuestionnaire1_impl(json: instance.asJSON())
	}
	
	func testQuestionnaire1_impl(json: FHIRJSON? = nil) -> Questionnaire {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "questionnaire-example-bluebook.json")
		
		XCTAssertEqual(inst.date!.description, "2013-02-19")
		XCTAssertEqual(inst.group!.group![0].group![0].question![0].text!, "Name of child")
		XCTAssertEqual(inst.group!.group![0].group![0].question![1].text!, "Sex")
		XCTAssertEqual(inst.group!.group![0].group![1].question![0].text!, "Birth weight (kg)")
		XCTAssertEqual(inst.group!.group![0].group![1].question![1].text!, "Birth length (cm)")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].group![0].extension_fhir![0].url!.absoluteString!, "http://example.org/Profile/questionnaire#visibilityCondition")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].group![0].extension_fhir![0].valueString!, "HAS_VALUE(../choice/code) AND NEQ(../choice/code,'NO')")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].group![0].question![0].text!, "1st dose")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].group![0].question![1].text!, "2nd dose")
		XCTAssertEqual(inst.group!.group![0].group![1].question![2].text!, "Vitamin K given")
		XCTAssertEqual(inst.group!.group![0].group![1].question![3].group![0].question![0].text!, "Date given")
		XCTAssertEqual(inst.group!.group![0].group![1].question![3].text!, "Hep B given y / n")
		XCTAssertEqual(inst.group!.group![0].group![1].question![4].text!, "Abnormalities noted at birth")
		XCTAssertEqual(inst.group!.group![0].group![1].title!, "Neonatal Information")
		XCTAssertEqual(inst.group!.group![0].title!, "Birth details - To be completed by health professional")
		XCTAssertEqual(inst.group!.title!, "NSW Government My Personal Health Record")
		XCTAssertEqual(inst.id!, "bb")
		XCTAssertEqual(inst.publisher!, "New South Wales Department of Health")
		XCTAssertEqual(inst.status!, "draft")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testQuestionnaire2() {
		let instance = testQuestionnaire2_impl()
		testQuestionnaire2_impl(json: instance.asJSON())
	}
	
	func testQuestionnaire2_impl(json: FHIRJSON? = nil) -> Questionnaire {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "questionnaire-example-f201-lifelines.json")
		
		XCTAssertEqual(inst.date!.description, "2010")
		XCTAssertEqual(inst.group!.concept![0].code!, "VL 1-1, 18-65_1.2.2")
		XCTAssertEqual(inst.group!.concept![0].display!, "Lifelines Questionnaire 1 part 1")
		XCTAssertEqual(inst.group!.concept![0].system!.absoluteString!, "http://example.org/system/code/lifelines/nl")
		XCTAssertEqual(inst.group!.group![0].question![0].text!, "Do you have allergies?")
		XCTAssertEqual(inst.group!.group![1].question![0].text!, "What is your gender?")
		XCTAssertEqual(inst.group!.group![1].question![1].text!, "What is your date of birth?")
		XCTAssertEqual(inst.group!.group![1].question![2].text!, "What is your country of birth?")
		XCTAssertEqual(inst.group!.group![1].question![3].text!, "What is your marital status?")
		XCTAssertEqual(inst.group!.group![1].text!, "General questions")
		XCTAssertEqual(inst.group!.group![2].question![0].text!, "Do you smoke?")
		XCTAssertEqual(inst.group!.group![2].question![1].text!, "Do you drink alchohol?")
		XCTAssertEqual(inst.group!.group![2].title!, "Intoxications")
		XCTAssertEqual(inst.id!, "f201")
		XCTAssertEqual(inst.status!, "published")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testQuestionnaire3() {
		let instance = testQuestionnaire3_impl()
		testQuestionnaire3_impl(json: instance.asJSON())
	}
	
	func testQuestionnaire3_impl(json: FHIRJSON? = nil) -> Questionnaire {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "questionnaire-example.json")
		
		XCTAssertEqual(inst.date!.description, "2012-01")
		XCTAssertEqual(inst.group!.group![0].concept![0].code!, "COMORBIDITY")
		XCTAssertEqual(inst.group!.group![0].concept![0].system!.absoluteString!, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.group!.group![0].question![0].concept![0].code!, "COMORB")
		XCTAssertEqual(inst.group!.group![0].question![0].concept![0].system!.absoluteString!, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].concept![0].code!, "CARDIAL")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].concept![0].system!.absoluteString!, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![0].concept![0].code!, "COMORBCAR")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![0].concept![0].system!.absoluteString!, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![0].options!.reference!, "#yesno")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![0].type!, "choice")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].concept![0].code!, "COMCAR00")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].concept![0].display!, "Angina Pectoris")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].concept![0].system!.absoluteString!, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].concept![1].code!, "194828000")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].concept![1].display!, "Angina (disorder)")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].concept![1].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].options!.reference!, "#yesno")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![1].type!, "choice")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![2].concept![0].code!, "22298006")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![2].concept![0].display!, "Myocardial infarction (disorder)")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![2].concept![0].system!.absoluteString!, "http://snomed.info/sct")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![2].options!.reference!, "#yesno")
		XCTAssertEqual(inst.group!.group![0].question![0].group![0].question![2].type!, "choice")
		XCTAssertEqual(inst.group!.group![0].question![0].group![1].concept![0].code!, "VASCULAR")
		XCTAssertEqual(inst.group!.group![0].question![0].group![1].concept![0].system!.absoluteString!, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.group!.group![0].question![0].options!.reference!, "#yesno")
		XCTAssertEqual(inst.group!.group![0].question![0].type!, "choice")
		XCTAssertEqual(inst.group!.group![1].concept![0].code!, "HISTOPATHOLOGY")
		XCTAssertEqual(inst.group!.group![1].concept![0].system!.absoluteString!, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.group!.group![1].group![0].concept![0].code!, "ABDOMINAL")
		XCTAssertEqual(inst.group!.group![1].group![0].concept![0].system!.absoluteString!, "http://example.org/system/code/sections")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].concept![0].code!, "STADPT")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].concept![0].display!, "pT category")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].concept![0].system!.absoluteString!, "http://example.org/system/code/questions")
		XCTAssertEqual(inst.group!.title!, "Cancer Quality Forum Questionnaire 2012")
		XCTAssertEqual(inst.id!, "3141")
		XCTAssertEqual(inst.status!, "draft")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
	
	func testQuestionnaire4() {
		let instance = testQuestionnaire4_impl()
		testQuestionnaire4_impl(json: instance.asJSON())
	}
	
	func testQuestionnaire4_impl(json: FHIRJSON? = nil) -> Questionnaire {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "questionnaire-sdc-profile-example-LOINC.json")
		
		XCTAssertEqual(inst.date!.description, "2012-04-01")
		XCTAssertEqual(inst.extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/questionnaire-category")
		XCTAssertEqual(inst.extension_fhir![0].valueCodeableConcept!.coding![0].code!, "Acute Care Hospitals")
		XCTAssertEqual(inst.group!.group![0].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/questionnaire-sdc-specialGroup")
		XCTAssertEqual(inst.group!.group![0].extension_fhir![0].valueCode!, "header")
		XCTAssertEqual(inst.group!.group![0].linkId!, "Medication/header")
		XCTAssertEqual(inst.group!.group![0].question![0].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/minLength")
		XCTAssertEqual(inst.group!.group![0].question![0].extension_fhir![0].valueInteger!, 3)
		XCTAssertEqual(inst.group!.group![0].question![0].extension_fhir![1].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/questionnaire-maxLength")
		XCTAssertEqual(inst.group!.group![0].question![0].extension_fhir![1].valueInteger!, 9)
		XCTAssertEqual(inst.group!.group![0].question![0].linkId!, "74080-3/74081-1")
		XCTAssertTrue(inst.group!.group![0].question![0].required!)
		XCTAssertEqual(inst.group!.group![0].question![0].text!, "Event ID:")
		XCTAssertEqual(inst.group!.group![0].question![0].type!, "string")
		XCTAssertEqual(inst.group!.group![0].question![1].linkId!, "74080-3/30947-6")
		XCTAssertTrue(inst.group!.group![0].question![1].required!)
		XCTAssertEqual(inst.group!.group![0].question![1].text!, "Initial Report Date (HERF Q1)")
		XCTAssertEqual(inst.group!.group![0].question![1].type!, "string")
		XCTAssertEqual(inst.group!.group![1].group![0].linkId!, "Medication/SEC01/74080-3")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/minLength")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].extension_fhir![0].valueInteger!, 1)
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].extension_fhir![1].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/questionnaire-maxLength")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].extension_fhir![1].valueInteger!, 30)
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].extension_fhir![2].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/questionnaire-deReference")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].extension_fhir![2].valueReference!.reference!, "http://loinc.org/74076-1")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![0].linkId!, "74080-3/74076-1/LA20271-5")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![0].question![0].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/minLength")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![0].question![0].extension_fhir![0].valueInteger!, 7)
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![0].question![0].extension_fhir![1].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/questionnaire-maxLength")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![0].question![0].extension_fhir![1].valueInteger!, 65)
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![0].question![0].extension_fhir![2].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/questionnaire-deReference")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![0].question![0].extension_fhir![2].valueReference!.reference!, "http://loinc.org/vs/74075-3")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![0].question![0].group![0].linkId!, "74080-3/74077-9")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![0].question![0].group![0].question![0].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/minLength")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![0].question![0].group![0].question![0].extension_fhir![0].valueInteger!, 0)
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![0].question![0].group![0].question![0].extension_fhir![1].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/questionnaire-maxLength")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![0].question![0].group![0].question![0].extension_fhir![1].valueInteger!, 500)
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![0].question![0].group![0].question![0].extension_fhir![2].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/questionnaire-deReference")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![0].question![0].group![0].question![0].extension_fhir![2].valueReference!.reference!, "http://loinc.org/74077-9")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![0].question![0].group![0].question![0].linkId!, "74080-3/74077-9-q")
		XCTAssertTrue(inst.group!.group![1].group![0].question![0].group![0].question![0].group![0].question![0].repeats!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![0].question![0].group![0].question![0].text!, "Please list all ingredients:")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![0].question![0].group![0].question![0].type!, "string")
		XCTAssertFalse(inst.group!.group![1].group![0].question![0].group![0].question![0].group![0].repeats!)
		XCTAssertFalse(inst.group!.group![1].group![0].question![0].group![0].question![0].group![0].required!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![0].question![0].linkId!, "74080-3/74075-3")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![0].question![0].options!.reference!, "#ll2655-0")
		XCTAssertTrue(inst.group!.group![1].group![0].question![0].group![0].question![0].required!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![0].question![0].text!, "What type of medication?")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![0].question![0].type!, "open-choice")
		XCTAssertFalse(inst.group!.group![1].group![0].question![0].group![0].repeats!)
		XCTAssertFalse(inst.group!.group![1].group![0].question![0].group![0].required!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![1].linkId!, "74080-3/74076-1/LA20335-8")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![1].question![0].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/minLength")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![1].question![0].extension_fhir![0].valueInteger!, 8)
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![1].question![0].extension_fhir![1].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/questionnaire-maxLength")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![1].question![0].extension_fhir![1].valueInteger!, 65)
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![1].question![0].group![0].linkId!, "74080-3/74074-6/LA20283-0")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![1].question![0].group![0].question![0].linkId!, "74080-3/30959-1")
		XCTAssertTrue(inst.group!.group![1].group![0].question![0].group![1].question![0].group![0].question![0].required!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![1].question![0].group![0].question![0].text!, "What was the lot number of the vaccine?")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![1].question![0].group![0].question![0].type!, "string")
		XCTAssertFalse(inst.group!.group![1].group![0].question![0].group![1].question![0].group![0].repeats!)
		XCTAssertFalse(inst.group!.group![1].group![0].question![0].group![1].question![0].group![0].required!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![1].question![0].linkId!, "74080-3/74074-6")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![1].question![0].options!.reference!, "#ll2657-6")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![1].question![0].text!, "What type of biological product?")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![1].question![0].type!, "open-choice")
		XCTAssertFalse(inst.group!.group![1].group![0].question![0].group![1].repeats!)
		XCTAssertFalse(inst.group!.group![1].group![0].question![0].group![1].required!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![2].linkId!, "74080-3/74076-1/LA20336-6")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![2].question![0].linkId!, "74080-3/74073-8")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![2].question![0].options!.reference!, "#ll2659-2")
		XCTAssertTrue(inst.group!.group![1].group![0].question![0].group![2].question![0].required!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![2].question![0].text!, "What type of nutritional product?")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].group![2].question![0].type!, "open-choice")
		XCTAssertFalse(inst.group!.group![1].group![0].question![0].group![2].repeats!)
		XCTAssertFalse(inst.group!.group![1].group![0].question![0].group![2].required!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].linkId!, "74080-3/74076-1")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].options!.reference!, "ValueSet/sdc")
		XCTAssertTrue(inst.group!.group![1].group![0].question![0].required!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].text!, "What type of medication/substance was involved?")
		XCTAssertEqual(inst.group!.group![1].group![0].question![0].type!, "open-choice")
		XCTAssertEqual(inst.group!.group![1].group![0].question![1].linkId!, "74080-3/74072-0")
		XCTAssertEqual(inst.group!.group![1].group![0].question![1].options!.reference!, "#ll2660-0")
		XCTAssertTrue(inst.group!.group![1].group![0].question![1].required!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![1].text!, "Which of the following best characterizes the event?")
		XCTAssertEqual(inst.group!.group![1].group![0].question![1].type!, "open-choice")
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![0].linkId!, "74080-3/74071-2/A1275")
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![0].question![0].linkId!, "74080-3/74070-4")
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![0].question![0].options!.reference!, "#ll2662-6")
		XCTAssertTrue(inst.group!.group![1].group![0].question![2].group![0].question![0].required!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![0].question![0].text!, "Which best describes the incorrect dose(s)?")
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![0].question![0].type!, "open-choice")
		XCTAssertFalse(inst.group!.group![1].group![0].question![2].group![0].repeats!)
		XCTAssertFalse(inst.group!.group![1].group![0].question![2].group![0].required!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![1].linkId!, "74080-3/74071-2/LA20313-5")
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![1].question![0].linkId!, "Medication/74069-6")
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![1].question![0].options!.reference!, "#ll2663-4")
		XCTAssertTrue(inst.group!.group![1].group![0].question![2].group![1].question![0].required!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![1].question![0].text!, "Which best describes the incorrect timing?")
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![1].question![0].type!, "open-choice")
		XCTAssertFalse(inst.group!.group![1].group![0].question![2].group![1].repeats!)
		XCTAssertFalse(inst.group!.group![1].group![0].question![2].group![1].required!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![2].linkId!, "74080-3/74071-2/LA20306-9")
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![2].question![0].linkId!, "74080-3/74068-8")
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![2].question![0].options!.reference!, "#ll2664-2")
		XCTAssertTrue(inst.group!.group![1].group![0].question![2].group![2].question![0].required!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![2].question![0].text!, "Which best describes the incorrect rate?")
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![2].question![0].type!, "open-choice")
		XCTAssertFalse(inst.group!.group![1].group![0].question![2].group![2].repeats!)
		XCTAssertFalse(inst.group!.group![1].group![0].question![2].group![2].required!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![3].linkId!, "74080-3/74071-2/LA20309-3")
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![3].question![0].linkId!, "Medication/74067-0")
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![3].question![0].options!.reference!, "#ll2665-9")
		XCTAssertTrue(inst.group!.group![1].group![0].question![2].group![3].question![0].required!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![3].question![0].text!, "Which best describes the incorrect strength or concentration?")
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![3].question![0].type!, "open-choice")
		XCTAssertFalse(inst.group!.group![1].group![0].question![2].group![3].repeats!)
		XCTAssertFalse(inst.group!.group![1].group![0].question![2].group![3].required!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![4].linkId!, "74080-3/74071-2/LA20311-9")
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![4].question![0].linkId!, "Medication/74066-2")
		XCTAssertTrue(inst.group!.group![1].group![0].question![2].group![4].question![0].required!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![4].question![0].text!, "What was the expiration date?")
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![4].question![0].type!, "string")
		XCTAssertFalse(inst.group!.group![1].group![0].question![2].group![4].repeats!)
		XCTAssertFalse(inst.group!.group![1].group![0].question![2].group![4].required!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![5].linkId!, "74080-3/74071-2/LA20312-7")
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![5].question![0].linkId!, "Medication/74065-4")
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![5].question![0].options!.reference!, "#ll2817-6")
		XCTAssertTrue(inst.group!.group![1].group![0].question![2].group![5].question![0].required!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![5].question![0].text!, "Was there a documented history of allergies or sensitivities to the medication/substance                      administered?")
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![5].question![0].type!, "open-choice")
		XCTAssertFalse(inst.group!.group![1].group![0].question![2].group![5].repeats!)
		XCTAssertFalse(inst.group!.group![1].group![0].question![2].group![5].required!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![6].linkId!, "74080-3/74071-2/LA20345-7")
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![6].question![0].linkId!, "Medication/74064-7")
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![6].question![0].options!.reference!, "#ll2668-3")
		XCTAssertTrue(inst.group!.group![1].group![0].question![2].group![6].question![0].required!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![6].question![0].text!, "What was the contraindication (potential or actual interaction)?")
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].group![6].question![0].type!, "open-choice")
		XCTAssertFalse(inst.group!.group![1].group![0].question![2].group![6].repeats!)
		XCTAssertFalse(inst.group!.group![1].group![0].question![2].group![6].required!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].linkId!, "74080-3/74071-2")
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].options!.reference!, "#ll2661-8")
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].text!, "What was the incorrect action?")
		XCTAssertEqual(inst.group!.group![1].group![0].question![2].type!, "open-choice")
		XCTAssertEqual(inst.group!.group![1].group![0].question![3].linkId!, "74080-3/74063-9")
		XCTAssertEqual(inst.group!.group![1].group![0].question![3].options!.reference!, "#ll2669-1")
		XCTAssertTrue(inst.group!.group![1].group![0].question![3].required!)
		XCTAssertEqual(inst.group!.group![1].group![0].question![3].text!, "At what stage in the process did the event originate, regardless of the stage at which                  it was discovered?")
		XCTAssertEqual(inst.group!.group![1].group![0].question![3].type!, "open-choice")
		XCTAssertTrue(inst.group!.group![1].group![0].required!)
		XCTAssertEqual(inst.group!.group![1].group![1].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/questionnaire-maxOccurs")
		XCTAssertEqual(inst.group!.group![1].group![1].extension_fhir![0].valueInteger!, 5)
		XCTAssertEqual(inst.group!.group![1].group![1].linkId!, "74080-3/74078-7")
		XCTAssertEqual(inst.group!.group![1].group![1].question![0].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/minLength")
		XCTAssertEqual(inst.group!.group![1].group![1].question![0].extension_fhir![0].valueInteger!, 0)
		XCTAssertEqual(inst.group!.group![1].group![1].question![0].extension_fhir![1].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/questionnaire-maxLength")
		XCTAssertEqual(inst.group!.group![1].group![1].question![0].extension_fhir![1].valueInteger!, 65)
		XCTAssertEqual(inst.group!.group![1].group![1].question![0].linkId!, "74080-3/74078-7/74062-1")
		XCTAssertEqual(inst.group!.group![1].group![1].question![0].text!, "Generic name or investigational drug name")
		XCTAssertEqual(inst.group!.group![1].group![1].question![0].type!, "string")
		XCTAssertEqual(inst.group!.group![1].group![1].question![1].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/minLength")
		XCTAssertEqual(inst.group!.group![1].group![1].question![1].extension_fhir![0].valueInteger!, 0)
		XCTAssertEqual(inst.group!.group![1].group![1].question![1].extension_fhir![1].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/questionnaire-maxLength")
		XCTAssertEqual(inst.group!.group![1].group![1].question![1].extension_fhir![1].valueInteger!, 65)
		XCTAssertEqual(inst.group!.group![1].group![1].question![1].linkId!, "74080-3/74078-7/74061-3")
		XCTAssertEqual(inst.group!.group![1].group![1].question![1].text!, "Ingredient RXCUI (if known)")
		XCTAssertEqual(inst.group!.group![1].group![1].question![1].type!, "string")
		XCTAssertEqual(inst.group!.group![1].group![1].question![2].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/minLength")
		XCTAssertEqual(inst.group!.group![1].group![1].question![2].extension_fhir![0].valueInteger!, 0)
		XCTAssertEqual(inst.group!.group![1].group![1].question![2].extension_fhir![1].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/questionnaire-maxLength")
		XCTAssertEqual(inst.group!.group![1].group![1].question![2].extension_fhir![1].valueInteger!, 65)
		XCTAssertEqual(inst.group!.group![1].group![1].question![2].linkId!, "74080-3/74078-7/74060-5")
		XCTAssertEqual(inst.group!.group![1].group![1].question![2].text!, "Brand name (if known)")
		XCTAssertEqual(inst.group!.group![1].group![1].question![2].type!, "string")
		XCTAssertEqual(inst.group!.group![1].group![1].question![3].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/minLength")
		XCTAssertEqual(inst.group!.group![1].group![1].question![3].extension_fhir![0].valueInteger!, 0)
		XCTAssertEqual(inst.group!.group![1].group![1].question![3].extension_fhir![1].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/questionnaire-maxLength")
		XCTAssertEqual(inst.group!.group![1].group![1].question![3].extension_fhir![1].valueInteger!, 65)
		XCTAssertEqual(inst.group!.group![1].group![1].question![3].linkId!, "74080-3/74078-7/74059-7")
		XCTAssertEqual(inst.group!.group![1].group![1].question![3].text!, "Brand name RXCUI (if known)")
		XCTAssertEqual(inst.group!.group![1].group![1].question![3].type!, "string")
		XCTAssertEqual(inst.group!.group![1].group![1].question![4].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/minLength")
		XCTAssertEqual(inst.group!.group![1].group![1].question![4].extension_fhir![0].valueInteger!, 0)
		XCTAssertEqual(inst.group!.group![1].group![1].question![4].extension_fhir![1].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/questionnaire-maxLength")
		XCTAssertEqual(inst.group!.group![1].group![1].question![4].extension_fhir![1].valueInteger!, 65)
		XCTAssertEqual(inst.group!.group![1].group![1].question![4].linkId!, "74080-3/74078-7/74058-9")
		XCTAssertEqual(inst.group!.group![1].group![1].question![4].text!, "Manufacturer (if known)")
		XCTAssertEqual(inst.group!.group![1].group![1].question![4].type!, "string")
		XCTAssertEqual(inst.group!.group![1].group![1].question![5].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/minLength")
		XCTAssertEqual(inst.group!.group![1].group![1].question![5].extension_fhir![0].valueInteger!, 0)
		XCTAssertEqual(inst.group!.group![1].group![1].question![5].extension_fhir![1].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/questionnaire-maxLength")
		XCTAssertEqual(inst.group!.group![1].group![1].question![5].extension_fhir![1].valueInteger!, 65)
		XCTAssertEqual(inst.group!.group![1].group![1].question![5].linkId!, "74080-3/74078-7/74057-1")
		XCTAssertEqual(inst.group!.group![1].group![1].question![5].text!, "Strength or concentration of product")
		XCTAssertEqual(inst.group!.group![1].group![1].question![5].type!, "string")
		XCTAssertEqual(inst.group!.group![1].group![1].question![6].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/minLength")
		XCTAssertEqual(inst.group!.group![1].group![1].question![6].extension_fhir![0].valueInteger!, 0)
		XCTAssertEqual(inst.group!.group![1].group![1].question![6].extension_fhir![1].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/questionnaire-maxLength")
		XCTAssertEqual(inst.group!.group![1].group![1].question![6].extension_fhir![1].valueInteger!, 65)
		XCTAssertEqual(inst.group!.group![1].group![1].question![6].linkId!, "74080-3/74078-7/74056-3")
		XCTAssertEqual(inst.group!.group![1].group![1].question![6].text!, "Clinical drug component RXCUI (if known)")
		XCTAssertEqual(inst.group!.group![1].group![1].question![6].type!, "string")
		XCTAssertEqual(inst.group!.group![1].group![1].question![7].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/minLength")
		XCTAssertEqual(inst.group!.group![1].group![1].question![7].extension_fhir![0].valueInteger!, 0)
		XCTAssertEqual(inst.group!.group![1].group![1].question![7].extension_fhir![1].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/questionnaire-maxLength")
		XCTAssertEqual(inst.group!.group![1].group![1].question![7].extension_fhir![1].valueInteger!, 65)
		XCTAssertEqual(inst.group!.group![1].group![1].question![7].linkId!, "74080-3/74078-7/74055-5")
		XCTAssertEqual(inst.group!.group![1].group![1].question![7].text!, "Dosage form of Product")
		XCTAssertEqual(inst.group!.group![1].group![1].question![7].type!, "string")
		XCTAssertEqual(inst.group!.group![1].group![1].question![8].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/minLength")
		XCTAssertEqual(inst.group!.group![1].group![1].question![8].extension_fhir![0].valueInteger!, 0)
		XCTAssertEqual(inst.group!.group![1].group![1].question![8].extension_fhir![1].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/questionnaire-maxLength")
		XCTAssertEqual(inst.group!.group![1].group![1].question![8].extension_fhir![1].valueInteger!, 65)
		XCTAssertEqual(inst.group!.group![1].group![1].question![8].linkId!, "74080-3/74078-7/74054-8")
		XCTAssertEqual(inst.group!.group![1].group![1].question![8].text!, "Dose form RXCUI (if known)")
		XCTAssertEqual(inst.group!.group![1].group![1].question![8].type!, "string")
		XCTAssertEqual(inst.group!.group![1].group![1].question![9].linkId!, "74080-3/74078-7/74053-0")
		XCTAssertEqual(inst.group!.group![1].group![1].question![9].options!.reference!, "#ll2828-3")
		XCTAssertTrue(inst.group!.group![1].group![1].question![9].required!)
		XCTAssertEqual(inst.group!.group![1].group![1].question![9].text!, "Was this medication/substance prescribed for this patient?")
		XCTAssertEqual(inst.group!.group![1].group![1].question![9].type!, "open-choice")
		XCTAssertTrue(inst.group!.group![1].group![1].repeats!)
		XCTAssertEqual(inst.group!.group![1].group![1].text!, "Please provide the following medication details for any medications or other substances                directly involved in the event.")
		XCTAssertEqual(inst.group!.group![1].group![2].linkId!, "Medication/SEC03")
		XCTAssertEqual(inst.group!.group![1].group![2].question![0].linkId!, "74080-3/74051-4")
		XCTAssertEqual(inst.group!.group![1].group![2].question![0].options!.reference!, "#ll2682-4")
		XCTAssertTrue(inst.group!.group![1].group![2].question![0].required!)
		XCTAssertEqual(inst.group!.group![1].group![2].question![0].text!, "What was the intended route of administration?")
		XCTAssertEqual(inst.group!.group![1].group![2].question![0].type!, "open-choice")
		XCTAssertEqual(inst.group!.group![1].group![2].question![1].linkId!, "74080-3/74050-6")
		XCTAssertEqual(inst.group!.group![1].group![2].question![1].options!.reference!, "#ll2682-4")
		XCTAssertTrue(inst.group!.group![1].group![2].question![1].required!)
		XCTAssertEqual(inst.group!.group![1].group![2].question![1].text!, "What was the actual route of administration (attempted or completed)?")
		XCTAssertEqual(inst.group!.group![1].group![2].question![1].type!, "open-choice")
		XCTAssertEqual(inst.group!.group![1].group![3].linkId!, "Medication/SEC04")
		XCTAssertEqual(inst.group!.group![1].group![3].text!, "The form is complete.")
		XCTAssertEqual(inst.group!.group![1].group![3].title!, "STOP")
		XCTAssertEqual(inst.group!.group![1].group![4].linkId!, "Medication/SEC05")
		XCTAssertEqual(inst.group!.group![1].group![4].title!, "Thank you for completing these questions.")
		XCTAssertEqual(inst.group!.group![1].linkId!, "Medication/SEC00")
		XCTAssertEqual(inst.group!.group![1].title!, "Medication or Other Substance")
		XCTAssertEqual(inst.group!.group![2].extension_fhir![0].url!.absoluteString!, "http://hl7.org/fhir/StructureDefinition/questionnaire-sdc-specialGroup")
		XCTAssertEqual(inst.group!.group![2].extension_fhir![0].valueCode!, "footer")
		XCTAssertEqual(inst.group!.group![2].linkId!, "Medication/footer")
		XCTAssertEqual(inst.group!.group![2].text!, "AHRQ Common Formats - Hospital Version 1.2 - 2012 Medication or Other Substance")
		XCTAssertEqual(inst.group!.linkId!, "root")
		XCTAssertEqual(inst.group!.title!, "Medication or Other Substance")
		XCTAssertEqual(inst.id!, "sdc-loinc")
		XCTAssertEqual(inst.identifier![0].system!.absoluteString!, "http://loinc.org/vs")
		XCTAssertEqual(inst.identifier![0].value!, "74080-3")
		XCTAssertEqual(inst.publisher!, "Agency for Healthcare Research and Quality (AHRQ)")
		XCTAssertEqual(inst.status!, "published")
		XCTAssertEqual(inst.text!.div!, "<div>Todo</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}
