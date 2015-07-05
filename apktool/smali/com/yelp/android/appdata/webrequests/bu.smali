.class public Lcom/yelp/android/appdata/webrequests/bu;
.super Lcom/yelp/android/av/g;
.source "EventMoreAttendeesRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/User;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/yelp/android/serializable/Event;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yelp/android/serializable/Event;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "/event/attendees/users"

    invoke-direct {p0, v0, v1, p3}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 19
    const-string/jumbo v0, "attendee_ids"

    invoke-static {p1}, Lcom/yelp/android/util/StringUtils;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/bu;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string/jumbo v0, "event_id"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/bu;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string/jumbo v0, "event_type"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Event;->getType()Lcom/yelp/android/serializable/Event$EventType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event$EventType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/bu;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
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
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    const-string/jumbo v0, "attendees"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/bu;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
