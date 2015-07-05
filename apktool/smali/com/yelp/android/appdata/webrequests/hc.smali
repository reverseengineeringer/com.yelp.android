.class public Lcom/yelp/android/appdata/webrequests/hc;
.super Lcom/yelp/android/av/g;
.source "VideoUploadUrlRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/hd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 19
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "/business/video/upload_url_with_headers"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 20
    const-string/jumbo v0, "biz_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/hc;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string/jumbo v0, "md5_hash"

    invoke-static {p2}, Lcom/yelp/android/util/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/hc;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/hd;
    .locals 9

    .prologue
    .line 31
    const-string/jumbo v0, "upload_url"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 32
    const-string/jumbo v0, "video_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 35
    const-string/jumbo v0, "http_headers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 36
    invoke-virtual {v5}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v6

    .line 37
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 38
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 40
    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v0, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/hd;

    invoke-direct {v0, v2, v3, v4}, Lcom/yelp/android/appdata/webrequests/hd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method protected a(Lcom/yelp/android/appdata/webrequests/hd;)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method protected synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lcom/yelp/android/appdata/webrequests/hd;

    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/hc;->a(Lcom/yelp/android/appdata/webrequests/hd;)V

    return-void
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/hc;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/hd;

    move-result-object v0

    return-object v0
.end method
