.class public Lcom/yelp/android/appdata/webrequests/fc;
.super Lcom/yelp/android/av/g;
.source "ReviewSearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/fd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/fd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "reviews/search"

    invoke-direct {p0, v0, v1, p5}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 20
    const-string/jumbo v0, "business_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/fc;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string/jumbo v0, "term"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/fc;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/fc;->addUrlParam(Ljava/lang/String;I)V

    .line 23
    const-string/jumbo v0, "limit"

    invoke-virtual {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/fc;->addUrlParam(Ljava/lang/String;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/fd;
    .locals 3

    .prologue
    .line 28
    const-string/jumbo v0, "reviews"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 29
    sget-object v1, Lcom/yelp/android/serializable/YelpBusinessReview;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    .line 31
    const-string/jumbo v1, "total"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 32
    new-instance v2, Lcom/yelp/android/appdata/webrequests/fd;

    invoke-direct {v2, v0, v1}, Lcom/yelp/android/appdata/webrequests/fd;-><init>(Ljava/util/List;I)V

    return-object v2
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/fc;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/fd;

    move-result-object v0

    return-object v0
.end method
