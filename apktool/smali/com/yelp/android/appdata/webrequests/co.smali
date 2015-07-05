.class public Lcom/yelp/android/appdata/webrequests/co;
.super Lcom/yelp/android/appdata/webrequests/ah;
.source "HoursPhotoAddRequest.java"


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/YelpBusiness;ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/ah;-><init>(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/serializable/YelpBusiness;Z)V

    .line 31
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/co;->b:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/co;->a:Ljava/util/Collection;

    const-string/jumbo v1, "open_hours_image"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/ah;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/co;->b:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public b()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/co;->getPostParameters()Ljava/util/List;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 59
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_0
    const-string/jumbo v0, "image_path"

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/co;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-object v1
.end method

.method protected getPostEntity()Lorg/apache/http/HttpEntity;
    .locals 8

    .prologue
    .line 43
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/co;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/yelp/android/util/q;

    const-string/jumbo v2, "open_hours_image"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string/jumbo v3, "open_hours_image"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/yelp/android/util/q;-><init>([B[B[BLjava/io/InputStream;J)V

    .line 48
    new-instance v0, Lcom/yelp/android/util/p;

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/co;->getPostParameters()Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/yelp/android/util/p;-><init>(Ljava/util/Collection;Ljava/util/Collection;Lcom/yelp/android/util/n;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v2, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorInvalidData:I

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(Ljava/lang/Throwable;I)V

    throw v1
.end method
