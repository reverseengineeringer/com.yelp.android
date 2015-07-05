.class public Lcom/yelp/android/appdata/webrequests/fz;
.super Lcom/yelp/android/av/g;
.source "TalkTopicRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/serializable/TalkTopic;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "talk/topic"

    invoke-direct {p0, v0, v1, p2}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 16
    const-string/jumbo v0, "topic_alias"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/fz;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/TalkTopic;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/yelp/android/serializable/TalkTopic;->CREATOR:Lcom/yelp/android/serializable/ah;

    const-string/jumbo v1, "topic"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ah;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/TalkTopic;

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/fz;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/TalkTopic;

    move-result-object v0

    return-object v0
.end method
