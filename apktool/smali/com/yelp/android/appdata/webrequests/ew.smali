.class public Lcom/yelp/android/appdata/webrequests/ew;
.super Lcom/yelp/android/av/g;
.source "ReviewListFilteredRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/ex;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;",
            "Ljava/lang/String;",
            "II",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ex;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "highlight/reviews_v2"

    invoke-direct {p0, v0, v1, p7}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 24
    const-string/jumbo v0, "business_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/ew;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string/jumbo v0, "identifier"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/ew;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string/jumbo v0, "type"

    invoke-virtual {p3}, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;->getTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ew;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string/jumbo v0, "review_id"

    invoke-virtual {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/ew;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p5}, Lcom/yelp/android/appdata/webrequests/ew;->addUrlParam(Ljava/lang/String;I)V

    .line 29
    const-string/jumbo v0, "limit"

    invoke-virtual {p0, v0, p6}, Lcom/yelp/android/appdata/webrequests/ew;->addUrlParam(Ljava/lang/String;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/ex;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 35
    const-string/jumbo v0, "reviews"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 36
    sget-object v1, Lcom/yelp/android/serializable/YelpBusinessReview;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    .line 39
    const-string/jumbo v0, "total"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 41
    const-string/jumbo v0, "menu_item"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 42
    if-nez v0, :cond_0

    move-object v3, v4

    .line 44
    :goto_0
    const-string/jumbo v0, "more_info_action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 45
    if-nez v0, :cond_1

    .line 49
    :goto_1
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ex;

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/ex;-><init>(Ljava/util/List;ILcom/yelp/android/serializable/MenuItem;Lcom/yelp/android/serializable/MoreInfoAction;Ljava/lang/String;)V

    return-object v0

    .line 42
    :cond_0
    sget-object v3, Lcom/yelp/android/serializable/MenuItem;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {v3, v0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/MenuItem;

    move-object v3, v0

    goto :goto_0

    .line 45
    :cond_1
    sget-object v0, Lcom/yelp/android/serializable/MoreInfoAction;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v4, "more_info_action"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/MoreInfoAction;

    move-object v4, v0

    goto :goto_1
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ew;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/ex;

    move-result-object v0

    return-object v0
.end method
