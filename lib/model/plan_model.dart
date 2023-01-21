class PlanModel {
  List<Data>? data;
  Metadata? metadata;
  List<Sort>? sort;
  bool? partialContent;
  Tracking? tracking;
  Paging? paging;

  PlanModel(
      {this.data,
      this.metadata,
      this.sort,
      this.partialContent,
      this.tracking,
      this.paging});

  PlanModel.fromJson(Map<String, dynamic> json) {
    if (json["data"] is List) {
      data = json["data"] == null
          ? null
          : (json["data"] as List).map((e) => Data.fromJson(e)).toList();
    }
    if (json["metadata"] is Map) {
      metadata =
          json["metadata"] == null ? null : Metadata.fromJson(json["metadata"]);
    }
    if (json["sort"] is List) {
      sort = json["sort"] == null
          ? null
          : (json["sort"] as List).map((e) => Sort.fromJson(e)).toList();
    }
    if (json["partial_content"] is bool) {
      partialContent = json["partial_content"];
    }
    if (json["tracking"] is Map) {
      tracking =
          json["tracking"] == null ? null : Tracking.fromJson(json["tracking"]);
    }
    if (json["paging"] is Map) {
      paging = json["paging"] == null ? null : Paging.fromJson(json["paging"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (data != null) {
      _data["data"] = data?.map((e) => e.toJson()).toList();
    }
    if (metadata != null) {
      _data["metadata"] = metadata?.toJson();
    }
    if (sort != null) {
      _data["sort"] = sort?.map((e) => e.toJson()).toList();
    }
    _data["partial_content"] = partialContent;
    if (tracking != null) {
      _data["tracking"] = tracking?.toJson();
    }
    if (paging != null) {
      _data["paging"] = paging?.toJson();
    }
    return _data;
  }
}

class Paging {
  String? results;
  String? totalResults;

  Paging({this.results, this.totalResults});

  Paging.fromJson(Map<String, dynamic> json) {
    if (json["results"] is String) {
      results = json["results"];
    }
    if (json["total_results"] is String) {
      totalResults = json["total_results"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["results"] = results;
    _data["total_results"] = totalResults;
    return _data;
  }
}

class Tracking {
  String? searchId;

  Tracking({this.searchId});

  Tracking.fromJson(Map<String, dynamic> json) {
    if (json["search_id"] is String) {
      searchId = json["search_id"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["search_id"] = searchId;
    return _data;
  }
}

class Sort {
  String? filterKey;
  String? label;
  String? localeIndependentLabel;
  bool? selected;

  Sort(
      {this.filterKey, this.label, this.localeIndependentLabel, this.selected});

  Sort.fromJson(Map<String, dynamic> json) {
    if (json["filter_key"] is String) {
      filterKey = json["filter_key"];
    }
    if (json["label"] is String) {
      label = json["label"];
    }
    if (json["locale_independent_label"] is String) {
      localeIndependentLabel = json["locale_independent_label"];
    }
    if (json["selected"] is bool) {
      selected = json["selected"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["filter_key"] = filterKey;
    _data["label"] = label;
    _data["locale_independent_label"] = localeIndependentLabel;
    _data["selected"] = selected;
    return _data;
  }
}

class Metadata {
  String? scope;

  Metadata({this.scope});

  Metadata.fromJson(Map<String, dynamic> json) {
    if (json["scope"] is String) {
      scope = json["scope"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["scope"] = scope;
    return _data;
  }
}

class Data {
  String? resultType;
  ResultObject? resultObject;
  String? scope;
  bool? isTopResult;

  Data({this.resultType, this.resultObject, this.scope, this.isTopResult});

  Data.fromJson(Map<String, dynamic> json) {
    if (json["result_type"] is String) {
      resultType = json["result_type"];
    }
    if (json["result_object"] is Map) {
      resultObject = json["result_object"] == null
          ? null
          : ResultObject.fromJson(json["result_object"]);
    }
    if (json["scope"] is String) {
      scope = json["scope"];
    }
    if (json["is_top_result"] is bool) {
      isTopResult = json["is_top_result"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["result_type"] = resultType;
    if (resultObject != null) {
      _data["result_object"] = resultObject?.toJson();
    }
    _data["scope"] = scope;
    _data["is_top_result"] = isTopResult;
    return _data;
  }
}

class ResultObject {
  String? locationId;
  String? name;
  String? latitude;
  String? longitude;
  String? numReviews;
  String? timezone;
  String? locationString;
  Photo? photo;
  List<dynamic>? awards;
  String? doubleclickZone;
  String? preferredMapEngine;
  String? geoType;
  CategoryCounts? categoryCounts;
  List<dynamic>? nearbyAttractions;
  String? description;
  String? webUrl;
  List<Ancestors>? ancestors;
  Category? category;
  List<Subcategory1>? subcategory;
  bool? isJfyEnabled;
  List<dynamic>? nearestMetroStation;
  String? geoDescription;
  bool? hasRestaurantCoverpage;
  bool? hasAttractionCoverpage;
  bool? hasCuratedShoppingList;

  ResultObject(
      {this.locationId,
      this.name,
      this.latitude,
      this.longitude,
      this.numReviews,
      this.timezone,
      this.locationString,
      this.photo,
      this.awards,
      this.doubleclickZone,
      this.preferredMapEngine,
      this.geoType,
      this.categoryCounts,
      this.nearbyAttractions,
      this.description,
      this.webUrl,
      this.ancestors,
      this.category,
      this.subcategory,
      this.isJfyEnabled,
      this.nearestMetroStation,
      this.geoDescription,
      this.hasRestaurantCoverpage,
      this.hasAttractionCoverpage,
      this.hasCuratedShoppingList});

  ResultObject.fromJson(Map<String, dynamic> json) {
    if (json["location_id"] is String) {
      locationId = json["location_id"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["latitude"] is String) {
      latitude = json["latitude"];
    }
    if (json["longitude"] is String) {
      longitude = json["longitude"];
    }
    if (json["num_reviews"] is String) {
      numReviews = json["num_reviews"];
    }
    if (json["timezone"] is String) {
      timezone = json["timezone"];
    }
    if (json["location_string"] is String) {
      locationString = json["location_string"];
    }
    if (json["photo"] is Map) {
      photo = json["photo"] == null ? null : Photo.fromJson(json["photo"]);
    }
    if (json["awards"] is List) {
      awards = json["awards"] ?? [];
    }
    if (json["doubleclick_zone"] is String) {
      doubleclickZone = json["doubleclick_zone"];
    }
    if (json["preferred_map_engine"] is String) {
      preferredMapEngine = json["preferred_map_engine"];
    }
    if (json["geo_type"] is String) {
      geoType = json["geo_type"];
    }
    if (json["category_counts"] is Map) {
      categoryCounts = json["category_counts"] == null
          ? null
          : CategoryCounts.fromJson(json["category_counts"]);
    }
    if (json["nearby_attractions"] is List) {
      nearbyAttractions = json["nearby_attractions"] ?? [];
    }
    if (json["description"] is String) {
      description = json["description"];
    }
    if (json["web_url"] is String) {
      webUrl = json["web_url"];
    }
    if (json["ancestors"] is List) {
      ancestors = json["ancestors"] == null
          ? null
          : (json["ancestors"] as List)
              .map((e) => Ancestors.fromJson(e))
              .toList();
    }
    if (json["category"] is Map) {
      category =
          json["category"] == null ? null : Category.fromJson(json["category"]);
    }
    if (json["subcategory"] is List) {
      subcategory = json["subcategory"] == null
          ? null
          : (json["subcategory"] as List)
              .map((e) => Subcategory1.fromJson(e))
              .toList();
    }
    if (json["is_jfy_enabled"] is bool) {
      isJfyEnabled = json["is_jfy_enabled"];
    }
    if (json["nearest_metro_station"] is List) {
      nearestMetroStation = json["nearest_metro_station"] ?? [];
    }
    if (json["geo_description"] is String) {
      geoDescription = json["geo_description"];
    }
    if (json["has_restaurant_coverpage"] is bool) {
      hasRestaurantCoverpage = json["has_restaurant_coverpage"];
    }
    if (json["has_attraction_coverpage"] is bool) {
      hasAttractionCoverpage = json["has_attraction_coverpage"];
    }
    if (json["has_curated_shopping_list"] is bool) {
      hasCuratedShoppingList = json["has_curated_shopping_list"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["location_id"] = locationId;
    _data["name"] = name;
    _data["latitude"] = latitude;
    _data["longitude"] = longitude;
    _data["num_reviews"] = numReviews;
    _data["timezone"] = timezone;
    _data["location_string"] = locationString;
    if (photo != null) {
      _data["photo"] = photo?.toJson();
    }
    if (awards != null) {
      _data["awards"] = awards;
    }
    _data["doubleclick_zone"] = doubleclickZone;
    _data["preferred_map_engine"] = preferredMapEngine;
    _data["geo_type"] = geoType;
    if (categoryCounts != null) {
      _data["category_counts"] = categoryCounts?.toJson();
    }
    if (nearbyAttractions != null) {
      _data["nearby_attractions"] = nearbyAttractions;
    }
    _data["description"] = description;
    _data["web_url"] = webUrl;
    if (ancestors != null) {
      _data["ancestors"] = ancestors?.map((e) => e.toJson()).toList();
    }
    if (category != null) {
      _data["category"] = category?.toJson();
    }
    if (subcategory != null) {
      _data["subcategory"] = subcategory?.map((e) => e.toJson()).toList();
    }
    _data["is_jfy_enabled"] = isJfyEnabled;
    if (nearestMetroStation != null) {
      _data["nearest_metro_station"] = nearestMetroStation;
    }
    _data["geo_description"] = geoDescription;
    _data["has_restaurant_coverpage"] = hasRestaurantCoverpage;
    _data["has_attraction_coverpage"] = hasAttractionCoverpage;
    _data["has_curated_shopping_list"] = hasCuratedShoppingList;
    return _data;
  }
}

class Subcategory1 {
  String? key;
  String? name;

  Subcategory1({this.key, this.name});

  Subcategory1.fromJson(Map<String, dynamic> json) {
    if (json["key"] is String) {
      key = json["key"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["key"] = key;
    _data["name"] = name;
    return _data;
  }
}

class Category {
  String? key;
  String? name;

  Category({this.key, this.name});

  Category.fromJson(Map<String, dynamic> json) {
    if (json["key"] is String) {
      key = json["key"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["key"] = key;
    _data["name"] = name;
    return _data;
  }
}

class Ancestors {
  List<Subcategory>? subcategory;
  String? name;
  dynamic abbrv;
  String? locationId;

  Ancestors({this.subcategory, this.name, this.abbrv, this.locationId});

  Ancestors.fromJson(Map<String, dynamic> json) {
    if (json["subcategory"] is List) {
      subcategory = json["subcategory"] == null
          ? null
          : (json["subcategory"] as List)
              .map((e) => Subcategory.fromJson(e))
              .toList();
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    abbrv = json["abbrv"];
    if (json["location_id"] is String) {
      locationId = json["location_id"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (subcategory != null) {
      _data["subcategory"] = subcategory?.map((e) => e.toJson()).toList();
    }
    _data["name"] = name;
    _data["abbrv"] = abbrv;
    _data["location_id"] = locationId;
    return _data;
  }
}

class Subcategory {
  String? key;
  String? name;

  Subcategory({this.key, this.name});

  Subcategory.fromJson(Map<String, dynamic> json) {
    if (json["key"] is String) {
      key = json["key"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["key"] = key;
    _data["name"] = name;
    return _data;
  }
}

class CategoryCounts {
  Attractions? attractions;
  Restaurants? restaurants;
  Accommodations? accommodations;
  String? neighborhoods;
  String? airports;

  CategoryCounts(
      {this.attractions,
      this.restaurants,
      this.accommodations,
      this.neighborhoods,
      this.airports});

  CategoryCounts.fromJson(Map<String, dynamic> json) {
    if (json["attractions"] is Map) {
      attractions = json["attractions"] == null
          ? null
          : Attractions.fromJson(json["attractions"]);
    }
    if (json["restaurants"] is Map) {
      restaurants = json["restaurants"] == null
          ? null
          : Restaurants.fromJson(json["restaurants"]);
    }
    if (json["accommodations"] is Map) {
      accommodations = json["accommodations"] == null
          ? null
          : Accommodations.fromJson(json["accommodations"]);
    }
    if (json["neighborhoods"] is String) {
      neighborhoods = json["neighborhoods"];
    }
    if (json["airports"] is String) {
      airports = json["airports"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (attractions != null) {
      _data["attractions"] = attractions?.toJson();
    }
    if (restaurants != null) {
      _data["restaurants"] = restaurants?.toJson();
    }
    if (accommodations != null) {
      _data["accommodations"] = accommodations?.toJson();
    }
    _data["neighborhoods"] = neighborhoods;
    _data["airports"] = airports;
    return _data;
  }
}

class Accommodations {
  String? hotels;
  String? bbsInns;
  String? others;
  String? total;

  Accommodations({this.hotels, this.bbsInns, this.others, this.total});

  Accommodations.fromJson(Map<String, dynamic> json) {
    if (json["hotels"] is String) {
      hotels = json["hotels"];
    }
    if (json["bbs_inns"] is String) {
      bbsInns = json["bbs_inns"];
    }
    if (json["others"] is String) {
      others = json["others"];
    }
    if (json["total"] is String) {
      total = json["total"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["hotels"] = hotels;
    _data["bbs_inns"] = bbsInns;
    _data["others"] = others;
    _data["total"] = total;
    return _data;
  }
}

class Restaurants {
  String? total;

  Restaurants({this.total});

  Restaurants.fromJson(Map<String, dynamic> json) {
    if (json["total"] is String) {
      total = json["total"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["total"] = total;
    return _data;
  }
}

class Attractions {
  String? activities;
  String? attractions;
  String? nightlife;
  String? shopping;
  String? total;

  Attractions(
      {this.activities,
      this.attractions,
      this.nightlife,
      this.shopping,
      this.total});

  Attractions.fromJson(Map<String, dynamic> json) {
    if (json["activities"] is String) {
      activities = json["activities"];
    }
    if (json["attractions"] is String) {
      attractions = json["attractions"];
    }
    if (json["nightlife"] is String) {
      nightlife = json["nightlife"];
    }
    if (json["shopping"] is String) {
      shopping = json["shopping"];
    }
    if (json["total"] is String) {
      total = json["total"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["activities"] = activities;
    _data["attractions"] = attractions;
    _data["nightlife"] = nightlife;
    _data["shopping"] = shopping;
    _data["total"] = total;
    return _data;
  }
}

class Photo {
  Images? images;
  bool? isBlessed;
  String? uploadedDate;
  String? caption;
  String? id;
  String? helpfulVotes;
  String? publishedDate;
  dynamic user;

  Photo(
      {this.images,
      this.isBlessed,
      this.uploadedDate,
      this.caption,
      this.id,
      this.helpfulVotes,
      this.publishedDate,
      this.user});

  Photo.fromJson(Map<String, dynamic> json) {
    if (json["images"] is Map) {
      images = json["images"] == null ? null : Images.fromJson(json["images"]);
    }
    if (json["is_blessed"] is bool) {
      isBlessed = json["is_blessed"];
    }
    if (json["uploaded_date"] is String) {
      uploadedDate = json["uploaded_date"];
    }
    if (json["caption"] is String) {
      caption = json["caption"];
    }
    if (json["id"] is String) {
      id = json["id"];
    }
    if (json["helpful_votes"] is String) {
      helpfulVotes = json["helpful_votes"];
    }
    if (json["published_date"] is String) {
      publishedDate = json["published_date"];
    }
    user = json["user"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (images != null) {
      _data["images"] = images?.toJson();
    }
    _data["is_blessed"] = isBlessed;
    _data["uploaded_date"] = uploadedDate;
    _data["caption"] = caption;
    _data["id"] = id;
    _data["helpful_votes"] = helpfulVotes;
    _data["published_date"] = publishedDate;
    _data["user"] = user;
    return _data;
  }
}

class Images {
  Small? small;
  Thumbnail? thumbnail;
  Original? original;
  Large? large;
  Medium? medium;

  Images({this.small, this.thumbnail, this.original, this.large, this.medium});

  Images.fromJson(Map<String, dynamic> json) {
    if (json["small"] is Map) {
      small = json["small"] == null ? null : Small.fromJson(json["small"]);
    }
    if (json["thumbnail"] is Map) {
      thumbnail = json["thumbnail"] == null
          ? null
          : Thumbnail.fromJson(json["thumbnail"]);
    }
    if (json["original"] is Map) {
      original =
          json["original"] == null ? null : Original.fromJson(json["original"]);
    }
    if (json["large"] is Map) {
      large = json["large"] == null ? null : Large.fromJson(json["large"]);
    }
    if (json["medium"] is Map) {
      medium = json["medium"] == null ? null : Medium.fromJson(json["medium"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (small != null) {
      _data["small"] = small?.toJson();
    }
    if (thumbnail != null) {
      _data["thumbnail"] = thumbnail?.toJson();
    }
    if (original != null) {
      _data["original"] = original?.toJson();
    }
    if (large != null) {
      _data["large"] = large?.toJson();
    }
    if (medium != null) {
      _data["medium"] = medium?.toJson();
    }
    return _data;
  }
}

class Medium {
  String? width;
  String? url;
  String? height;

  Medium({this.width, this.url, this.height});

  Medium.fromJson(Map<String, dynamic> json) {
    if (json["width"] is String) {
      width = json["width"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["height"] is String) {
      height = json["height"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["width"] = width;
    _data["url"] = url;
    _data["height"] = height;
    return _data;
  }
}

class Large {
  String? width;
  String? url;
  String? height;

  Large({this.width, this.url, this.height});

  Large.fromJson(Map<String, dynamic> json) {
    if (json["width"] is String) {
      width = json["width"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["height"] is String) {
      height = json["height"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["width"] = width;
    _data["url"] = url;
    _data["height"] = height;
    return _data;
  }
}

class Original {
  String? width;
  String? url;
  String? height;

  Original({this.width, this.url, this.height});

  Original.fromJson(Map<String, dynamic> json) {
    if (json["width"] is String) {
      width = json["width"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["height"] is String) {
      height = json["height"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["width"] = width;
    _data["url"] = url;
    _data["height"] = height;
    return _data;
  }
}

class Thumbnail {
  String? width;
  String? url;
  String? height;

  Thumbnail({this.width, this.url, this.height});

  Thumbnail.fromJson(Map<String, dynamic> json) {
    if (json["width"] is String) {
      width = json["width"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["height"] is String) {
      height = json["height"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["width"] = width;
    _data["url"] = url;
    _data["height"] = height;
    return _data;
  }
}

class Small {
  String? width;
  String? url;
  String? height;

  Small({this.width, this.url, this.height});

  Small.fromJson(Map<String, dynamic> json) {
    if (json["width"] is String) {
      width = json["width"];
    }
    if (json["url"] is String) {
      url = json["url"];
    }
    if (json["height"] is String) {
      height = json["height"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["width"] = width;
    _data["url"] = url;
    _data["height"] = height;
    return _data;
  }
}
