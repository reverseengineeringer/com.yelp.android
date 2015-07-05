.class final Lcom/yelp/android/appdata/webrequests/ae;
.super Ljava/lang/Object;
.source "BusinessSearchRequest.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/af;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 672
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Landroid/location/Address;
    .locals 4

    .prologue
    .line 785
    new-instance v0, Landroid/location/Address;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 786
    const-string/jumbo v1, "latitude"

    invoke-static {v1, p1}, Lcom/yelp/android/serializable/en;->d(Ljava/lang/String;Lorg/json/JSONObject;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Address;->setLatitude(D)V

    .line 787
    const-string/jumbo v1, "longitude"

    invoke-static {v1, p1}, Lcom/yelp/android/serializable/en;->d(Ljava/lang/String;Lorg/json/JSONObject;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Address;->setLongitude(D)V

    .line 788
    const/4 v1, 0x0

    const-string/jumbo v2, "address1"

    invoke-static {v2, p1}, Lcom/yelp/android/serializable/en;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 789
    const/4 v1, 0x1

    const-string/jumbo v2, "address2"

    invoke-static {v2, p1}, Lcom/yelp/android/serializable/en;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 790
    const/4 v1, 0x2

    const-string/jumbo v2, "address3"

    invoke-static {v2, p1}, Lcom/yelp/android/serializable/en;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 791
    const-string/jumbo v1, "state"

    invoke-static {v1, p1}, Lcom/yelp/android/serializable/en;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 792
    const-string/jumbo v1, "country"

    invoke-static {v1, p1}, Lcom/yelp/android/serializable/en;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 793
    const-string/jumbo v1, "display"

    invoke-static {v1, p1}, Lcom/yelp/android/serializable/en;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 794
    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;
    .locals 2

    .prologue
    .line 676
    new-instance v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;

    invoke-direct {v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;-><init>()V

    .line 678
    sget-object v0, Landroid/location/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mAmbiguousLocations:Ljava/util/List;
    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$302(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;

    .line 679
    sget-object v0, Lcom/yelp/android/serializable/BusinessSearchResult;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mBusinessSearchResults:Ljava/util/List;
    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$402(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;

    .line 681
    const-class v0, Landroid/location/Address;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mLocation:Landroid/location/Address;
    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$502(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Landroid/location/Address;)Landroid/location/Address;

    .line 682
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mSuggestedSpelling:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$602(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 683
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [D

    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mRegion:[D
    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$702(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;[D)[D

    .line 684
    # getter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mRegion:[D
    invoke-static {v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$700(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;)[D

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readDoubleArray([D)V

    .line 685
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mTotal:I
    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$802(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;I)I

    .line 686
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mFolded:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;
    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$102(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    .line 687
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mOffset:I
    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$002(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;I)I

    .line 688
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mRequestId:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$902(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 689
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mAttribution:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$1002(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 690
    sget-object v0, Lcom/yelp/android/serializable/SearchResultLocalAd;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mLocalAds:Ljava/util/List;
    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$1102(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;

    .line 691
    sget-object v0, Lcom/yelp/android/serializable/BusinessSearchResult;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mAdBusinessSearchResults:Ljava/util/List;
    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$1202(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;

    .line 693
    const-class v0, Lcom/yelp/android/serializable/AttributeFilters;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AttributeFilters;

    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mSuggestedFilters:Lcom/yelp/android/serializable/AttributeFilters;
    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$1302(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Lcom/yelp/android/serializable/AttributeFilters;)Lcom/yelp/android/serializable/AttributeFilters;

    .line 695
    return-object v1
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 706
    new-instance v2, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;

    invoke-direct {v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;-><init>()V

    .line 707
    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mRequestId:Ljava/lang/String;
    invoke-static {v2, p2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$902(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 710
    const-string/jumbo v0, "business_search_results"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 711
    const-string/jumbo v0, "business_search_results"

    .line 716
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 718
    const-string/jumbo v3, "location"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 719
    if-eqz v3, :cond_0

    .line 720
    invoke-direct {p0, v3}, Lcom/yelp/android/appdata/webrequests/ae;->a(Lorg/json/JSONObject;)Landroid/location/Address;

    move-result-object v3

    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mLocation:Landroid/location/Address;
    invoke-static {v2, v3}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$502(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Landroid/location/Address;)Landroid/location/Address;

    .line 722
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/yelp/android/serializable/BusinessSearchResult;->businessSearchResultsFromJSONArray(Lorg/json/JSONArray;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Ljava/util/List;

    move-result-object v0

    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mBusinessSearchResults:Ljava/util/List;
    invoke-static {v2, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$402(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;

    .line 731
    const-string/jumbo v0, "total"

    # getter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mBusinessSearchResults:Ljava/util/List;
    invoke-static {v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$400(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mTotal:I
    invoke-static {v2, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$802(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;I)I

    .line 734
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 735
    const-string/jumbo v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 736
    if-eqz v0, :cond_4

    const-string/jumbo v4, "code"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xd1

    if-ne v4, v5, :cond_4

    .line 738
    const-string/jumbo v4, "locations"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 739
    const/4 v0, 0x0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    :goto_1
    if-ge v0, v5, :cond_4

    .line 740
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 741
    if-eqz v6, :cond_2

    .line 742
    invoke-direct {p0, v6}, Lcom/yelp/android/appdata/webrequests/ae;->a(Lorg/json/JSONObject;)Landroid/location/Address;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 712
    :cond_3
    const-string/jumbo v0, "suggested_business_search_results"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 713
    const-string/jumbo v0, "suggested_business_search_results"

    goto :goto_0

    .line 746
    :cond_4
    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mAmbiguousLocations:Ljava/util/List;
    invoke-static {v2, v3}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$302(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;

    .line 747
    const-string/jumbo v0, "spelling_suggestion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "spelling_suggestion"

    const-string/jumbo v3, ""

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mSuggestedSpelling:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$602(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 751
    sget-object v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;->UNFOLDABLE:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mFolded:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;
    invoke-static {v2, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$102(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    .line 752
    const-string/jumbo v0, "is_folded"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 753
    const-string/jumbo v0, "is_folded"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;->FOLDED:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    :goto_3
    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mFolded:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;
    invoke-static {v2, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$102(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    .line 758
    :cond_5
    const-string/jumbo v0, "attribution"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mAttribution:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$1002(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 760
    const-string/jumbo v0, "ad_business_search_results"

    .line 761
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/yelp/android/serializable/BusinessSearchResult;->businessSearchResultsFromJSONArray(Lorg/json/JSONArray;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Ljava/util/List;

    move-result-object v1

    :cond_6
    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mAdBusinessSearchResults:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$1202(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;

    .line 767
    const-string/jumbo v0, "local_ads"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/SearchResultLocalAd;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mLocalAds:Ljava/util/List;
    invoke-static {v2, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$1102(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;

    .line 769
    # getter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mLocalAds:Ljava/util/List;
    invoke-static {v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$1100(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;)Ljava/util/List;

    move-result-object v0

    # getter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mAdBusinessSearchResults:Ljava/util/List;
    invoke-static {v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$1200(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/serializable/SearchResultLocalAd;->initializeSearchResultLocalAds(Ljava/util/List;Ljava/util/List;)V

    .line 771
    const-string/jumbo v0, "suggested_filters"

    .line 772
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 773
    sget-object v0, Lcom/yelp/android/serializable/AttributeFilters;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {v0, p1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AttributeFilters;

    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mSuggestedFilters:Lcom/yelp/android/serializable/AttributeFilters;
    invoke-static {v2, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$1302(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Lcom/yelp/android/serializable/AttributeFilters;)Lcom/yelp/android/serializable/AttributeFilters;

    .line 776
    :cond_7
    const-string/jumbo v0, "promoted_filter"

    .line 777
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 778
    sget-object v1, Lcom/yelp/android/serializable/PromotedFilter;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PromotedFilter;

    # setter for: Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->mPromotedFilter:Lcom/yelp/android/serializable/PromotedFilter;
    invoke-static {v2, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->access$1402(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Lcom/yelp/android/serializable/PromotedFilter;)Lcom/yelp/android/serializable/PromotedFilter;

    .line 781
    :cond_8
    return-object v2

    :cond_9
    move-object v0, v1

    .line 747
    goto/16 :goto_2

    .line 753
    :cond_a
    sget-object v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;->UNFOLDED:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    goto :goto_3

    :cond_b
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public a(I)[Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;
    .locals 1

    .prologue
    .line 700
    new-array v0, p1, [Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 672
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ae;->a(Landroid/os/Parcel;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 672
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ae;->a(I)[Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;

    move-result-object v0

    return-object v0
.end method
