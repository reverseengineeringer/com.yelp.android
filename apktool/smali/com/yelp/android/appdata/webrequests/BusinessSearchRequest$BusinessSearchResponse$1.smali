.class final Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse$1;
.super Ljava/lang/Object;
.source "BusinessSearchRequest.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Landroid/location/Address;
    .locals 4

    .prologue
    .line 835
    new-instance v0, Landroid/location/Address;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 836
    const-string/jumbo v1, "latitude"

    invoke-static {v1, p1}, Lcom/yelp/android/serializable/h;->d(Ljava/lang/String;Lorg/json/JSONObject;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Address;->setLatitude(D)V

    .line 837
    const-string/jumbo v1, "longitude"

    invoke-static {v1, p1}, Lcom/yelp/android/serializable/h;->d(Ljava/lang/String;Lorg/json/JSONObject;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Address;->setLongitude(D)V

    .line 838
    const/4 v1, 0x0

    const-string/jumbo v2, "address1"

    invoke-static {v2, p1}, Lcom/yelp/android/serializable/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 839
    const/4 v1, 0x1

    const-string/jumbo v2, "address2"

    invoke-static {v2, p1}, Lcom/yelp/android/serializable/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 840
    const/4 v1, 0x2

    const-string/jumbo v2, "address3"

    invoke-static {v2, p1}, Lcom/yelp/android/serializable/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 841
    const-string/jumbo v1, "state"

    invoke-static {v1, p1}, Lcom/yelp/android/serializable/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    .line 842
    const-string/jumbo v1, "country"

    invoke-static {v1, p1}, Lcom/yelp/android/serializable/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    .line 843
    const-string/jumbo v1, "display"

    invoke-static {v1, p1}, Lcom/yelp/android/serializable/h;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 844
    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;
    .locals 2

    .prologue
    .line 708
    new-instance v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;

    invoke-direct {v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;-><init>()V

    .line 710
    sget-object v0, Landroid/location/Address;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;

    .line 711
    sget-object v0, Lcom/yelp/android/serializable/BusinessSearchResult;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->b(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;

    .line 713
    const-class v0, Landroid/location/Address;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Landroid/location/Address;)Landroid/location/Address;

    .line 714
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 715
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [D

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;[D)[D

    .line 716
    invoke-static {v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;)[D

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readDoubleArray([D)V

    .line 717
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->b(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;I)I

    .line 718
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    .line 719
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;I)I

    .line 720
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->b(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 721
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->c(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 722
    sget-object v0, Lcom/yelp/android/serializable/SearchResultLocalAd;->CREATOR:Lcom/yelp/android/serializable/a;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->c(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;

    .line 724
    sget-object v0, Lcom/yelp/android/serializable/BusinessSearchResult;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->d(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;

    .line 726
    sget-object v0, Lcom/yelp/android/serializable/SearchSeparator;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->e(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;

    .line 727
    const-class v0, Lcom/yelp/android/serializable/AndroidAppAnnotation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AndroidAppAnnotation;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Lcom/yelp/android/serializable/AndroidAppAnnotation;)Lcom/yelp/android/serializable/AndroidAppAnnotation;

    .line 729
    return-object v1
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 741
    new-instance v2, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;

    invoke-direct {v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;-><init>()V

    .line 742
    invoke-static {v2, p2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->b(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 745
    const-string/jumbo v0, "business_search_results"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 746
    const-string/jumbo v0, "business_search_results"

    .line 751
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 753
    const-string/jumbo v3, "location"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 754
    if-eqz v3, :cond_0

    .line 755
    invoke-direct {p0, v3}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse$1;->a(Lorg/json/JSONObject;)Landroid/location/Address;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Landroid/location/Address;)Landroid/location/Address;

    .line 757
    :cond_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/yelp/android/serializable/BusinessSearchResult;->a(Lorg/json/JSONArray;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->b(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;

    .line 766
    const-string/jumbo v0, "total"

    invoke-static {v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->b(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v2, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->b(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;I)I

    .line 769
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 770
    const-string/jumbo v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 771
    if-eqz v0, :cond_4

    const-string/jumbo v4, "code"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xd1

    if-ne v4, v5, :cond_4

    .line 774
    const-string/jumbo v4, "locations"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 775
    const/4 v0, 0x0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    :goto_1
    if-ge v0, v5, :cond_4

    .line 776
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 777
    if-eqz v6, :cond_2

    .line 778
    invoke-direct {p0, v6}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse$1;->a(Lorg/json/JSONObject;)Landroid/location/Address;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 775
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 747
    :cond_3
    const-string/jumbo v0, "suggested_business_search_results"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 748
    const-string/jumbo v0, "suggested_business_search_results"

    goto :goto_0

    .line 782
    :cond_4
    invoke-static {v2, v3}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;

    .line 783
    const-string/jumbo v0, "spelling_suggestion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "spelling_suggestion"

    const-string/jumbo v3, ""

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v2, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 787
    sget-object v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;->UNFOLDABLE:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    invoke-static {v2, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    .line 788
    const-string/jumbo v0, "is_folded"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 789
    const-string/jumbo v0, "is_folded"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;->FOLDED:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    :goto_3
    invoke-static {v2, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;)Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    .line 795
    :cond_5
    const-string/jumbo v0, "attribution"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->c(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/lang/String;)Ljava/lang/String;

    .line 797
    const-string/jumbo v0, "ad_business_search_results"

    .line 798
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/yelp/android/serializable/BusinessSearchResult;->a(Lorg/json/JSONArray;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Ljava/util/List;

    move-result-object v1

    :cond_6
    invoke-static {v2, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->d(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;

    .line 804
    const-string/jumbo v0, "local_ads"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/SearchResultLocalAd;->CREATOR:Lcom/yelp/android/serializable/a;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->c(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;

    .line 808
    invoke-static {v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->c(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->d(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/serializable/SearchResultLocalAd;->a(Ljava/util/List;Ljava/util/List;)V

    .line 811
    const-string/jumbo v0, "filters"

    .line 812
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 813
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->f(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;

    .line 819
    :cond_7
    const-string/jumbo v0, "separators"

    .line 820
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 821
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/SearchSeparator;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->e(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Ljava/util/List;)Ljava/util/List;

    .line 826
    :cond_8
    const-string/jumbo v0, "android_app_annotation"

    .line 827
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 828
    sget-object v1, Lcom/yelp/android/serializable/AndroidAppAnnotation;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AndroidAppAnnotation;

    invoke-static {v2, v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;Lcom/yelp/android/serializable/AndroidAppAnnotation;)Lcom/yelp/android/serializable/AndroidAppAnnotation;

    .line 831
    :cond_9
    return-object v2

    :cond_a
    move-object v0, v1

    .line 783
    goto/16 :goto_2

    .line 789
    :cond_b
    sget-object v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;->UNFOLDED:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse$Foldability;

    goto/16 :goto_3

    :cond_c
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public a(I)[Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;
    .locals 1

    .prologue
    .line 734
    new-array v0, p1, [Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse$1;->a(I)[Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$BusinessSearchResponse;

    move-result-object v0

    return-object v0
.end method
