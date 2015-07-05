.class public Lcom/yelp/android/appdata/webrequests/aa;
.super Lcom/yelp/android/av/g;
.source "BusinessPhotoUploadRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
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
    .line 20
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "business/add_image"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 21
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/aa;->a:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "biz_id"

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/appdata/webrequests/aa;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {p2}, Lcom/yelp/android/util/StringUtils;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    const-string/jumbo v0, "caption"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/aa;->addUrlParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Photo;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "photo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    return-object v0
.end method

.method protected getPostEntity()Lorg/apache/http/HttpEntity;
    .locals 3

    .prologue
    .line 30
    const-string/jumbo v0, "image"

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/aa;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/aa;->getPostParameters()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/util/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    return-object v0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/aa;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method
