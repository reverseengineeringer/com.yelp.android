.class public Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;
.super Lcom/yelp/android/appdata/webrequests/h;
.source "CheckInRankingsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/h",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yelp/android/serializable/Ranking;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;


# direct methods
.method private constructor <init>(Lcom/yelp/android/appdata/webrequests/j;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Ranking;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    sget-object v3, Lcom/yelp/android/appdata/LocationService$Accuracies;->MEDIUM_KM:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v4, Lcom/yelp/android/appdata/LocationService$Recentness;->HOUR:Lcom/yelp/android/appdata/LocationService$Recentness;

    sget-object v6, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->MILES:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    move-object v0, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/h;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V

    .line 26
    const-string/jumbo v0, "latitude"

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;->setLatitudeKey(Ljava/lang/String;)V

    .line 27
    const-string/jumbo v0, "longitude"

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;->setLongitudeKey(Ljava/lang/String;)V

    .line 28
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;->a:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;

    .line 29
    return-void
.end method

.method public static a(Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Ranking;",
            ">;>;",
            "Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;",
            ")",
            "Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;"
        }
    .end annotation

    .prologue
    .line 33
    const-string/jumbo v0, "check_in/rankings/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    invoke-direct {v1, p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;-><init>(Lcom/yelp/android/appdata/webrequests/j;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;)V

    return-object v1
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Ranking;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    const-string/jumbo v0, "rankings"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Ranking;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isLocationAbsolutelyRequired()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;->a(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
