.class public Lcom/yelp/android/appdata/webrequests/fk;
.super Lcom/yelp/android/appdata/webrequests/core/b;
.source "UserPhotoUpload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/webrequests/fk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/core/b",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/yelp/android/appdata/webrequests/fk$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z

.field private final g:Lorg/apache/http/HttpEntity;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/fk$a;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 40
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "account/add_image"

    invoke-direct {p0, v0, v1, p4}, Lcom/yelp/android/appdata/webrequests/core/b;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 42
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    const-string/jumbo v0, "caption"

    invoke-virtual {p0, v0, p2}, Lcom/yelp/android/appdata/webrequests/fk;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    const-string/jumbo v0, "primary"

    invoke-virtual {p0, v0, p3}, Lcom/yelp/android/appdata/webrequests/fk;->b(Ljava/lang/String;Z)V

    .line 46
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcom/yelp/android/util/j$a;

    sget-object v2, Lcom/yelp/android/util/g;->i:[B

    sget-object v3, Lcom/yelp/android/util/g;->i:[B

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/yelp/android/util/j$a;-><init>([B[B[BLjava/io/InputStream;J)V

    .line 54
    new-instance v0, Lcom/yelp/android/util/j;

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/fk;->t()Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v2, v1, v4}, Lcom/yelp/android/util/j;-><init>(Ljava/util/Collection;Ljava/util/Collection;Lcom/yelp/android/util/g$a;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/fk;->g:Lorg/apache/http/HttpEntity;

    .line 55
    iput-boolean p3, p0, Lcom/yelp/android/appdata/webrequests/fk;->a:Z

    .line 56
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/fk$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 65
    sget-object v0, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "photo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    .line 66
    new-instance v1, Lcom/yelp/android/appdata/webrequests/fk$a;

    iget-boolean v2, p0, Lcom/yelp/android/appdata/webrequests/fk;->a:Z

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/fk$a;-><init>(Lcom/yelp/android/serializable/Photo;Z)V

    .line 67
    return-object v1
.end method

.method protected a()Lorg/apache/http/HttpEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/fk;->g:Lorg/apache/http/HttpEntity;

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
    .line 20
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/fk;->a(Lorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/fk$a;

    move-result-object v0

    return-object v0
.end method
