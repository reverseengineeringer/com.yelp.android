.class public Lcom/yelp/android/appdata/webrequests/fb;
.super Lcom/yelp/android/appdata/webrequests/core/b;
.source "UserBusinessesRanksRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/webrequests/fb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/core/b",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/fb$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/RankTitle$Rank;Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/RankTitle$Rank;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/fb$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "user/rankings/businesses"

    invoke-direct {p0, v0, v1, p6}, Lcom/yelp/android/appdata/webrequests/core/b;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 30
    const-string/jumbo v0, "title"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/RankTitle$Rank;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/fb;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string/jumbo v0, "location_id"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/fb;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    if-eqz p2, :cond_0

    .line 33
    const-string/jumbo v0, "user_id"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/fb;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/fb;->a(Ljava/lang/String;I)V

    .line 36
    const-string/jumbo v0, "limit"

    invoke-virtual {p0, v0, p5}, Lcom/yelp/android/appdata/webrequests/fb;->a(Ljava/lang/String;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/fb$a;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 42
    const-string/jumbo v0, "businesses"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 43
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/fb;->i_()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->SHORT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    invoke-static {v7, v0, v1}, Lcom/yelp/android/serializable/YelpBusiness;->a(Lorg/json/JSONArray;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Ljava/util/ArrayList;

    move-result-object v8

    .line 46
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 47
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11, v9}, Landroid/os/Bundle;-><init>(I)V

    move v6, v3

    .line 49
    :goto_0
    if-ge v6, v9, :cond_1

    .line 50
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yelp/android/serializable/YelpBusiness;

    .line 51
    new-instance v0, Lcom/yelp/android/serializable/RankLocation;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/yelp/android/serializable/YelpBusiness;->aq()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/serializable/RankLocation;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/yelp/android/serializable/RankTitle$Rank;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    const-string/jumbo v1, "user_check_in_count"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "user_check_in_count"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 58
    :cond_1
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fb$a;

    invoke-direct {v0, v10, v11}, Lcom/yelp/android/appdata/webrequests/fb$a;-><init>(Ljava/util/ArrayList;Landroid/os/Bundle;)V

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
    .line 19
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/fb;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/fb$a;

    move-result-object v0

    return-object v0
.end method
