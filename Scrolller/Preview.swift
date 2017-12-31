//
//  Preview.swift
//  Scrolller
//
//  Created by Andrew Tsukuda on 12/31/17.
//  Copyright © 2017 Andrew Tsukuda. All rights reserved.
//

import Foundation
struct Preview : Decodable {
	let images : [Images]?
	let enabled : Bool?

	enum CodingKeys: String, CodingKey {

		case images = "images"
		case enabled = "enabled"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		images = try values.decodeIfPresent([Images].self, forKey: .images)
		enabled = try values.decodeIfPresent(Bool.self, forKey: .enabled)
	}

}
