.class public Lcom/yelp/android/appdata/webrequests/dv;
.super Lcom/yelp/android/appdata/webrequests/h;
.source "NearbySuggestRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/h",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/NearbyRow;",
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
            "Lcom/yelp/android/serializable/NearbyRow;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v2, "nearby/suggest"

    sget-object v3, Lcom/yelp/android/appdata/LocationService$Accuracies;->MEDIUM_KM:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v4, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE_15:Lcom/yelp/android/appdata/LocationService$Recentness;

    sget-object v6, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->MILES:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/h;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V

    .line 18
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
            "Lcom/yelp/android/serializable/NearbyRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/dv;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yelp/android/serializable/NearbyRow;->rowsFromNearbySuggestResponse(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    new-instance v0, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorInvalidData:I

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    throw v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/dv;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
