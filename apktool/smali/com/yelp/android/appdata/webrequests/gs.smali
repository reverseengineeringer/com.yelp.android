.class public Lcom/yelp/android/appdata/webrequests/gs;
.super Lcom/yelp/android/av/g;
.source "UserLocationsRanksRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/gt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/RankTitle$Rank;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/RankTitle$Rank;",
            "Ljava/lang/String;",
            "II",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/gt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "user/rankings/locations"

    invoke-direct {p0, v0, v1, p5}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 24
    const-string/jumbo v0, "title"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/RankTitle$Rank;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/gs;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    if-eqz p2, :cond_0

    .line 26
    const-string/jumbo v0, "user_id"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/gs;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_0
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/gs;->addUrlParam(Ljava/lang/String;I)V

    .line 28
    const-string/jumbo v0, "limit"

    invoke-virtual {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/gs;->addUrlParam(Ljava/lang/String;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/gt;
    .locals 8

    .prologue
    .line 34
    const-string/jumbo v0, "locations"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 36
    sget-object v0, Lcom/yelp/android/serializable/RankLocation;->LAZY_CREATOR:Lcom/yelp/android/serializable/az;

    invoke-static {v1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v3

    .line 39
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 40
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 41
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 42
    const-string/jumbo v6, "business"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 43
    if-eqz v5, :cond_0

    const-string/jumbo v6, "user_check_in_count"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 44
    const-string/jumbo v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "user_check_in_count"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_1
    new-instance v0, Lcom/yelp/android/appdata/webrequests/gt;

    invoke-direct {v0, p0, v3, v4}, Lcom/yelp/android/appdata/webrequests/gt;-><init>(Lcom/yelp/android/appdata/webrequests/gs;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/gs;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/gt;

    move-result-object v0

    return-object v0
.end method
