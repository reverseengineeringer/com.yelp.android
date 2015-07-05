.class public Lcom/yelp/android/appdata/webrequests/dy;
.super Lcom/yelp/android/av/g;
.source "OffersRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/dz;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(IIZLcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "check_ins/offers"

    invoke-direct {p0, v0, v1, p4}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 23
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/dy;->addUrlParam(Ljava/lang/String;I)V

    .line 24
    const-string/jumbo v0, "limit"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/dy;->addUrlParam(Ljava/lang/String;I)V

    .line 25
    const-string/jumbo v0, "used"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/dy;->addUrlParam(Ljava/lang/String;Z)V

    .line 26
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/dz;
    .locals 3

    .prologue
    .line 31
    const-string/jumbo v0, "check_in_offers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Offer;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    .line 33
    const-string/jumbo v1, "total"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 34
    new-instance v2, Lcom/yelp/android/appdata/webrequests/dz;

    invoke-direct {v2, v0, v1}, Lcom/yelp/android/appdata/webrequests/dz;-><init>(Ljava/util/List;I)V

    return-object v2
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/dy;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/dz;

    move-result-object v0

    return-object v0
.end method
