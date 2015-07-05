.class public Lcom/yelp/android/appdata/webrequests/f;
.super Lcom/yelp/android/av/g;
.source "AddFriendsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "user/add_friends"

    invoke-direct {p0, v0, v1, p4}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 31
    if-eqz p1, :cond_0

    .line 32
    const-string/jumbo v0, "user_ids"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/f;->addPostParam(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 33
    :cond_0
    if-eqz p2, :cond_1

    .line 34
    const-string/jumbo v0, "ignore_user_ids"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/f;->addPostParam(Ljava/lang/String;Ljava/lang/Iterable;)V

    .line 35
    :cond_1
    if-eqz p3, :cond_2

    .line 36
    const-string/jumbo v0, "message"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/f;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 42
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 44
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 45
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 46
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 47
    const-string/jumbo v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "user_id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    return-object v3
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/f;->a(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
