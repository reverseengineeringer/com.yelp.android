.class public Lcom/yelp/android/appdata/webrequests/hb;
.super Lcom/yelp/android/av/h;
.source "VideoUploadRequest.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->PUT:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/yelp/android/av/h;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 24
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/hb;->a:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/hb;->b:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/hb;->c:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public getExtraRequestHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/hb;->c:Ljava/util/List;

    return-object v0
.end method

.method protected getPostEntity()Lorg/apache/http/HttpEntity;
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lorg/apache/http/entity/FileEntity;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/hb;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/http/entity/FileEntity;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/hb;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected isYelpRequest()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method protected validateResponse(Lorg/apache/http/HttpResponse;)V
    .locals 3

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/yelp/android/av/h;->validateResponse(Lorg/apache/http/HttpResponse;)V

    .line 51
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 52
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    array-length v1, v1

    .line 53
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    if-nez v1, :cond_0

    .line 54
    new-instance v0, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerResponse:I

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    throw v0

    .line 56
    :cond_0
    return-void
.end method
