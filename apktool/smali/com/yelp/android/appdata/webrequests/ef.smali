.class public Lcom/yelp/android/appdata/webrequests/ef;
.super Lcom/yelp/android/av/g;
.source "RegularCheckInsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/YelpCheckIn;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 25
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->GET:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "check_ins/regular"

    invoke-direct {p0, v0, v1, p1}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 26
    const-string/jumbo v0, "offset"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/ef;->addUrlParam(Ljava/lang/String;I)V

    .line 27
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/ef;->a:Ljava/lang/String;

    .line 28
    if-eqz p2, :cond_0

    .line 29
    const-string/jumbo v0, "user_id"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/ef;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    const-string/jumbo v0, "businesses"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ef;->getRequestId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->FULL:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/serializable/YelpBusiness;->jsonBusinessesToMap(Lorg/json/JSONArray;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Ljava/util/HashMap;

    move-result-object v0

    .line 41
    const-string/jumbo v1, "check_ins"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yelp/android/serializable/YelpCheckIn;->checkInsFromJSONArray(Lorg/json/JSONArray;Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ef;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
