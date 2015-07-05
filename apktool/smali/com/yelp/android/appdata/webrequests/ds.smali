.class public Lcom/yelp/android/appdata/webrequests/ds;
.super Lcom/yelp/android/appdata/webrequests/h;
.source "NearbyEventRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/h",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/Event;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/j;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v2, "events/nearby"

    sget-object v3, Lcom/yelp/android/appdata/LocationService$Accuracies;->MEDIUM_KM:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v4, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE_15:Lcom/yelp/android/appdata/LocationService$Recentness;

    sget-object v6, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->MILES:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/h;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V

    .line 19
    const-string/jumbo v0, "offset"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ds;->addUrlParam(Ljava/lang/String;I)V

    .line 20
    const-string/jumbo v0, "limit"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ds;->addUrlParam(Ljava/lang/String;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    :try_start_0
    const-string/jumbo v0, "businesses"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 27
    const-string/jumbo v1, "users"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 28
    const-string/jumbo v2, "events"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 30
    invoke-static {v2, v1, v0}, Lcom/yelp/android/serializable/Event;->buildEventsFromJSONResponse(Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    new-instance v0, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorInvalidData:I

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    throw v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ds;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
