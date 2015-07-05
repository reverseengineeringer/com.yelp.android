.class public Lcom/yelp/android/appdata/webrequests/gb;
.super Lcom/yelp/android/av/g;
.source "TopicsSubscribedRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/gc;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/gc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "talk/topics/subscribed"

    invoke-direct {p0, v0, v1, p2}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 17
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/gb;->addUrlParam(Ljava/lang/String;I)V

    .line 18
    const-string/jumbo v0, "limit"

    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/gb;->addUrlParam(Ljava/lang/String;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/gc;
    .locals 4

    .prologue
    .line 23
    const-string/jumbo v0, "topics"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/TalkTopic;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    .line 25
    const-string/jumbo v1, "total"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 26
    const-string/jumbo v2, "revision"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    new-instance v3, Lcom/yelp/android/appdata/webrequests/gc;

    invoke-direct {v3, v0, v2, v1}, Lcom/yelp/android/appdata/webrequests/gc;-><init>(Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-object v3
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/gb;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/gc;

    move-result-object v0

    return-object v0
.end method
