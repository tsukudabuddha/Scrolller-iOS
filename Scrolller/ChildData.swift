//
//  ChildData.swift
//  Scrolller
//
//  Created by Andrew Tsukuda on 12/31/17.
//  Copyright © 2017 Andrew Tsukuda. All rights reserved.
//

import Foundation

struct ChildData : Decodable {
    let domain : String?
    let approved_at_utc : String?
    let mod_reason_by : String?
    let banned_by : String?
    let subreddit_id : String?
    let thumbnail_width : Int?
    let subreddit : String?
    let selftext_html : String?
    let selftext : String?
    let likes : String?
    let suggested_sort : String?
    let mod_note : String?
    let user_reports : [String]?
    let secure_media : String?
    let is_reddit_media_domain : Bool?
    let link_flair_text : String?
    let id : String?
    let banned_at_utc : String?
    let mod_reason_title : String?
    let view_count : String?
    let archived : Bool?
    let clicked : Bool?
    let report_reasons : String?
    let author : String?
    let num_crossposts : Int?
    let saved : Bool?
    let can_mod_post : Bool?
    let is_crosspostable : Bool?
    let pinned : Bool?
    let score : Int?
    let approved_by : String?
    let over_18 : Bool?
    let removal_reason : String?
    let hidden : Bool?
    let preview : Preview?
    let num_comments : Int?
    let thumbnail : String?
    let hide_score : Bool?
    let edited : Bool?
    let link_flair_css_class : String?
    let author_flair_css_class : String?
    let contest_mode : Bool?
    let gilded : Int?
    let locked : Bool?
    let downs : Int?
    let brand_safe : Bool?
    let post_hint : String?
    let can_gild : Bool?
    let thumbnail_height : Int?
    let parent_whitelist_status : String?
    let name : String?
    let spoiler : Bool?
    let permalink : String?
    let subreddit_type : String?
    let whitelist_status : String?
    let stickied : Bool?
    let created : Int?
    let url : String?
    let author_flair_text : String?
    let quarantine : Bool?
    let title : String?
    let created_utc : Int?
    let subreddit_name_prefixed : String?
    let distinguished : String?
    let media : String?
    let upvote_ratio : Int?
    let mod_reports : [String]?
    let is_self : Bool?
    let visited : Bool?
    let num_reports : String?
    let is_video : Bool?
    let ups : Int?
    
    enum CodingKeys: String, CodingKey {
        
        case domain = "domain"
        case approved_at_utc = "approved_at_utc"
        case mod_reason_by = "mod_reason_by"
        case banned_by = "banned_by"
        case subreddit_id = "subreddit_id"
        case thumbnail_width = "thumbnail_width"
        case subreddit = "subreddit"
        case selftext_html = "selftext_html"
        case selftext = "selftext"
        case likes = "likes"
        case suggested_sort = "suggested_sort"
        case mod_note = "mod_note"
        case user_reports = "user_reports"
        case secure_media = "secure_media"
        case is_reddit_media_domain = "is_reddit_media_domain"
        case link_flair_text = "link_flair_text"
        case id = "id"
        case banned_at_utc = "banned_at_utc"
        case mod_reason_title = "mod_reason_title"
        case view_count = "view_count"
        case archived = "archived"
        case clicked = "clicked"
        case report_reasons = "report_reasons"
        case author = "author"
        case num_crossposts = "num_crossposts"
        case saved = "saved"
        case can_mod_post = "can_mod_post"
        case is_crosspostable = "is_crosspostable"
        case pinned = "pinned"
        case score = "score"
        case approved_by = "approved_by"
        case over_18 = "over_18"
        case removal_reason = "removal_reason"
        case hidden = "hidden"
        case preview
        case num_comments = "num_comments"
        case thumbnail = "thumbnail"
        case hide_score = "hide_score"
        case edited = "edited"
        case link_flair_css_class = "link_flair_css_class"
        case author_flair_css_class = "author_flair_css_class"
        case contest_mode = "contest_mode"
        case gilded = "gilded"
        case locked = "locked"
        case downs = "downs"
        case brand_safe = "brand_safe"
        case secure_media_embed
        case media_embed
        case post_hint = "post_hint"
        case can_gild = "can_gild"
        case thumbnail_height = "thumbnail_height"
        case parent_whitelist_status = "parent_whitelist_status"
        case name = "name"
        case spoiler = "spoiler"
        case permalink = "permalink"
        case subreddit_type = "subreddit_type"
        case whitelist_status = "whitelist_status"
        case stickied = "stickied"
        case created = "created"
        case url = "url"
        case author_flair_text = "author_flair_text"
        case quarantine = "quarantine"
        case title = "title"
        case created_utc = "created_utc"
        case subreddit_name_prefixed = "subreddit_name_prefixed"
        case distinguished = "distinguished"
        case media = "media"
        case upvote_ratio = "upvote_ratio"
        case mod_reports = "mod_reports"
        case is_self = "is_self"
        case visited = "visited"
        case num_reports = "num_reports"
        case is_video = "is_video"
        case ups = "ups"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        domain = try values.decodeIfPresent(String.self, forKey: .domain)
        approved_at_utc = try values.decodeIfPresent(String.self, forKey: .approved_at_utc)
        mod_reason_by = try values.decodeIfPresent(String.self, forKey: .mod_reason_by)
        banned_by = try values.decodeIfPresent(String.self, forKey: .banned_by)
        subreddit_id = try values.decodeIfPresent(String.self, forKey: .subreddit_id)
        thumbnail_width = try values.decodeIfPresent(Int.self, forKey: .thumbnail_width)
        subreddit = try values.decodeIfPresent(String.self, forKey: .subreddit)
        selftext_html = try values.decodeIfPresent(String.self, forKey: .selftext_html)
        selftext = try values.decodeIfPresent(String.self, forKey: .selftext)
        likes = try values.decodeIfPresent(String.self, forKey: .likes)
        suggested_sort = try values.decodeIfPresent(String.self, forKey: .suggested_sort)
        mod_note = try values.decodeIfPresent(String.self, forKey: .mod_note)
        user_reports = try values.decodeIfPresent([String].self, forKey: .user_reports)
        secure_media = try values.decodeIfPresent(String.self, forKey: .secure_media)
        is_reddit_media_domain = try values.decodeIfPresent(Bool.self, forKey: .is_reddit_media_domain)
        link_flair_text = try values.decodeIfPresent(String.self, forKey: .link_flair_text)
        id = try values.decodeIfPresent(String.self, forKey: .id)
        banned_at_utc = try values.decodeIfPresent(String.self, forKey: .banned_at_utc)
        mod_reason_title = try values.decodeIfPresent(String.self, forKey: .mod_reason_title)
        view_count = try values.decodeIfPresent(String.self, forKey: .view_count)
        archived = try values.decodeIfPresent(Bool.self, forKey: .archived)
        clicked = try values.decodeIfPresent(Bool.self, forKey: .clicked)
        report_reasons = try values.decodeIfPresent(String.self, forKey: .report_reasons)
        author = try values.decodeIfPresent(String.self, forKey: .author)
        num_crossposts = try values.decodeIfPresent(Int.self, forKey: .num_crossposts)
        saved = try values.decodeIfPresent(Bool.self, forKey: .saved)
        can_mod_post = try values.decodeIfPresent(Bool.self, forKey: .can_mod_post)
        is_crosspostable = try values.decodeIfPresent(Bool.self, forKey: .is_crosspostable)
        pinned = try values.decodeIfPresent(Bool.self, forKey: .pinned)
        score = try values.decodeIfPresent(Int.self, forKey: .score)
        approved_by = try values.decodeIfPresent(String.self, forKey: .approved_by)
        over_18 = try values.decodeIfPresent(Bool.self, forKey: .over_18)
        removal_reason = try values.decodeIfPresent(String.self, forKey: .removal_reason)
        hidden = try values.decodeIfPresent(Bool.self, forKey: .hidden)
        preview = try Preview(from: decoder)
        num_comments = try values.decodeIfPresent(Int.self, forKey: .num_comments)
        thumbnail = try values.decodeIfPresent(String.self, forKey: .thumbnail)
        hide_score = try values.decodeIfPresent(Bool.self, forKey: .hide_score)
        edited = try values.decodeIfPresent(Bool.self, forKey: .edited)
        link_flair_css_class = try values.decodeIfPresent(String.self, forKey: .link_flair_css_class)
        author_flair_css_class = try values.decodeIfPresent(String.self, forKey: .author_flair_css_class)
        contest_mode = try values.decodeIfPresent(Bool.self, forKey: .contest_mode)
        gilded = try values.decodeIfPresent(Int.self, forKey: .gilded)
        locked = try values.decodeIfPresent(Bool.self, forKey: .locked)
        downs = try values.decodeIfPresent(Int.self, forKey: .downs)
        brand_safe = try values.decodeIfPresent(Bool.self, forKey: .brand_safe)
        post_hint = try values.decodeIfPresent(String.self, forKey: .post_hint)
        can_gild = try values.decodeIfPresent(Bool.self, forKey: .can_gild)
        thumbnail_height = try values.decodeIfPresent(Int.self, forKey: .thumbnail_height)
        parent_whitelist_status = try values.decodeIfPresent(String.self, forKey: .parent_whitelist_status)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        spoiler = try values.decodeIfPresent(Bool.self, forKey: .spoiler)
        permalink = try values.decodeIfPresent(String.self, forKey: .permalink)
        subreddit_type = try values.decodeIfPresent(String.self, forKey: .subreddit_type)
        whitelist_status = try values.decodeIfPresent(String.self, forKey: .whitelist_status)
        stickied = try values.decodeIfPresent(Bool.self, forKey: .stickied)
        created = try values.decodeIfPresent(Int.self, forKey: .created)
        url = try values.decodeIfPresent(String.self, forKey: .url)
        author_flair_text = try values.decodeIfPresent(String.self, forKey: .author_flair_text)
        quarantine = try values.decodeIfPresent(Bool.self, forKey: .quarantine)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        created_utc = try values.decodeIfPresent(Int.self, forKey: .created_utc)
        subreddit_name_prefixed = try values.decodeIfPresent(String.self, forKey: .subreddit_name_prefixed)
        distinguished = try values.decodeIfPresent(String.self, forKey: .distinguished)
        media = try values.decodeIfPresent(String.self, forKey: .media)
        upvote_ratio = try values.decodeIfPresent(Int.self, forKey: .upvote_ratio)
        mod_reports = try values.decodeIfPresent([String].self, forKey: .mod_reports)
        is_self = try values.decodeIfPresent(Bool.self, forKey: .is_self)
        visited = try values.decodeIfPresent(Bool.self, forKey: .visited)
        num_reports = try values.decodeIfPresent(String.self, forKey: .num_reports)
        is_video = try values.decodeIfPresent(Bool.self, forKey: .is_video)
        ups = try values.decodeIfPresent(Int.self, forKey: .ups)
    }
    
}

