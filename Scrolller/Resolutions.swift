//
//  Resolutions.swift
//  Scrolller
//
//  Created by Andrew Tsukuda on 12/31/17.
//  Copyright © 2017 Andrew Tsukuda. All rights reserved.
//

import Foundation
struct Resolutions : Codable {
	let url : String?
	let width : Int?
	let height : Int?

	enum CodingKeys: String, CodingKey {

		case url = "url"
		case width = "width"
		case height = "height"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		url = try values.decodeIfPresent(String.self, forKey: .url)
		width = try values.decodeIfPresent(Int.self, forKey: .width)
		height = try values.decodeIfPresent(Int.self, forKey: .height)
	}

}
