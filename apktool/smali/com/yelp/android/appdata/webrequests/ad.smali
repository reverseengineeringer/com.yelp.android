.class public Lcom/yelp/android/appdata/webrequests/ad;
.super Lcom/yelp/android/appdata/webrequests/core/b;
.source "BusinessPhotoUploadRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/core/b",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/serializable/Photo;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 18
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "business/add_image"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/core/b;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 19
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/ad;->a:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "biz_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {p2}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    const-string/jumbo v0, "caption"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/ad;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Photo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 34
    sget-object v0, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "photo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    return-object v0
.end method

.method protected a()Lorg/apache/http/HttpEntity;
    .locals 3

    .prologue
    .line 28
    const-string/jumbo v0, "image"

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/ad;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ad;->t()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/util/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpEntity;

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
    .line 13
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ad;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method
