//
//  Images.swift
//  Scrolller
//
//  Created by Andrew Tsukuda on 12/31/17.
//  Copyright © 2017 Andrew Tsukuda. All rights reserved.
//

import Foundation
struct Images : Decodable {
	let source : Source?
	let resolutions : [Resolutions]?
	let id : String?

	enum CodingKeys: String, CodingKey {

		case source
		case resolutions = "resolutions"
		case variants
		case id = "id"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		source = try Source(from: decoder)
		resolutions = try values.decodeIfPresent([Resolutions].self, forKey: .resolutions)
		id = try values.decodeIfPresent(String.self, forKey: .id)
	}

}
