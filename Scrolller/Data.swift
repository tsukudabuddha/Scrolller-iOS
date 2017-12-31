//
//  Data.swift
//  Scrolller
//
//  Created by Andrew Tsukuda on 12/31/17.
//  Copyright © 2017 Andrew Tsukuda. All rights reserved.
//

import Foundation
struct Data : Decodable {
	let modhash : String?
	let whitelist_status : String?
	let children : [Children]?
	let after : String?
	let before : String?

	enum CodingKeys: String, CodingKey {

		case modhash = "modhash"
		case whitelist_status = "whitelist_status"
		case children = "children"
		case after = "after"
		case before = "before"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		modhash = try values.decodeIfPresent(String.self, forKey: .modhash)
		whitelist_status = try values.decodeIfPresent(String.self, forKey: .whitelist_status)
		children = try values.decodeIfPresent([Children].self, forKey: .children)
		after = try values.decodeIfPresent(String.self, forKey: .after)
		before = try values.decodeIfPresent(String.self, forKey: .before)
	}

}
