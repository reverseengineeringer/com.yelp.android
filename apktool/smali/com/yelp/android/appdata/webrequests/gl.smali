.class public Lcom/yelp/android/appdata/webrequests/gl;
.super Lcom/yelp/android/av/g;
.source "UserDealsAndOffersRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/gm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/gm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "/user/offers"

    invoke-direct {p0, v0, v1, p1}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/gm;
    .locals 3

    .prologue
    .line 29
    const-string/jumbo v0, "deals"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/YelpDeal;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    .line 31
    const-string/jumbo v1, "check_in_offers"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/serializable/Offer;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-static {v1, v2}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    .line 34
    new-instance v2, Lcom/yelp/android/appdata/webrequests/gm;

    invoke-direct {v2, v0, v1}, Lcom/yelp/android/appdata/webrequests/gm;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v2
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/gl;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/gm;

    move-result-object v0

    return-object v0
.end method
