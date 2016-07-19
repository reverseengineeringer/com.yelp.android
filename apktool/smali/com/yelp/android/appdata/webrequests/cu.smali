.class public Lcom/yelp/android/appdata/webrequests/cu;
.super Lcom/yelp/android/appdata/webrequests/core/b;
.source "MyCheckInsRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/webrequests/cu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/core/b",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/cu$a;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/cu$a;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/appdata/webrequests/core/b;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 32
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/cu;->a(Ljava/lang/String;I)V

    .line 33
    if-nez p4, :cond_0

    .line 34
    const-string/jumbo v0, "summary"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/cu;->a(Ljava/lang/String;I)V

    .line 36
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/cu$a;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 39
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "check_ins"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/yelp/android/appdata/webrequests/cu;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;I)V

    .line 40
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/cu$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 44
    const-string/jumbo v0, "businesses"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/cu;->i_()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->FULL:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/serializable/YelpBusiness;->b(Lorg/json/JSONArray;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Ljava/util/HashMap;

    move-result-object v1

    .line 47
    const-string/jumbo v0, "weekly_check_in_rank"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 48
    const-string/jumbo v0, "friend_check_in_rank"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 49
    const-string/jumbo v0, "friend_active_count"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 50
    const/4 v2, 0x0

    .line 51
    const-string/jumbo v0, "check_in_offer_summary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    sget-object v0, Lcom/yelp/android/serializable/OfferSummary;->CREATOR:Lcom/yelp/android/serializable/a;

    const-string/jumbo v2, "check_in_offer_summary"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/a;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/OfferSummary;

    move-object v2, v0

    .line 56
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cu$a;

    const-string/jumbo v6, "check_ins"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/yelp/android/serializable/YelpCheckIn;->a(Lorg/json/JSONArray;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/cu$a;-><init>(Ljava/util/List;Lcom/yelp/android/serializable/OfferSummary;III)V

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
    .line 24
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/cu;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/cu$a;

    move-result-object v0

    return-object v0
.end method
