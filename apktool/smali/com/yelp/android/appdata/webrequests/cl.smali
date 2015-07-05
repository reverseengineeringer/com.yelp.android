.class public Lcom/yelp/android/appdata/webrequests/cl;
.super Lcom/yelp/android/av/g;
.source "FriendFinderRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/cm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/Iterable;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/cm;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 35
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "user/friend_finder_v2"

    invoke-direct {p0, v0, v1, p1}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 36
    if-eqz p2, :cond_0

    .line 37
    const-string/jumbo v0, "emails"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/cl;->addPostParam(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 39
    :cond_0
    const-string/jumbo v0, "ignored"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/cl;->addPostParam(Ljava/lang/String;Z)V

    .line 40
    const-string/jumbo v0, "include_facebook"

    invoke-virtual {p0, v0, p4}, Lcom/yelp/android/appdata/webrequests/cl;->addPostParam(Ljava/lang/String;Z)V

    .line 41
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/cm;
    .locals 7

    .prologue
    .line 45
    const-string/jumbo v0, "users"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/ah;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v2

    .line 46
    const-string/jumbo v0, "ignored_count"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 48
    const-string/jumbo v1, "user_id_to_email"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    const-string/jumbo v0, "user_id_to_email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v0, v5}, Ljava/util/HashMap;-><init>(IF)V

    .line 51
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 57
    :cond_1
    new-instance v1, Lcom/yelp/android/appdata/webrequests/cm;

    invoke-direct {v1, v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/cm;-><init>(Ljava/util/Map;Ljava/util/ArrayList;I)V

    return-object v1
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/cl;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/cm;

    move-result-object v0

    return-object v0
.end method
