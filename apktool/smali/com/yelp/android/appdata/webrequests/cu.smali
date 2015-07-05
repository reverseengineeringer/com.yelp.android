.class public Lcom/yelp/android/appdata/webrequests/cu;
.super Lcom/yelp/android/av/g;
.source "ListTipFeedbackRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/cv;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/cv;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "quicktips/list_feedbacks"

    invoke-direct {p0, v0, v1, p1}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 22
    const-string/jumbo v0, "quicktip_id"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/cu;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/cv;
    .locals 4

    .prologue
    .line 30
    const-string/jumbo v0, "feedbacks"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 31
    sget-object v1, Lcom/yelp/android/serializable/TipFeedback;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v1

    .line 34
    const-string/jumbo v0, "compliments"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 35
    sget-object v2, Lcom/yelp/android/serializable/Compliment;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-static {v0, v2}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v2

    .line 38
    sget-object v0, Lcom/yelp/android/serializable/Tip;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v3, "quicktip"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    .line 39
    new-instance v3, Lcom/yelp/android/appdata/webrequests/cv;

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/yelp/android/appdata/webrequests/cv;-><init>(Lcom/yelp/android/appdata/webrequests/cu;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/yelp/android/serializable/Tip;)V

    return-object v3
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/cu;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/cv;

    move-result-object v0

    return-object v0
.end method
