.class public Lcom/yelp/android/appdata/webrequests/by;
.super Lcom/yelp/android/appdata/webrequests/h;
.source "EventsSectionRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/h",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/bz;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/j;)V
    .locals 7

    .prologue
    .line 18
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v2, "/events/section"

    sget-object v3, Lcom/yelp/android/appdata/LocationService$Accuracies;->MEDIUM_KM:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v4, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE_15:Lcom/yelp/android/appdata/LocationService$Recentness;

    sget-object v6, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->MILES:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    move-object v0, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/h;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V

    .line 20
    const-string/jumbo v0, "alias"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/by;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/by;->addUrlParam(Ljava/lang/String;I)V

    .line 22
    const-string/jumbo v0, "limit"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/by;->addUrlParam(Ljava/lang/String;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/bz;
    .locals 3

    .prologue
    .line 27
    const-string/jumbo v0, "events"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string/jumbo v1, "users"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const-string/jumbo v2, "businesses"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/serializable/Event;->buildEventsFromJSONResponse(Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/yelp/android/appdata/webrequests/bz;

    const-string/jumbo v2, "total"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/bz;-><init>(Ljava/util/List;I)V

    return-object v1
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/by;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/bz;

    move-result-object v0

    return-object v0
.end method
