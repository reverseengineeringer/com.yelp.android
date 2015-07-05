.class public Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;
.super Lcom/yelp/android/appdata/webrequests/h;
.source "ListBookmarksRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/h",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/cs;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/appdata/webrequests/cs;",
            ">;",
            "Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 57
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v2, "bookmarks/list"

    sget-object v3, Lcom/yelp/android/appdata/LocationService$Accuracies;->COARSE:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v4, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE_15:Lcom/yelp/android/appdata/LocationService$Recentness;

    sget-object v6, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->METERS:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/h;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/j;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V

    .line 59
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;->a:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    .line 60
    const-string/jumbo v0, "sort"

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->query:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;->addUrlParam(Ljava/lang/String;I)V

    .line 62
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/cs;
    .locals 6

    .prologue
    .line 66
    const-string/jumbo v0, "bookmarks"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 67
    const-string/jumbo v0, "businesses"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 68
    const/4 v0, 0x0

    .line 69
    const-string/jumbo v1, "region"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    sget-object v0, Lcom/yelp/android/serializable/MapSpan;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "region"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/MapSpan;

    move-object v1, v0

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;->getRequestId()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->FULL:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    invoke-static {v3, v0, v4}, Lcom/yelp/android/serializable/YelpBusiness;->businessesFromJSONArray(Lorg/json/JSONArray;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Ljava/util/ArrayList;

    move-result-object v3

    .line 74
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 75
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/yelp/android/serializable/YelpBusiness;->setBookmarked(Z)V

    goto :goto_1

    .line 77
    :cond_0
    invoke-static {v2}, Lcom/yelp/android/serializable/en;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 78
    new-instance v2, Lcom/yelp/android/appdata/webrequests/cs;

    const-string/jumbo v4, "total"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/yelp/android/appdata/webrequests/cs;-><init>(Ljava/util/List;Ljava/util/ArrayList;Lcom/yelp/android/serializable/MapSpan;I)V

    .line 80
    return-object v2

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public isLocationAbsolutelyRequired()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/cs;

    move-result-object v0

    return-object v0
.end method
