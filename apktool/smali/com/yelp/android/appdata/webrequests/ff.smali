.class public Lcom/yelp/android/appdata/webrequests/ff;
.super Lcom/yelp/android/av/g;
.source "ReviewStartRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/fg;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/fg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "review/start"

    invoke-direct {p0, v0, v1, p2}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 22
    const-string/jumbo v0, "business_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/ff;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/fg;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 62
    .line 67
    const-string/jumbo v0, "draft"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    sget-object v0, Lcom/yelp/android/serializable/ReviewDraft;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v2, "draft"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewDraft;

    move-object v4, v0

    .line 71
    :goto_0
    const-string/jumbo v0, "review"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    sget-object v0, Lcom/yelp/android/serializable/Review;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "review"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Review;

    move-object v5, v0

    .line 75
    :goto_1
    const-string/jumbo v0, "review_activity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->fromDescription(Ljava/lang/String;)Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v2

    .line 76
    const-string/jumbo v0, "review_thresholds"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/ReviewThreshold;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v3

    .line 79
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fg;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/fg;-><init>(Lcom/yelp/android/appdata/webrequests/ff;Lcom/yelp/android/ui/activities/reviews/ReviewState;Ljava/util/ArrayList;Lcom/yelp/android/serializable/ReviewDraft;Lcom/yelp/android/serializable/Review;)V

    return-object v0

    :cond_0
    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object v4, v1

    goto :goto_0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ff;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/fg;

    move-result-object v0

    return-object v0
.end method
