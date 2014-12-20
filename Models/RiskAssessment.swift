//
//  RiskAssessment.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (riskassessment.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Potential outcomes for a subject with likelihood.
 *
 *  An assessment of the likely outcome(s) for a patient or other subject as well as the likelihood of each outcome.
 */
public class RiskAssessment: FHIRResource
{
	override public class var resourceName: String {
		get { return "RiskAssessment" }
	}
	
	/// Information used in assessment
	public var basis: [Reference]?
	
	/// Condition assessed
	public var condition: Reference?
	
	/// When was assessment made?
	public var date: NSDate?
	
	/// Unique identifier for the assessment
	public var identifier: Identifier?
	
	/// Evaluation mechanism
	public var method: CodeableConcept?
	
	/// How to reduce risk
	public var mitigation: String?
	
	/// Who did assessment?
	public var performer: Reference?
	
	/// Outcome predicted
	public var prediction: [RiskAssessmentPrediction]?
	
	/// Who/what does assessment apply to?
	public var subject: Reference?
	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["basis"] as? [NSDictionary] {
				self.basis = Reference.from(val, owner: self) as? [Reference]
			}
			if let val = js["condition"] as? NSDictionary {
				self.condition = Reference(json: val, owner: self)
			}
			if let val = js["date"] as? String {
				self.date = NSDate(json: val)
			}
			if let val = js["identifier"] as? NSDictionary {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["method"] as? NSDictionary {
				self.method = CodeableConcept(json: val, owner: self)
			}
			if let val = js["mitigation"] as? String {
				self.mitigation = val
			}
			if let val = js["performer"] as? NSDictionary {
				self.performer = Reference(json: val, owner: self)
			}
			if let val = js["prediction"] as? [NSDictionary] {
				self.prediction = RiskAssessmentPrediction.from(val, owner: self) as? [RiskAssessmentPrediction]
			}
			if let val = js["subject"] as? NSDictionary {
				self.subject = Reference(json: val, owner: self)
			}
		}
	}
}


/**
 *  Outcome predicted.
 *
 *  Describes the expected outcome for the subject.
 */
public class RiskAssessmentPrediction: FHIRElement
{
	override public class var resourceName: String {
		get { return "RiskAssessmentPrediction" }
	}
	
	/// Possible outcome for the subject
	public var outcome: CodeableConcept?
	
	/// Likelihood of specified outcome
	public var probabilityCodeableConcept: CodeableConcept?
	
	/// Likelihood of specified outcome
	public var probabilityDecimal: NSDecimalNumber?
	
	/// Likelihood of specified outcome
	public var probabilityRange: Range?
	
	/// Explanation of prediction
	public var rationale: String?
	
	/// Relative likelihood
	public var relativeRisk: NSDecimalNumber?
	
	/// Timeframe or age range
	public var whenPeriod: Period?
	
	/// Timeframe or age range
	public var whenRange: Range?
	
	public convenience init(outcome: CodeableConcept?) {
		self.init(json: nil)
		if nil != outcome {
			self.outcome = outcome
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["outcome"] as? NSDictionary {
				self.outcome = CodeableConcept(json: val, owner: self)
			}
			if let val = js["probabilityCodeableConcept"] as? NSDictionary {
				self.probabilityCodeableConcept = CodeableConcept(json: val, owner: self)
			}
			if let val = js["probabilityDecimal"] as? NSNumber {
				self.probabilityDecimal = NSDecimalNumber(json: val)
			}
			if let val = js["probabilityRange"] as? NSDictionary {
				self.probabilityRange = Range(json: val, owner: self)
			}
			if let val = js["rationale"] as? String {
				self.rationale = val
			}
			if let val = js["relativeRisk"] as? NSNumber {
				self.relativeRisk = NSDecimalNumber(json: val)
			}
			if let val = js["whenPeriod"] as? NSDictionary {
				self.whenPeriod = Period(json: val, owner: self)
			}
			if let val = js["whenRange"] as? NSDictionary {
				self.whenRange = Range(json: val, owner: self)
			}
		}
	}
}

