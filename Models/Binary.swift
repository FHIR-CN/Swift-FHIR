//
//  Binary.swift
//  SMART-on-FHIR
//
//  Generated from FHIR 0.4.0.3898 (binary.profile.json) on 2014-12-20.
//  2014, SMART Platforms.
//

import Foundation


/**
 *  Pure binary content defined by sime other format than FHIR.
 *
 *  A binary resource can contain any content, whether text, image, pdf, zip archive, etc.
 */
public class Binary: FHIRResource
{
	override public class var resourceName: String {
		get { return "Binary" }
	}
	
	/// The actual content
	public var content: Base64Binary?
	
	/// MimeType of the binary content
	public var contentType: String?
	
	public convenience init(content: Base64Binary?, contentType: String?) {
		self.init(json: nil)
		if nil != content {
			self.content = content
		}
		if nil != contentType {
			self.contentType = contentType
		}
	}	

	public required init(json: NSDictionary?) {
		super.init(json: json)
		if let js = json {
			if let val = js["content"] as? String {
				self.content = Base64Binary(json: val)
			}
			if let val = js["contentType"] as? String {
				self.contentType = val
			}
		}
	}
}

