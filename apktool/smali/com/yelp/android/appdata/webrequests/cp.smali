.class public Lcom/yelp/android/appdata/webrequests/cp;
.super Lcom/yelp/android/av/g;
.source "InitializePurchaseRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/cq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/YelpDeal;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/cq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "deal/prepare_purchase"

    invoke-direct {p0, v0, v1, p2}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 23
    const-string/jumbo v0, "deal_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpDeal;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/cp;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpDeal;->getTimeUpdated()Ljava/util/Date;

    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 27
    const-string/jumbo v1, "deal_time_updated"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/cp;->addPostParam(Ljava/lang/String;J)V

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/cq;
    .locals 3

    .prologue
    .line 34
    const-string/jumbo v0, "purchase_nonce"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string/jumbo v1, "payment_methods"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/serializable/PaymentMethod;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v1, v2}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    .line 37
    new-instance v2, Lcom/yelp/android/appdata/webrequests/cq;

    invoke-direct {v2, v0, v1}, Lcom/yelp/android/appdata/webrequests/cq;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v2
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/cp;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/cq;

    move-result-object v0

    return-object v0
.end method
