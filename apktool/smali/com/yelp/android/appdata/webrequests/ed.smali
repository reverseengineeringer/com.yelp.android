.class public Lcom/yelp/android/appdata/webrequests/ed;
.super Lcom/yelp/android/appdata/webrequests/h;
.source "RankingsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/h",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yelp/android/serializable/RoyaltySet;",
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
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/RoyaltySet;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v2, "rankings/location"

    sget-object v3, Lcom/yelp/android/appdata/LocationService$Accuracies;->COARSE:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v4, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE_15:Lcom/yelp/android/appdata/LocationService$Recentness;

    sget-object v6, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->MILES:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/h;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V

    .line 21
    const-string/jumbo v0, "latitude"

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/ed;->setLatitudeKey(Ljava/lang/String;)V

    .line 22
    const-string/jumbo v0, "longitude"

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/ed;->setLongitudeKey(Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/RoyaltySet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    const-string/jumbo v0, "location_rankings"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/RoyaltySet;->royaltyFromJSONArray(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ed;->a(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
