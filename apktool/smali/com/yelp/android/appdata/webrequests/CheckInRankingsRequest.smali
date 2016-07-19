.class public Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;
.super Lcom/yelp/android/appdata/webrequests/k;
.source "CheckInRankingsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k",
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
.field public final g:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;


# direct methods
.method private constructor <init>(Lcom/yelp/android/appdata/webrequests/k$b;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/k$b",
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
    .line 27
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    sget-object v3, Lcom/yelp/android/appdata/LocationService$Accuracies;->MEDIUM_KM:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v4, Lcom/yelp/android/appdata/LocationService$Recentness;->HOUR:Lcom/yelp/android/appdata/LocationService$Recentness;

    sget-object v6, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->MILES:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    move-object v0, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/k;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/k$b;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V

    .line 34
    const-string/jumbo v0, "latitude"

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;->a(Ljava/lang/String;)V

    .line 35
    const-string/jumbo v0, "longitude"

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;->b(Ljava/lang/String;)V

    .line 36
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;->g:Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;

    .line 37
    return-void
.end method

.method public static a(Lcom/yelp/android/appdata/webrequests/k$b;Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/k$b",
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
    .line 41
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

    .line 42
    new-instance v1, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;

    invoke-direct {v1, p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;-><init>(Lcom/yelp/android/appdata/webrequests/k$b;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest$SearchMode;)V

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 47
    const-string/jumbo v0, "rankings"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Ranking;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/CheckInRankingsRequest;->a(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method
