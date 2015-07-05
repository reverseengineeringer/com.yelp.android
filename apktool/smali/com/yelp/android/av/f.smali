.class public Lcom/yelp/android/av/f;
.super Lcom/yelp/android/av/g;
.source "MetricsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/av/g",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:[B

.field private static final d:[B


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/analytics/b;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "data"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/yelp/android/av/f;->c:[B

    .line 31
    const-string/jumbo v0, "application/gzip"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/yelp/android/av/f;->d:[B

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/analytics/b;",
            ">;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    const-string/jumbo v1, "analytics"

    invoke-direct {p0, v0, v1, p2}, Lcom/yelp/android/av/g;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 38
    iput-object p1, p0, Lcom/yelp/android/av/f;->a:Ljava/util/List;

    .line 39
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/lang/Void;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/io/File;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/yelp/android/av/f;->b:Ljava/io/File;

    .line 89
    return-void
.end method

.method public getPostEntity()Lorg/apache/http/HttpEntity;
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/yelp/android/av/f;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/av/f;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/yelp/android/av/f;->b:Ljava/io/File;

    invoke-static {v1}, Lcom/yelp/android/util/StringUtils;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/av/f;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/yelp/android/av/a;->a(Ljava/util/List;ZLorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 59
    :try_start_1
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 61
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 65
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 67
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 68
    new-instance v1, Lcom/yelp/android/util/q;

    sget-object v2, Lcom/yelp/android/av/f;->c:[B

    sget-object v3, Lcom/yelp/android/av/f;->c:[B

    sget-object v4, Lcom/yelp/android/av/f;->d:[B

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v0, v0

    int-to-long v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/yelp/android/util/q;-><init>([B[B[BLjava/io/InputStream;J)V

    invoke-virtual {v9, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Lcom/yelp/android/util/p;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1, v9, v8}, Lcom/yelp/android/util/p;-><init>(Ljava/util/Collection;Ljava/util/Collection;Lcom/yelp/android/util/n;)V

    return-object v0

    .line 47
    :catch_0
    move-exception v0

    move-object v0, v8

    .line 51
    goto :goto_0

    .line 49
    :catch_1
    move-exception v0

    move-object v0, v8

    goto :goto_0

    .line 62
    :catch_2
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, v8

    goto :goto_0
.end method

.method public synthetic process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/yelp/android/av/f;->a(Lorg/json/JSONObject;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public sendMetricsForRequest()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method
