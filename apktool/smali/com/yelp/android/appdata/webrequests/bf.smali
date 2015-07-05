.class public Lcom/yelp/android/appdata/webrequests/bf;
.super Lcom/yelp/android/appdata/webrequests/h;
.source "DealBusinessesRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/h",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/bg;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/j;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/appdata/webrequests/bg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v2, "deal/businesses"

    sget-object v3, Lcom/yelp/android/appdata/LocationService$Accuracies;->MEDIUM_KM:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v4, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE_15:Lcom/yelp/android/appdata/LocationService$Recentness;

    sget-object v6, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->MILES:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    move-object v0, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/h;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V

    .line 22
    const-string/jumbo v0, "deal_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/bf;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/bf;->addUrlParam(Ljava/lang/String;I)V

    .line 24
    const-string/jumbo v0, "limit"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/bf;->addUrlParam(Ljava/lang/String;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/bg;
    .locals 4

    .prologue
    .line 36
    sget-object v0, Lcom/yelp/android/serializable/MapSpan;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "region"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/MapSpan;

    .line 37
    const-string/jumbo v1, "businesses"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/bf;->getRequestId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->SHORT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    invoke-static {v1, v2, v3}, Lcom/yelp/android/serializable/YelpBusiness;->businessesFromJSONArray(Lorg/json/JSONArray;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Ljava/util/ArrayList;

    move-result-object v1

    .line 40
    const-string/jumbo v2, "total"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 41
    new-instance v3, Lcom/yelp/android/appdata/webrequests/bg;

    invoke-direct {v3, v2, v0, v1}, Lcom/yelp/android/appdata/webrequests/bg;-><init>(ILcom/yelp/android/serializable/MapSpan;Ljava/util/ArrayList;)V

    return-object v3
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/bf;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/bg;

    move-result-object v0

    return-object v0
.end method
