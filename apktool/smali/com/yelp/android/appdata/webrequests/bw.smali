.class public Lcom/yelp/android/appdata/webrequests/bw;
.super Lcom/yelp/android/av/g;
.source "EventRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/serializable/Event;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/serializable/Event$EventType;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/Event$EventType;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "event/"

    invoke-direct {p0, v0, v1, p3}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 14
    const-string/jumbo v0, "event_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/bw;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string/jumbo v0, "event_type"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Event$EventType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/bw;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Event;
    .locals 3

    .prologue
    .line 20
    const-string/jumbo v0, "event"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "business"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/serializable/Event;->eventFromJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Event;

    move-result-object v0

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/bw;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Event;

    move-result-object v0

    return-object v0
.end method
