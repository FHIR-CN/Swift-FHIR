//
//  ValueSet.swift
//  SwiftFHIR
//
//  Generated from FHIR 0.5.0.5149 (http://hl7.org/fhir/StructureDefinition/ValueSet) on 2015-04-03.
//  2015, SMART Health IT.
//

import Foundation


/**
 *  A set of codes drawn from one or more code systems.
 *
 *  A value set specifies a set of codes drawn from one or more code systems.
 */
public class ValueSet: DomainResource
{
	override public class var resourceName: String {
		get { return "ValueSet" }
	}
	
	/// When value set includes codes from elsewhere
	public var compose: ValueSetCompose?
	
	/// Contact details of the publisher
	public var contact: [ValueSetContact]?
	
	/// Use and/or Publishing restrictions
	public var copyright: String?
	
	/// Date for given status
	public var date: DateTime?
	
	/// When value set defines its own codes
	public var define: ValueSetDefine?
	
	/// Human language description of the value set
	public var description_fhir: String?
	
	/// Used when the value set is "expanded"
	public var expansion: ValueSetExpansion?
	
	/// If for testing purposes, not real usage
	public var experimental: Bool?
	
	/// Whether this is intended to be used with an extensible binding
	public var extensible: Bool?
	
	/// Additional identifier for the value set (v2 / CDA)
	public var identifier: Identifier?
	
	/// Indicates whether or not any change to the content logical definition may occur
	public var immutable: Bool?
	
	/// Fixed date for all referenced code systems and value sets
	public var lockedDate: Date?
	
	/// Informal name for this value set
	public var name: String?
	
	/// Name of the publisher (Organization or individual)
	public var publisher: String?
	
	/// Why is this needed?
	public var requirements: String?
	
	/// draft | active | retired
	public var status: String?
	
	/// Globally unique logical id for  value set
	public var url: NSURL?
	
	/// Content intends to support these contexts
	public var useContext: [CodeableConcept]?
	
	/// Logical id for this version of the value set
	public var version: String?
	
	public convenience init(status: String?) {
		self.init(json: nil)
		if nil != status {
			self.status = status
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["compose"] as? FHIRJSON {
				self.compose = ValueSetCompose(json: val, owner: self)
			}
			if let val = js["contact"] as? [FHIRJSON] {
				self.contact = ValueSetContact.from(val, owner: self) as? [ValueSetContact]
			}
			if let val = js["copyright"] as? String {
				self.copyright = val
			}
			if let val = js["date"] as? String {
				self.date = DateTime(string: val)
			}
			if let val = js["define"] as? FHIRJSON {
				self.define = ValueSetDefine(json: val, owner: self)
			}
			if let val = js["description"] as? String {
				self.description_fhir = val
			}
			if let val = js["expansion"] as? FHIRJSON {
				self.expansion = ValueSetExpansion(json: val, owner: self)
			}
			if let val = js["experimental"] as? Bool {
				self.experimental = val
			}
			if let val = js["extensible"] as? Bool {
				self.extensible = val
			}
			if let val = js["identifier"] as? FHIRJSON {
				self.identifier = Identifier(json: val, owner: self)
			}
			if let val = js["immutable"] as? Bool {
				self.immutable = val
			}
			if let val = js["lockedDate"] as? String {
				self.lockedDate = Date(string: val)
			}
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["publisher"] as? String {
				self.publisher = val
			}
			if let val = js["requirements"] as? String {
				self.requirements = val
			}
			if let val = js["status"] as? String {
				self.status = val
			}
			if let val = js["url"] as? String {
				self.url = NSURL(string: val)
			}
			if let val = js["useContext"] as? [FHIRJSON] {
				self.useContext = CodeableConcept.from(val, owner: self) as? [CodeableConcept]
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let compose = self.compose {
			json["compose"] = compose.asJSON()
		}
		if let contact = self.contact {
			json["contact"] = ValueSetContact.asJSONArray(contact)
		}
		if let copyright = self.copyright {
			json["copyright"] = copyright.asJSON()
		}
		if let date = self.date {
			json["date"] = date.asJSON()
		}
		if let define = self.define {
			json["define"] = define.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let expansion = self.expansion {
			json["expansion"] = expansion.asJSON()
		}
		if let experimental = self.experimental {
			json["experimental"] = experimental.asJSON()
		}
		if let extensible = self.extensible {
			json["extensible"] = extensible.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let immutable = self.immutable {
			json["immutable"] = immutable.asJSON()
		}
		if let lockedDate = self.lockedDate {
			json["lockedDate"] = lockedDate.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let publisher = self.publisher {
			json["publisher"] = publisher.asJSON()
		}
		if let requirements = self.requirements {
			json["requirements"] = requirements.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let useContext = self.useContext {
			json["useContext"] = CodeableConcept.asJSONArray(useContext)
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  When value set includes codes from elsewhere.
 */
public class ValueSetCompose: FHIRElement
{
	override public class var resourceName: String {
		get { return "ValueSetCompose" }
	}
	
	/// Import the contents of another value set
	public var import_fhir: [NSURL]?
	
	/// Include one or more codes from a code system
	public var include: [ValueSetComposeInclude]?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["import"] as? [String] {
				self.import_fhir = NSURL.from(val)
			}
			if let val = js["include"] as? [FHIRJSON] {
				self.include = ValueSetComposeInclude.from(val, owner: self) as? [ValueSetComposeInclude]
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let import_fhir = self.import_fhir {
			var arr = [AnyObject]()
			for val in import_fhir {
				arr.append(val.asJSON())
			}
			json["import"] = arr
		}
		if let include = self.include {
			json["include"] = ValueSetComposeInclude.asJSONArray(include)
		}
		
		return json
	}
}


/**
 *  Include one or more codes from a code system.
 */
public class ValueSetComposeInclude: FHIRElement
{
	override public class var resourceName: String {
		get { return "ValueSetComposeInclude" }
	}
	
	/// A concept defined in the system
	public var concept: [ValueSetComposeIncludeConcept]?
	
	/// Select codes/concepts by their properties (including relationships)
	public var filter: [ValueSetComposeIncludeFilter]?
	
	/// The system the codes come from
	public var system: NSURL?
	
	/// Specific version of the code system referred to
	public var version: String?
	
	public convenience init(system: NSURL?) {
		self.init(json: nil)
		if nil != system {
			self.system = system
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["concept"] as? [FHIRJSON] {
				self.concept = ValueSetComposeIncludeConcept.from(val, owner: self) as? [ValueSetComposeIncludeConcept]
			}
			if let val = js["filter"] as? [FHIRJSON] {
				self.filter = ValueSetComposeIncludeFilter.from(val, owner: self) as? [ValueSetComposeIncludeFilter]
			}
			if let val = js["system"] as? String {
				self.system = NSURL(string: val)
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let concept = self.concept {
			json["concept"] = ValueSetComposeIncludeConcept.asJSONArray(concept)
		}
		if let filter = self.filter {
			json["filter"] = ValueSetComposeIncludeFilter.asJSONArray(filter)
		}
		if let system = self.system {
			json["system"] = system.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  A concept defined in the system.
 *
 *  Specifies a concept to be included or excluded.
 */
public class ValueSetComposeIncludeConcept: FHIRElement
{
	override public class var resourceName: String {
		get { return "ValueSetComposeIncludeConcept" }
	}
	
	/// Code or expression from system
	public var code: String?
	
	/// Additional representations for the concept
	public var designation: [ValueSetDefineConceptDesignation]?
	
	/// Test to display for this code for this value set
	public var display: String?
	
	public convenience init(code: String?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["designation"] as? [FHIRJSON] {
				self.designation = ValueSetDefineConceptDesignation.from(val, owner: self) as? [ValueSetDefineConceptDesignation]
			}
			if let val = js["display"] as? String {
				self.display = val
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let designation = self.designation {
			json["designation"] = ValueSetDefineConceptDesignation.asJSONArray(designation)
		}
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		
		return json
	}
}


/**
 *  Select codes/concepts by their properties (including relationships).
 *
 *  Select concepts by specify a matching criteria based on the properties (including relationships) defined by the
 *  system. If multiple filters are specified, they SHALL all be true.
 */
public class ValueSetComposeIncludeFilter: FHIRElement
{
	override public class var resourceName: String {
		get { return "ValueSetComposeIncludeFilter" }
	}
	
	/// = | is-a | is-not-a | regex | in | not-in
	public var op: String?
	
	/// A property defined by the code system
	public var property: String?
	
	/// Code from the system, or regex criteria
	public var value: String?
	
	public convenience init(op: String?, property: String?, value: String?) {
		self.init(json: nil)
		if nil != op {
			self.op = op
		}
		if nil != property {
			self.property = property
		}
		if nil != value {
			self.value = value
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["op"] as? String {
				self.op = val
			}
			if let val = js["property"] as? String {
				self.property = val
			}
			if let val = js["value"] as? String {
				self.value = val
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let op = self.op {
			json["op"] = op.asJSON()
		}
		if let property = self.property {
			json["property"] = property.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Contact details of the publisher.
 *
 *  Contacts to assist a user in finding and communicating with the publisher.
 */
public class ValueSetContact: FHIRElement
{
	override public class var resourceName: String {
		get { return "ValueSetContact" }
	}
	
	/// Name of a individual to contact
	public var name: String?
	
	/// Contact details for individual or publisher
	public var telecom: [ContactPoint]?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["telecom"] as? [FHIRJSON] {
				self.telecom = ContactPoint.from(val, owner: self) as? [ContactPoint]
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let telecom = self.telecom {
			json["telecom"] = ContactPoint.asJSONArray(telecom)
		}
		
		return json
	}
}


/**
 *  When value set defines its own codes.
 *
 *  A definition of an code system, inlined into the value set.
 */
public class ValueSetDefine: FHIRElement
{
	override public class var resourceName: String {
		get { return "ValueSetDefine" }
	}
	
	/// If code comparison is case sensitive
	public var caseSensitive: Bool?
	
	/// Concepts in the code system
	public var concept: [ValueSetDefineConcept]?
	
	/// URI to identify the code system
	public var system: NSURL?
	
	/// Version of this system
	public var version: String?
	
	public convenience init(system: NSURL?) {
		self.init(json: nil)
		if nil != system {
			self.system = system
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["caseSensitive"] as? Bool {
				self.caseSensitive = val
			}
			if let val = js["concept"] as? [FHIRJSON] {
				self.concept = ValueSetDefineConcept.from(val, owner: self) as? [ValueSetDefineConcept]
			}
			if let val = js["system"] as? String {
				self.system = NSURL(string: val)
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let caseSensitive = self.caseSensitive {
			json["caseSensitive"] = caseSensitive.asJSON()
		}
		if let concept = self.concept {
			json["concept"] = ValueSetDefineConcept.asJSONArray(concept)
		}
		if let system = self.system {
			json["system"] = system.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  Concepts in the code system.
 */
public class ValueSetDefineConcept: FHIRElement
{
	override public class var resourceName: String {
		get { return "ValueSetDefineConcept" }
	}
	
	/// If this code is not for use as a real concept
	public var abstract: Bool?
	
	/// Code that identifies concept
	public var code: String?
	
	/// Concepts in the code system
	public var concept: [ValueSetDefineConcept]?
	
	/// Formal Definition
	public var definition: String?
	
	/// Additional representations for the concept
	public var designation: [ValueSetDefineConceptDesignation]?
	
	/// Text to Display to the user
	public var display: String?
	
	public convenience init(code: String?) {
		self.init(json: nil)
		if nil != code {
			self.code = code
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["abstract"] as? Bool {
				self.abstract = val
			}
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["concept"] as? [FHIRJSON] {
				self.concept = ValueSetDefineConcept.from(val, owner: self) as? [ValueSetDefineConcept]
			}
			if let val = js["definition"] as? String {
				self.definition = val
			}
			if let val = js["designation"] as? [FHIRJSON] {
				self.designation = ValueSetDefineConceptDesignation.from(val, owner: self) as? [ValueSetDefineConceptDesignation]
			}
			if let val = js["display"] as? String {
				self.display = val
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let abstract = self.abstract {
			json["abstract"] = abstract.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let concept = self.concept {
			json["concept"] = ValueSetDefineConcept.asJSONArray(concept)
		}
		if let definition = self.definition {
			json["definition"] = definition.asJSON()
		}
		if let designation = self.designation {
			json["designation"] = ValueSetDefineConceptDesignation.asJSONArray(designation)
		}
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		
		return json
	}
}


/**
 *  Additional representations for the concept.
 *
 *  Additional representations for the concept - other languages, aliases, specialised purposes, used for particular
 *  purposes, etc.
 */
public class ValueSetDefineConceptDesignation: FHIRElement
{
	override public class var resourceName: String {
		get { return "ValueSetDefineConceptDesignation" }
	}
	
	/// Language of the designation
	public var language: String?
	
	/// Details how this designation would be used
	public var use: Coding?
	
	/// The text value for this designation
	public var value: String?
	
	public convenience init(value: String?) {
		self.init(json: nil)
		if nil != value {
			self.value = value
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["language"] as? String {
				self.language = val
			}
			if let val = js["use"] as? FHIRJSON {
				self.use = Coding(json: val, owner: self)
			}
			if let val = js["value"] as? String {
				self.value = val
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let language = self.language {
			json["language"] = language.asJSON()
		}
		if let use = self.use {
			json["use"] = use.asJSON()
		}
		if let value = self.value {
			json["value"] = value.asJSON()
		}
		
		return json
	}
}


/**
 *  Used when the value set is "expanded".
 *
 *  A value set can also be "expanded", where the value set is turned into a simple collection of enumerated codes. This
 *  element holds the expansion, if it has been performed.
 */
public class ValueSetExpansion: FHIRElement
{
	override public class var resourceName: String {
		get { return "ValueSetExpansion" }
	}
	
	/// Codes in the value set
	public var contains: [ValueSetExpansionContains]?
	
	/// Uniquely identifies this expansion
	public var identifier: NSURL?
	
	/// Parameter that controlled the expansion process
	public var parameter: [ValueSetExpansionParameter]?
	
	/// Time valueset expansion happened
	public var timestamp: DateTime?
	
	public convenience init(identifier: NSURL?, timestamp: DateTime?) {
		self.init(json: nil)
		if nil != identifier {
			self.identifier = identifier
		}
		if nil != timestamp {
			self.timestamp = timestamp
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["contains"] as? [FHIRJSON] {
				self.contains = ValueSetExpansionContains.from(val, owner: self) as? [ValueSetExpansionContains]
			}
			if let val = js["identifier"] as? String {
				self.identifier = NSURL(string: val)
			}
			if let val = js["parameter"] as? [FHIRJSON] {
				self.parameter = ValueSetExpansionParameter.from(val, owner: self) as? [ValueSetExpansionParameter]
			}
			if let val = js["timestamp"] as? String {
				self.timestamp = DateTime(string: val)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let contains = self.contains {
			json["contains"] = ValueSetExpansionContains.asJSONArray(contains)
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let parameter = self.parameter {
			json["parameter"] = ValueSetExpansionParameter.asJSONArray(parameter)
		}
		if let timestamp = self.timestamp {
			json["timestamp"] = timestamp.asJSON()
		}
		
		return json
	}
}


/**
 *  Codes in the value set.
 *
 *  The codes that are contained in the value set expansion.
 */
public class ValueSetExpansionContains: FHIRElement
{
	override public class var resourceName: String {
		get { return "ValueSetExpansionContains" }
	}
	
	/// If user cannot select this entry
	public var abstract: Bool?
	
	/// Code - if blank, this is not a choosable code
	public var code: String?
	
	/// Codes in the value set
	public var contains: [ValueSetExpansionContains]?
	
	/// User display for the concept
	public var display: String?
	
	/// System value for the code
	public var system: NSURL?
	
	/// Version in which this code / display is defined
	public var version: String?
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["abstract"] as? Bool {
				self.abstract = val
			}
			if let val = js["code"] as? String {
				self.code = val
			}
			if let val = js["contains"] as? [FHIRJSON] {
				self.contains = ValueSetExpansionContains.from(val, owner: self) as? [ValueSetExpansionContains]
			}
			if let val = js["display"] as? String {
				self.display = val
			}
			if let val = js["system"] as? String {
				self.system = NSURL(string: val)
			}
			if let val = js["version"] as? String {
				self.version = val
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let abstract = self.abstract {
			json["abstract"] = abstract.asJSON()
		}
		if let code = self.code {
			json["code"] = code.asJSON()
		}
		if let contains = self.contains {
			json["contains"] = ValueSetExpansionContains.asJSONArray(contains)
		}
		if let display = self.display {
			json["display"] = display.asJSON()
		}
		if let system = self.system {
			json["system"] = system.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  Parameter that controlled the expansion process.
 *
 *  A Parameter that controlled the expansion process. These paameters may be used by users of expanded value sets to
 *  check whether the expansion is suitable for a particular purpose, or to pick the correct expansion.
 */
public class ValueSetExpansionParameter: FHIRElement
{
	override public class var resourceName: String {
		get { return "ValueSetExpansionParameter" }
	}
	
	/// Name as assigned by server
	public var name: String?
	
	/// Value of the parameter
	public var valueBoolean: Bool?
	
	/// Value of the parameter
	public var valueCode: String?
	
	/// Value of the parameter
	public var valueDecimal: NSDecimalNumber?
	
	/// Value of the parameter
	public var valueInteger: Int?
	
	/// Value of the parameter
	public var valueString: String?
	
	/// Value of the parameter
	public var valueUri: NSURL?
	
	public convenience init(name: String?) {
		self.init(json: nil)
		if nil != name {
			self.name = name
		}
	}
	
	public required init(json: FHIRJSON?) {
		super.init(json: json)
		if let js = json {
			if let val = js["name"] as? String {
				self.name = val
			}
			if let val = js["valueBoolean"] as? Bool {
				self.valueBoolean = val
			}
			if let val = js["valueCode"] as? String {
				self.valueCode = val
			}
			if let val = js["valueDecimal"] as? NSNumber {
				self.valueDecimal = NSDecimalNumber(json: val)
			}
			if let val = js["valueInteger"] as? Int {
				self.valueInteger = val
			}
			if let val = js["valueString"] as? String {
				self.valueString = val
			}
			if let val = js["valueUri"] as? String {
				self.valueUri = NSURL(string: val)
			}
		}
	}
	
	override public func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let valueBoolean = self.valueBoolean {
			json["valueBoolean"] = valueBoolean.asJSON()
		}
		if let valueCode = self.valueCode {
			json["valueCode"] = valueCode.asJSON()
		}
		if let valueDecimal = self.valueDecimal {
			json["valueDecimal"] = valueDecimal.asJSON()
		}
		if let valueInteger = self.valueInteger {
			json["valueInteger"] = valueInteger.asJSON()
		}
		if let valueString = self.valueString {
			json["valueString"] = valueString.asJSON()
		}
		if let valueUri = self.valueUri {
			json["valueUri"] = valueUri.asJSON()
		}
		
		return json
	}
}

