.class public Lcom/yelp/android/appdata/webrequests/ct;
.super Lcom/yelp/android/av/g;
.source "ListCheckInCommentLikesRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/CheckInFeedback;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/YelpCheckIn;Lcom/yelp/android/appdata/webrequests/m;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/CheckInFeedback;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 18
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "check_in/list_feedbacks"

    invoke-direct {p0, v0, v1, p2}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 19
    const-string/jumbo v0, "check_in_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ct;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/ct;->addUrlParam(Ljava/lang/String;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/CheckInFeedback;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    const-string/jumbo v0, "feedbacks"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/CheckInFeedback;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ct;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
