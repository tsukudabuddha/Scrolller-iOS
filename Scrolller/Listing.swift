//
//  Listing.swift
//  Scrolller
//
//  Created by Andrew Tsukuda on 12/31/17.
//  Copyright © 2017 Andrew Tsukuda. All rights reserved.
//

import Foundation
struct Listing : Decodable {
	let kind : String?
	let data : Data?

	enum CodingKeys: String, CodingKey {

		case kind = "kind"
		case data
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		kind = try values.decodeIfPresent(String.self, forKey: .kind)
		data = try Data(from: decoder)
	}

}
