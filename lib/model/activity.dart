// // To parse this JSON data, do
// //
// //     final planModel = planModelFromJson(jsonString);

// import 'dart:convert';

// class PlanModel {
//     PlanModel({
//         this.data,
//         this.filters,
//         this.filtersV2,
//         this.paging,
//     });

//     List<Datum?>? data;
//     Filters? filters;
//     FiltersV2? filtersV2;
//     Paging? paging;

//     factory PlanModel.fromRawJson(String str) => PlanModel.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory PlanModel.fromJson(Map<String, dynamic> json) => PlanModel(
//         data: json["data"] == null ? [] : List<Datum?>.from(json["data"]!.map((x) => Datum.fromJson(x))),
//         filters: Filters.fromJson(json["filters"]),
//         filtersV2: FiltersV2.fromJson(json["filters_v2"]),
//         paging: Paging.fromJson(json["paging"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x!.toJson())),
//         "filters": filters!.toJson(),
//         "filters_v2": filtersV2!.toJson(),
//         "paging": paging!.toJson(),
//     };
// }

// class Datum {
//     Datum({
//         this.locationId,
//         this.name,
//         this.latitude,
//         this.longitude,
//         this.numReviews,
//         this.timezone,
//         this.locationString,
//         this.photo,
//         this.awards,
//         this.locationSubtype,
//         this.doubleclickZone,
//         this.preferredMapEngine,
//         this.rawRanking,
//         this.rankingGeo,
//         this.rankingGeoId,
//         this.rankingPosition,
//         this.rankingDenominator,
//         this.rankingCategory,
//         this.rankingSubcategory,
//         this.subcategoryRanking,
//         this.ranking,
//         this.distance,
//         this.distanceString,
//         this.bearing,
//         this.rating,
//         this.isClosed,
//         this.openNowText,
//         this.isLongClosed,
//         this.description,
//         this.webUrl,
//         this.writeReview,
//         this.ancestors,
//         this.category,
//         this.subcategory,
//         this.parentDisplayName,
//         this.isJfyEnabled,
//         this.nearestMetroStation,
//         this.phone,
//         this.website,
//         this.email,
//         this.addressObj,
//         this.address,
//         this.hours,
//         this.isCandidateForContactInfoSuppression,
//         this.subtype,
//         this.booking,
//         this.offerGroup,
//         this.adPosition,
//         this.adSize,
//         this.detail,
//         this.pageType,
//         this.mobPtype,
//         this.rollupCategory,
//         this.rollupContainsBookable,
//         this.rollupCount,
//     });

//     String? locationId;
//     String? name;
//     String? latitude;
//     String? longitude;
//     String? numReviews;
//     Timezone? timezone;
//     LocationString? locationString;
//     Photo? photo;
//     List<Award?>? awards;
//     LocationSubtype? locationSubtype;
//     DoubleclickZone? doubleclickZone;
//     PreferredMapEngine? preferredMapEngine;
//     String? rawRanking;
//     LocationString? rankingGeo;
//     String? rankingGeoId;
//     String? rankingPosition;
//     String? rankingDenominator;
//     RankingCategory? rankingCategory;
//     String? rankingSubcategory;
//     String? subcategoryRanking;
//     String? ranking;
//     dynamic distance;
//     dynamic distanceString;
//     dynamic bearing;
//     String? rating;
//     bool? isClosed;
//     String? openNowText;
//     bool? isLongClosed;
//     String? description;
//     String? webUrl;
//     String? writeReview;
//     List<Ancestor?>? ancestors;
//     Category? category;
//     List<Category?>? subcategory;
//     LocationString? parentDisplayName;
//     bool? isJfyEnabled;
//     List<dynamic>? nearestMetroStation;
//     String? phone;
//     String? website;
//     String? email;
//     AddressObj? addressObj;
//     String? address;
//     Hours? hours;
//     bool? isCandidateForContactInfoSuppression;
//     List<Category?>? subtype;
//     Booking? booking;
//     OfferGroup? offerGroup;
//     String? adPosition;
//     String? adSize;
//     String? detail;
//     String? pageType;
//     String? mobPtype;
//     Category? rollupCategory;
//     bool? rollupContainsBookable;
//     int? rollupCount;

//     factory Datum.fromRawJson(String str) => Datum.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory Datum.fromJson(Map<String, dynamic> json) => Datum(
//         locationId: json["location_id"],
//         name: json["name"],
//         latitude: json["latitude"],
//         longitude: json["longitude"],
//         numReviews: json["num_reviews"],
//         timezone: json["timezone"],
//         locationString: json["location_string"],
//         photo: json["photo"],
//         awards: json["awards"] == null ? [] : json["awards"] == null ? [] : List<Award?>.from(json["awards"]!.map((x) => Award.fromJson(x))),
//         locationSubtype: json["location_subtype"],
//         doubleclickZone: doubleclickZoneValues!.map[json["doubleclick_zone"]],
//         preferredMapEngine: json["preferred_map_engine"],
//         rawRanking: json["raw_ranking"],
//         rankingGeo: json["ranking_geo"],
//         rankingGeoId: json["ranking_geo_id"],
//         rankingPosition: json["ranking_position"],
//         rankingDenominator: json["ranking_denominator"],
//         rankingCategory: json["ranking_category"],
//         rankingSubcategory: json["ranking_subcategory"],
//         subcategoryRanking: json["subcategory_ranking"],
//         ranking: json["ranking"],
//         distance: json["distance"],
//         distanceString: json["distance_string"],
//         bearing: json["bearing"],
//         rating: json["rating"],
//         isClosed: json["is_closed"],
//         openNowText: json["open_now_text"],
//         isLongClosed: json["is_long_closed"],
//         description: json["description"],
//         webUrl: json["web_url"],
//         writeReview: json["write_review"],
//         ancestors: json["ancestors"] == null ? [] : List<Ancestor?>.from(json["ancestors"]!.map((x) => Ancestor.fromJson(x))),
//         category: json["category"],
//         subcategory: json["subcategory"] == null ? [] : json["subcategory"] == null ? [] : List<Category?>.from(json["subcategory"]!.map((x) => Category.fromJson(x))),
//         parentDisplayName: json["parent_display_name"],
//         isJfyEnabled: json["is_jfy_enabled"],
//         nearestMetroStation: json["nearest_metro_station"] == null ? [] : json["nearest_metro_station"] == null ? [] : List<dynamic>.from(json["nearest_metro_station"]!.map((x) => x)),
//         phone: json["phone"],
//         website: json["website"],
//         email: json["email"],
//         addressObj: json["address_obj"],
//         address: json["address"],
//         hours: json["hours"],
//         isCandidateForContactInfoSuppression: json["is_candidate_for_contact_info_suppression"],
//         subtype: json["subtype"] == null ? [] : json["subtype"] == null ? [] : List<Category?>.from(json["subtype"]!.map((x) => Category.fromJson(x))),
//         booking: json["booking"],
//         offerGroup: json["offer_group"],
//         adPosition: json["ad_position"],
//         adSize: json["ad_size"],
//         detail: json["detail"],
//         pageType: json["page_type"],
//         mobPtype: json["mob_ptype"],
//         rollupCategory: json["rollup_category"],
//         rollupContainsBookable: json["rollup_contains_bookable"],
//         rollupCount: json["rollup_count"],
//     );

//     Map<String, dynamic> toJson() => {
//         "location_id": locationId,
//         "name": name,
//         "latitude": latitude,
//         "longitude": longitude,
//         "num_reviews": numReviews,
//         "timezone": timezone,
//         "location_string": locationString,
//         "photo": photo,
//         "awards": awards == null ? [] : awards == null ? [] : List<dynamic>.from(awards!.map((x) => x!.toJson())),
//         "location_subtype": locationSubtype,
//         "doubleclick_zone": doubleclickZoneValues.reverse![doubleclickZone],
//         "preferred_map_engine": preferredMapEngine,
//         "raw_ranking": rawRanking,
//         "ranking_geo": rankingGeo,
//         "ranking_geo_id": rankingGeoId,
//         "ranking_position": rankingPosition,
//         "ranking_denominator": rankingDenominator,
//         "ranking_category": rankingCategory,
//         "ranking_subcategory": rankingSubcategory,
//         "subcategory_ranking": subcategoryRanking,
//         "ranking": ranking,
//         "distance": distance,
//         "distance_string": distanceString,
//         "bearing": bearing,
//         "rating": rating,
//         "is_closed": isClosed,
//         "open_now_text": openNowText,
//         "is_long_closed": isLongClosed,
//         "description": description,
//         "web_url": webUrl,
//         "write_review": writeReview,
//         "ancestors": ancestors == null ? [] : List<dynamic>.from(ancestors!.map((x) => x!.toJson())),
//         "category": category,
//         "subcategory": subcategory == null ? [] : subcategory == null ? [] : List<dynamic>.from(subcategory!.map((x) => x!.toJson())),
//         "parent_display_name": parentDisplayName,
//         "is_jfy_enabled": isJfyEnabled,
//         "nearest_metro_station": nearestMetroStation == null ? [] : nearestMetroStation == null ? [] : List<dynamic>.from(nearestMetroStation!.map((x) => x)),
//         "phone": phone,
//         "website": website,
//         "email": email,
//         "address_obj": addressObj,
//         "address": address,
//         "hours": hours,
//         "is_candidate_for_contact_info_suppression": isCandidateForContactInfoSuppression,
//         "subtype": subtype == null ? [] : subtype == null ? [] : List<dynamic>.from(subtype!.map((x) => x!.toJson())),
//         "booking": booking,
//         "offer_group": offerGroup,
//         "ad_position": adPosition,
//         "ad_size": adSize,
//         "detail": detail,
//         "page_type": pageType,
//         "mob_ptype": mobPtype,
//         "rollup_category": rollupCategory,
//         "rollup_contains_bookable": rollupContainsBookable,
//         "rollup_count": rollupCount,
//     };
// }

// class AddressObj {
//     AddressObj({
//         this.street1,
//         this.street2,
//         this.city,
//         this.state,
//         this.country,
//         this.postalcode,
//     });

//     String? street1;
//     String? street2;
//     LocationString? city;
//     dynamic state;
//     dynamic country;
//     String? postalcode;

//     factory AddressObj.fromRawJson(String str) => AddressObj.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory AddressObj.fromJson(Map<String, dynamic> json) => AddressObj(
//         street1: json["street1"],
//         street2: json["street2"],
//         city: locationStringValues!.map[json["city"]],
//         state: json["state"],
//         country: json["country"],
//         postalcode: json["postalcode"],
//     );

//     Map<String, dynamic> toJson() => {
//         "street1": street1,
//         "street2": street2,
//         "city": locationStringValues.reverse![city],
//         "state": state,
//         "country": country,
//         "postalcode": postalcode,
//     };
// }

// enum LocationString { MALE, NORTH_MALE_ATOLL, KAAFU_ATOLL, MALDIVES }

// final locationStringValues = EnumValues({
//     "Kaafu Atoll": LocationString.KAAFU_ATOLL,
//     "Maldives": LocationString.MALDIVES,
//     "Male": LocationString.MALE,
//     "North Male Atoll": LocationString.NORTH_MALE_ATOLL
// });

// class Ancestor {
//     Ancestor({
//         this.subcategory,
//         this.name,
//         this.abbrv,
//         this.locationId,
//     });

//     List<Category?>? subcategory;
//     LocationString? name;
//     dynamic abbrv;
//     String? locationId;

//     factory Ancestor.fromRawJson(String str) => Ancestor.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory Ancestor.fromJson(Map<String, dynamic> json) => Ancestor(
//         subcategory: json["subcategory"] == null ? [] : List<Category?>.from(json["subcategory"]!.map((x) => Category.fromJson(x))),
//         name: locationStringValues!.map[json["name"]],
//         abbrv: json["abbrv"],
//         locationId: json["location_id"],
//     );

//     Map<String, dynamic> toJson() => {
//         "subcategory": subcategory == null ? [] : List<dynamic>.from(subcategory!.map((x) => x!.toJson())),
//         "name": locationStringValues.reverse![name],
//         "abbrv": abbrv,
//         "location_id": locationId,
//     };
// }

// class Category {
//     Category({
//         this.key,
//         this.name,
//     });

//     String? key;
//     String? name;

//     factory Category.fromRawJson(String str) => Category.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory Category.fromJson(Map<String, dynamic> json) => Category(
//         key: json["key"],
//         name: json["name"],
//     );

//     Map<String, dynamic> toJson() => {
//         "key": key,
//         "name": name,
//     };
// }

// class Award {
//     Award({
//         this.awardType,
//         this.year,
//         this.images,
//         this.categories,
//         this.displayName,
//     });

//     AwardType? awardType;
//     String? year;
//     AwardImages? images;
//     List<dynamic>? categories;
//     String? displayName;

//     factory Award.fromRawJson(String str) => Award.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory Award.fromJson(Map<String, dynamic> json) => Award(
//         awardType: awardTypeValues!.map[json["award_type"]],
//         year: json["year"],
//         images: AwardImages.fromJson(json["images"]),
//         categories: json["categories"] == null ? [] : List<dynamic>.from(json["categories"]!.map((x) => x)),
//         displayName: json["display_name"],
//     );

//     Map<String, dynamic> toJson() => {
//         "award_type": awardTypeValues.reverse![awardType],
//         "year": year,
//         "images": images!.toJson(),
//         "categories": categories == null ? [] : List<dynamic>.from(categories!.map((x) => x)),
//         "display_name": displayName,
//     };
// }

// enum AwardType { CERTIFICATE_OF_EXCELLENCE }

// final awardTypeValues = EnumValues({
//     "CERTIFICATE_OF_EXCELLENCE": AwardType.CERTIFICATE_OF_EXCELLENCE
// });

// class AwardImages {
//     AwardImages({
//         this.small,
//         this.large,
//     });

//     String? small;
//     String? large;

//     factory AwardImages.fromRawJson(String str) => AwardImages.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory AwardImages.fromJson(Map<String, dynamic> json) => AwardImages(
//         small: json["small"],
//         large: json["large"],
//     );

//     Map<String, dynamic> toJson() => {
//         "small": small,
//         "large": large,
//     };
// }

// class Booking {
//     Booking({
//         this.provider,
//         this.url,
//     });

//     Provider? provider;
//     String? url;

//     factory Booking.fromRawJson(String str) => Booking.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory Booking.fromJson(Map<String, dynamic> json) => Booking(
//         provider: providerValues!.map[json["provider"]],
//         url: json["url"],
//     );

//     Map<String, dynamic> toJson() => {
//         "provider": providerValues.reverse![provider],
//         "url": url,
//     };
// }

// enum Provider { VIATOR }

// final providerValues = EnumValues({
//     "Viator": Provider.VIATOR
// });

// enum DoubleclickZone { AS_MALDIVES_KAAFU_ATOLL_NORTH_MALE_ATOLL_MALE }

// final doubleclickZoneValues = EnumValues({
//     "as.maldives.kaafu_atoll.north_male_atoll.male": DoubleclickZone.AS_MALDIVES_KAAFU_ATOLL_NORTH_MALE_ATOLL_MALE
// });

// class Hours {
//     Hours({
//         this.weekRanges,
//         this.timezone,
//     });

//     List<List<WeekRange?>?>? weekRanges;
//     Timezone? timezone;

//     factory Hours.fromRawJson(String str) => Hours.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory Hours.fromJson(Map<String, dynamic> json) => Hours(
//         weekRanges: json["week_ranges"] == null ? [] : List<List<WeekRange?>?>.from(json["week_ranges"]!.map((x) => x == null ? [] : List<WeekRange?>.from(x!.map((x) => WeekRange.fromJson(x))))),
//         timezone: timezoneValues!.map[json["timezone"]],
//     );

//     Map<String, dynamic> toJson() => {
//         "week_ranges": weekRanges == null ? [] : List<dynamic>.from(weekRanges!.map((x) => x == null ? [] : List<dynamic>.from(x!.map((x) => x!.toJson())))),
//         "timezone": timezoneValues.reverse![timezone],
//     };
// }

// enum Timezone { INDIAN_MALDIVES }

// final timezoneValues = EnumValues({
//     "Indian/Maldives": Timezone.INDIAN_MALDIVES
// });

// class WeekRange {
//     WeekRange({
//         this.openTime,
//         this.closeTime,
//     });

//     int? openTime;
//     int? closeTime;

//     factory WeekRange.fromRawJson(String str) => WeekRange.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory WeekRange.fromJson(Map<String, dynamic> json) => WeekRange(
//         openTime: json["open_time"],
//         closeTime: json["close_time"],
//     );

//     Map<String, dynamic> toJson() => {
//         "open_time": openTime,
//         "close_time": closeTime,
//     };
// }

// enum LocationSubtype { NONE }

// final locationSubtypeValues = EnumValues({
//     "none": LocationSubtype.NONE
// });

// class OfferGroup {
//     OfferGroup({
//         this.lowestPrice,
//         this.offerList,
//         this.hasSeeAllUrl,
//         this.isEligibleForApList,
//     });

//     String? lowestPrice;
//     List<OfferList?>? offerList;
//     bool? hasSeeAllUrl;
//     bool? isEligibleForApList;

//     factory OfferGroup.fromRawJson(String str) => OfferGroup.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory OfferGroup.fromJson(Map<String, dynamic> json) => OfferGroup(
//         lowestPrice: json["lowest_price"],
//         offerList: json["offer_list"] == null ? [] : json["offer_list"] == null ? [] : List<OfferList?>.from(json["offer_list"]!.map((x) => OfferList.fromJson(x))),
//         hasSeeAllUrl: json["has_see_all_url"],
//         isEligibleForApList: json["is_eligible_for_ap_list"],
//     );

//     Map<String, dynamic> toJson() => {
//         "lowest_price": lowestPrice,
//         "offer_list": offerList == null ? [] : offerList == null ? [] : List<dynamic>.from(offerList!.map((x) => x!.toJson())),
//         "has_see_all_url": hasSeeAllUrl,
//         "is_eligible_for_ap_list": isEligibleForApList,
//     };
// }

// class OfferList {
//     OfferList({
//         this.url,
//         this.price,
//         this.roundedUpPrice,
//         this.offerType,
//         this.title,
//         this.productCode,
//         this.partner,
//         this.imageUrl,
//         this.description,
//         this.primaryCategory,
//     });

//     String? url;
//     Price? price;
//     RoundedUpPrice? roundedUpPrice;
//     String? offerType;
//     Title? title;
//     ProductCode? productCode;
//     Provider? partner;
//     String? imageUrl;
//     dynamic description;
//     PrimaryCategory? primaryCategory;

//     factory OfferList.fromRawJson(String str) => OfferList.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory OfferList.fromJson(Map<String, dynamic> json) => OfferList(
//         url: json["url"],
//         price: priceValues!.map[json["price"]],
//         roundedUpPrice: roundedUpPriceValues!.map[json["rounded_up_price"]],
//         offerType: json["offer_type"],
//         title: titleValues!.map[json["title"]],
//         productCode: productCodeValues!.map[json["product_code"]],
//         partner: providerValues!.map[json["partner"]],
//         imageUrl: json["image_url"],
//         description: json["description"],
//         primaryCategory: primaryCategoryValues!.map[json["primary_category"]],
//     );

//     Map<String, dynamic> toJson() => {
//         "url": url,
//         "price": priceValues.reverse![price],
//         "rounded_up_price": roundedUpPriceValues.reverse![roundedUpPrice],
//         "offer_type": offerType,
//         "title": titleValues.reverse![title],
//         "product_code": productCodeValues.reverse![productCode],
//         "partner": providerValues.reverse![partner],
//         "image_url": imageUrl,
//         "description": description,
//         "primary_category": primaryCategoryValues.reverse![primaryCategory],
//     };
// }

// enum Price { THE_1800, THE_35898, THE_18462, THE_3360, THE_9500 }

// final priceValues = EnumValues({
//     "\u002418.00": Price.THE_1800,
//     "\u0024184.62": Price.THE_18462,
//     "\u002433.60": Price.THE_3360,
//     "\u0024358.98": Price.THE_35898,
//     "\u002495.00": Price.THE_9500
// });

// enum PrimaryCategory { LUXURY_TOURS, PHOTOGRAPHY_TOURS, THE_4_WD_ATV_OFF_ROAD_TOURS, CULTURAL_TOURS }

// final primaryCategoryValues = EnumValues({
//     "Cultural Tours": PrimaryCategory.CULTURAL_TOURS,
//     "Luxury Tours": PrimaryCategory.LUXURY_TOURS,
//     "Photography Tours": PrimaryCategory.PHOTOGRAPHY_TOURS,
//     "4WD, ATV & Off-Road Tours": PrimaryCategory.THE_4_WD_ATV_OFF_ROAD_TOURS
// });

// enum ProductCode { THE_190899_P1, THE_74623_P1, THE_190899_P15, THE_36070_P9, THE_9221_P8 }

// final productCodeValues = EnumValues({
//     "190899P1": ProductCode.THE_190899_P1,
//     "190899P15": ProductCode.THE_190899_P15,
//     "36070P9": ProductCode.THE_36070_P9,
//     "74623P1": ProductCode.THE_74623_P1,
//     "9221P8": ProductCode.THE_9221_P8
// });

// enum RoundedUpPrice { THE_18, THE_359, THE_185, THE_34, THE_95 }

// final roundedUpPriceValues = EnumValues({
//     "\u002418": RoundedUpPrice.THE_18,
//     "\u0024185": RoundedUpPrice.THE_185,
//     "\u002434": RoundedUpPrice.THE_34,
//     "\u0024359": RoundedUpPrice.THE_359,
//     "\u002495": RoundedUpPrice.THE_95
// });

// enum Title { MALE_CITY_WALKING_TOUR_MALDIVES, THE_1_HOUR_BEACH_PHOTO_SESSION_IN_HULHUMALE, PRIVATE_CAR_TOUR_MALE_CITY_MALDIVES, PRIVATE_HALF_DAY_LOCAL_EXPERIENCE_OF_MAL, FULL_DAY_MALE_WALKING_TOUR }

// final titleValues = EnumValues({
//     "Full Day Male' Walking Tour": Title.FULL_DAY_MALE_WALKING_TOUR,
//     "Male’ City Walking Tour - Maldives": Title.MALE_CITY_WALKING_TOUR_MALDIVES,
//     "Private Car tour - Male' City Maldives": Title.PRIVATE_CAR_TOUR_MALE_CITY_MALDIVES,
//     "Private Half-Day Local Experience of Malé": Title.PRIVATE_HALF_DAY_LOCAL_EXPERIENCE_OF_MAL,
//     "1 Hour Beach Photo Session in Hulhumale": Title.THE_1_HOUR_BEACH_PHOTO_SESSION_IN_HULHUMALE
// });

// class Photo {
//     Photo({
//         this.images,
//         this.isBlessed,
//         this.uploadedDate,
//         this.caption,
//         this.id,
//         this.helpfulVotes,
//         this.publishedDate,
//         this.user,
//     });

//     PhotoImages? images;
//     bool? isBlessed;
//     String? uploadedDate;
//     String? caption;
//     String? id;
//     String? helpfulVotes;
//     String? publishedDate;
//     User? user;

//     factory Photo.fromRawJson(String str) => Photo.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory Photo.fromJson(Map<String, dynamic> json) => Photo(
//         images: PhotoImages.fromJson(json["images"]),
//         isBlessed: json["is_blessed"],
//         uploadedDate: json["uploaded_date"],
//         caption: json["caption"],
//         id: json["id"],
//         helpfulVotes: json["helpful_votes"],
//         publishedDate: json["published_date"],
//         user: json["user"],
//     );

//     Map<String, dynamic> toJson() => {
//         "images": images!.toJson(),
//         "is_blessed": isBlessed,
//         "uploaded_date": uploadedDate,
//         "caption": caption,
//         "id": id,
//         "helpful_votes": helpfulVotes,
//         "published_date": publishedDate,
//         "user": user,
//     };
// }

// class PhotoImages {
//     PhotoImages({
//         this.small,
//         this.thumbnail,
//         this.original,
//         this.large,
//         this.medium,
//     });

//     Large? small;
//     Large? thumbnail;
//     Large? original;
//     Large? large;
//     Large? medium;

//     factory PhotoImages.fromRawJson(String str) => PhotoImages.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory PhotoImages.fromJson(Map<String, dynamic> json) => PhotoImages(
//         small: Large.fromJson(json["small"]),
//         thumbnail: Large.fromJson(json["thumbnail"]),
//         original: Large.fromJson(json["original"]),
//         large: Large.fromJson(json["large"]),
//         medium: Large.fromJson(json["medium"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "small": small!.toJson(),
//         "thumbnail": thumbnail!.toJson(),
//         "original": original!.toJson(),
//         "large": large!.toJson(),
//         "medium": medium!.toJson(),
//     };
// }

// class Large {
//     Large({
//         this.width,
//         this.url,
//         this.height,
//     });

//     String? width;
//     String? url;
//     String? height;

//     factory Large.fromRawJson(String str) => Large.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory Large.fromJson(Map<String, dynamic> json) => Large(
//         width: json["width"],
//         url: json["url"],
//         height: json["height"],
//     );

//     Map<String, dynamic> toJson() => {
//         "width": width,
//         "url": url,
//         "height": height,
//     };
// }

// class User {
//     User({
//         this.userId,
//         this.memberId,
//         this.type,
//     });

//     dynamic userId;
//     String? memberId;
//     Type? type;

//     factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory User.fromJson(Map<String, dynamic> json) => User(
//         userId: json["user_id"],
//         memberId: json["member_id"],
//         type: typeValues!.map[json["type"]],
//     );

//     Map<String, dynamic> toJson() => {
//         "user_id": userId,
//         "member_id": memberId,
//         "type": typeValues.reverse![type],
//     };
// }

// enum Type { USER }

// final typeValues = EnumValues({
//     "user": Type.USER
// });

// enum PreferredMapEngine { DEFAULT }

// final preferredMapEngineValues = EnumValues({
//     "default": PreferredMapEngine.DEFAULT
// });

// enum RankingCategory { ATTRACTION }

// final rankingCategoryValues = EnumValues({
//     "attraction": RankingCategory.ATTRACTION
// });

// class Filters {
//     Filters({
//         this.distance,
//         this.subtype,
//         this.minRating,
//         this.rating,
//         this.subcategory,
//         this.typeaheadTag,
//         this.excludeLocations,
//     });

//     Map<String, Distance?>? distance;
//     Map<String, Distance?>? subtype;
//     Map<String, Distance?>? minRating;
//     Rating? rating;
//     Map<String, Distance?>? subcategory;
//     Map<String, Distance?>? typeaheadTag;
//     ExcludeLocations? excludeLocations;

//     factory Filters.fromRawJson(String str) => Filters.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory Filters.fromJson(Map<String, dynamic> json) => Filters(
//         distance: Map.from(json["distance"]!).map((k, v) => MapEntry<String, Distance?>(k, Distance.fromJson(v))),
//         subtype: Map.from(json["subtype"]!).map((k, v) => MapEntry<String, Distance?>(k, Distance.fromJson(v))),
//         minRating: Map.from(json["min_rating"]!).map((k, v) => MapEntry<String, Distance?>(k, Distance.fromJson(v))),
//         rating: Rating.fromJson(json["rating"]),
//         subcategory: Map.from(json["subcategory"]!).map((k, v) => MapEntry<String, Distance?>(k, Distance.fromJson(v))),
//         typeaheadTag: Map.from(json["typeahead_tag"]!).map((k, v) => MapEntry<String, Distance?>(k, Distance.fromJson(v))),
//         excludeLocations: ExcludeLocations.fromJson(json["exclude_locations"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "distance": Map.from(distance!).map((k, v) => MapEntry<String, dynamic>(k, v!.toJson())),
//         "subtype": Map.from(subtype!).map((k, v) => MapEntry<String, dynamic>(k, v!.toJson())),
//         "min_rating": Map.from(minRating!).map((k, v) => MapEntry<String, dynamic>(k, v!.toJson())),
//         "rating": rating!.toJson(),
//         "subcategory": Map.from(subcategory!).map((k, v) => MapEntry<String, dynamic>(k, v!.toJson())),
//         "typeahead_tag": Map.from(typeaheadTag!).map((k, v) => MapEntry<String, dynamic>(k, v!.toJson())),
//         "exclude_locations": excludeLocations!.toJson(),
//     };
// }

// class Distance {
//     Distance({
//         this.count,
//         this.label,
//         this.priority,
//         this.selected,
//         this.localeIndependentLabel,
//         this.parentId,
//     });

//     String? count;
//     String? label;
//     String? priority;
//     bool? selected;
//     String? localeIndependentLabel;
//     String? parentId;

//     factory Distance.fromRawJson(String str) => Distance.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory Distance.fromJson(Map<String, dynamic> json) => Distance(
//         count: json["count"],
//         label: json["label"],
//         priority: json["priority"],
//         selected: json["selected"],
//         localeIndependentLabel: json["locale_independent_label"],
//         parentId: json["parent_id"],
//     );

//     Map<String, dynamic> toJson() => {
//         "count": count,
//         "label": label,
//         "priority": priority,
//         "selected": selected,
//         "locale_independent_label": localeIndependentLabel,
//         "parent_id": parentId,
//     };
// }

// class ExcludeLocations {
//     ExcludeLocations({
//         this.filtered,
//         this.all,
//     });

//     All? filtered;
//     All? all;

//     factory ExcludeLocations.fromRawJson(String str) => ExcludeLocations.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory ExcludeLocations.fromJson(Map<String, dynamic> json) => ExcludeLocations(
//         filtered: All.fromJson(json["filtered"]),
//         all: All.fromJson(json["all"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "filtered": filtered!.toJson(),
//         "all": all!.toJson(),
//     };
// }

// class All {
//     All({
//         this.count,
//         this.label,
//     });

//     String? count;
//     String? label;

//     factory All.fromRawJson(String str) => All.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory All.fromJson(Map<String, dynamic> json) => All(
//         count: json["count"],
//         label: json["label"],
//     );

//     Map<String, dynamic> toJson() => {
//         "count": count,
//         "label": label,
//     };
// }

// class Rating {
//     Rating({
//         this.the1,
//         this.the2,
//         this.the3,
//         this.the4,
//         this.the5,
//         this.all,
//     });

//     Distance? the1;
//     Distance? the2;
//     Distance? the3;
//     Distance? the4;
//     Distance? the5;
//     Distance? all;

//     factory Rating.fromRawJson(String str) => Rating.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory Rating.fromJson(Map<String, dynamic> json) => Rating(
//         the1: Distance.fromJson(json["1"]),
//         the2: Distance.fromJson(json["2"]),
//         the3: Distance.fromJson(json["3"]),
//         the4: Distance.fromJson(json["4"]),
//         the5: Distance.fromJson(json["5"]),
//         all: Distance.fromJson(json["all"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "1": the1!.toJson(),
//         "2": the2!.toJson(),
//         "3": the3!.toJson(),
//         "4": the4!.toJson(),
//         "5": the5!.toJson(),
//         "all": all!.toJson(),
//     };
// }

// class FiltersV2 {
//     FiltersV2({
//         this.searchFilters,
//         this.filterSections,
//         this.metadata,
//     });

//     List<dynamic>? searchFilters;
//     List<FilterSection?>? filterSections;
//     Metadata? metadata;

//     factory FiltersV2.fromRawJson(String str) => FiltersV2.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory FiltersV2.fromJson(Map<String, dynamic> json) => FiltersV2(
//         searchFilters: json["search_filters"] == null ? [] : List<dynamic>.from(json["search_filters"]!.map((x) => x)),
//         filterSections: json["filter_sections"] == null ? [] : List<FilterSection?>.from(json["filter_sections"]!.map((x) => FilterSection.fromJson(x))),
//         metadata: Metadata.fromJson(json["metadata"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "search_filters": searchFilters == null ? [] : List<dynamic>.from(searchFilters!.map((x) => x)),
//         "filter_sections": filterSections == null ? [] : List<dynamic>.from(filterSections!.map((x) => x!.toJson())),
//         "metadata": metadata!.toJson(),
//     };
// }

// class FilterSection {
//     FilterSection({
//         this.label,
//         this.sectionId,
//         this.filterGroups,
//         this.parentSectionId,
//     });

//     String? label;
//     String? sectionId;
//     List<FilterGroup?>? filterGroups;
//     String? parentSectionId;

//     factory FilterSection.fromRawJson(String str) => FilterSection.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory FilterSection.fromJson(Map<String, dynamic> json) => FilterSection(
//         label: json["label"],
//         sectionId: json["section_id"],
//         filterGroups: json["filter_groups"] == null ? [] : List<FilterGroup?>.from(json["filter_groups"]!.map((x) => FilterGroup.fromJson(x))),
//         parentSectionId: json["parent_section_id"],
//     );

//     Map<String, dynamic> toJson() => {
//         "label": label,
//         "section_id": sectionId,
//         "filter_groups": filterGroups == null ? [] : List<dynamic>.from(filterGroups!.map((x) => x!.toJson())),
//         "parent_section_id": parentSectionId,
//     };
// }

// class FilterGroup {
//     FilterGroup({
//         this.type,
//         this.key,
//         this.trackingKey,
//         this.label,
//         this.options,
//     });

//     String? type;
//     String? key;
//     String? trackingKey;
//     String? label;
//     List<Option?>? options;

//     factory FilterGroup.fromRawJson(String str) => FilterGroup.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory FilterGroup.fromJson(Map<String, dynamic> json) => FilterGroup(
//         type: json["type"],
//         key: json["key"],
//         trackingKey: json["tracking_key"],
//         label: json["label"],
//         options: json["options"] == null ? [] : List<Option?>.from(json["options"]!.map((x) => Option.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "type": type,
//         "key": key,
//         "tracking_key": trackingKey,
//         "label": label,
//         "options": options == null ? [] : List<dynamic>.from(options!.map((x) => x!.toJson())),
//     };
// }

// class Option {
//     Option({
//         this.label,
//         this.value,
//         this.selected,
//         this.optionDefault,
//         this.singleSelect,
//         this.count,
//         this.parentId,
//     });

//     String? label;
//     String? value;
//     bool? selected;
//     bool? optionDefault;
//     bool? singleSelect;
//     String? count;
//     String? parentId;

//     factory Option.fromRawJson(String str) => Option.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory Option.fromJson(Map<String, dynamic> json) => Option(
//         label: json["label"],
//         value: json["value"],
//         selected: json["selected"],
//         optionDefault: json["default"],
//         singleSelect: json["single_select"],
//         count: json["count"],
//         parentId: json["parent_id"],
//     );

//     Map<String, dynamic> toJson() => {
//         "label": label,
//         "value": value,
//         "selected": selected,
//         "default": optionDefault,
//         "single_select": singleSelect,
//         "count": count,
//         "parent_id": parentId,
//     };
// }

// class Metadata {
//     Metadata({
//         this.sort,
//     });

//     String? sort;

//     factory Metadata.fromRawJson(String str) => Metadata.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory Metadata.fromJson(Map<String, dynamic> json) => Metadata(
//         sort: json["sort"],
//     );

//     Map<String, dynamic> toJson() => {
//         "sort": sort,
//     };
// }

// class Paging {
//     Paging({
//         this.results,
//         this.totalResults,
//     });

//     String? results;
//     String? totalResults;

//     factory Paging.fromRawJson(String str) => Paging.fromJson(json.decode(str));

//     String toRawJson() => json.encode(toJson());

//     factory Paging.fromJson(Map<String, dynamic> json) => Paging(
//         results: json["results"],
//         totalResults: json["total_results"],
//     );

//     Map<String, dynamic> toJson() => {
//         "results": results,
//         "total_results": totalResults,
//     };
// }

// class EnumValues<T> {
//     Map<String, T> map;
//     Map<T, String>? reverseMap;

//     EnumValues(this.map);

//     Map<T, String>? get reverse {
//         reverseMap ??= map.map((k, v) => MapEntry(v, k));
//         return reverseMap;
//     }
// }
