.class public Lcom/yelp/android/appdata/webrequests/dp;
.super Lcom/yelp/android/av/g;
.source "MyCheckInsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/dq;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dq;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 29
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/dp;->addUrlParam(Ljava/lang/String;I)V

    .line 30
    if-nez p4, :cond_0

    .line 31
    const-string/jumbo v0, "summary"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/dp;->addUrlParam(Ljava/lang/String;I)V

    .line 33
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dq;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 36
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "check_ins"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/yelp/android/appdata/webrequests/dp;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/dq;
    .locals 7

    .prologue
    const/4 v4, -0x1

    .line 41
    const-string/jumbo v0, "businesses"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/dp;->getRequestId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->FULL:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/serializable/YelpBusiness;->jsonBusinessesToMap(Lorg/json/JSONArray;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Ljava/util/HashMap;

    move-result-object v1

    .line 43
    const-string/jumbo v0, "weekly_check_in_rank"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 44
    const-string/jumbo v0, "friend_check_in_rank"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 45
    const-string/jumbo v0, "friend_active_count"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 46
    const/4 v2, 0x0

    .line 47
    const-string/jumbo v0, "check_in_offer_summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Lcom/yelp/android/serializable/OfferSummary;->CREATOR:Lcom/yelp/android/serializable/ah;

    const-string/jumbo v2, "check_in_offer_summary"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/ah;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/OfferSummary;

    move-object v2, v0

    .line 52
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dq;

    const-string/jumbo v6, "check_ins"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/yelp/android/serializable/YelpCheckIn;->checkInsFromJSONArray(Lorg/json/JSONArray;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/dq;-><init>(Ljava/util/List;Lcom/yelp/android/serializable/OfferSummary;III)V

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/dp;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/dq;

    move-result-object v0

    return-object v0
.end method
