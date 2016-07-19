.class public Lcom/yelp/android/appdata/webrequests/s;
.super Lcom/yelp/android/appdata/webrequests/k;
.source "BookmarksSearchRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final g:I


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/k$b;Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;IZLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;",
            ">;",
            "Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;",
            "IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v2, "bookmarks/search"

    sget-object v3, Lcom/yelp/android/appdata/LocationService$Accuracies;->COARSE:Lcom/yelp/android/appdata/LocationService$Accuracies;

    sget-object v4, Lcom/yelp/android/appdata/LocationService$Recentness;->MINUTE_15:Lcom/yelp/android/appdata/LocationService$Recentness;

    sget-object v6, Lcom/yelp/android/appdata/LocationService$AccuracyUnit;->METERS:Lcom/yelp/android/appdata/LocationService$AccuracyUnit;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/k;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/LocationService$Accuracies;Lcom/yelp/android/appdata/LocationService$Recentness;Lcom/yelp/android/appdata/webrequests/k$b;Lcom/yelp/android/appdata/LocationService$AccuracyUnit;)V

    .line 41
    iput p3, p0, Lcom/yelp/android/appdata/webrequests/s;->g:I

    .line 42
    const-string/jumbo v0, "sort"

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->query:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/s;->a(Ljava/lang/String;I)V

    .line 44
    const-string/jumbo v0, "is_category"

    invoke-virtual {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/s;->a(Ljava/lang/String;Z)V

    .line 45
    const-string/jumbo v0, "term"

    invoke-virtual {p0, v0, p5}, Lcom/yelp/android/appdata/webrequests/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 50
    const-string/jumbo v0, "bookmarks"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 51
    const-string/jumbo v0, "businesses"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 53
    const/4 v0, 0x0

    .line 55
    const-string/jumbo v1, "region"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    sget-object v0, Lcom/yelp/android/serializable/MapSpan;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "region"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/MapSpan;

    move-object v1, v0

    .line 59
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/s;->i_()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->FULL:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    invoke-static {v3, v0, v4}, Lcom/yelp/android/serializable/YelpBusiness;->a(Lorg/json/JSONArray;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Ljava/util/ArrayList;

    move-result-object v3

    .line 62
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 63
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/yelp/android/serializable/YelpBusiness;->a(Z)V

    goto :goto_1

    .line 66
    :cond_0
    invoke-static {v2}, Lcom/yelp/android/serializable/h;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 67
    new-instance v2, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;

    iget v4, p0, Lcom/yelp/android/appdata/webrequests/s;->g:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    const-string/jumbo v5, "bookmarks_remaining"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;-><init>(Ljava/util/List;Ljava/util/ArrayList;Lcom/yelp/android/serializable/MapSpan;I)V

    .line 73
    return-object v2

    :cond_1
    move-object v1, v0

    goto :goto_0
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
    .line 24
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/s;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method
