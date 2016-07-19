.class public abstract Lcom/yelp/android/appdata/webrequests/ApiRequest;
.super Ljava/lang/Object;
.source "ApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/webrequests/ApiRequest$1;,
        Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;,
        Lcom/yelp/android/appdata/webrequests/ApiRequest$b;,
        Lcom/yelp/android/appdata/webrequests/ApiRequest$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Lcom/yelp/android/util/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/util/o",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected b:Lcom/yelp/android/services/d;

.field c:J

.field d:J

.field e:J

.field f:J

.field private g:Lcom/yelp/android/appdata/webrequests/YelpException;

.field private final h:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lorg/apache/http/client/HttpClient;

.field private k:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Lcom/yelp/android/appdata/webrequests/ApiRequest$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$a",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation
.end field

.field private n:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/yelp/android/util/o;

    invoke-direct {v0}, Lcom/yelp/android/util/o;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a:Lcom/yelp/android/util/o;

    return-void
.end method

.method protected constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lorg/apache/http/client/HttpClient;Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;",
            "Ljava/lang/String;",
            "Lorg/apache/http/client/HttpClient;",
            "Landroid/content/Context;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->n:Landroid/content/Context;

    .line 97
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->h:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    .line 98
    invoke-virtual {p0, p2}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->c(Ljava/lang/String;)Lcom/yelp/android/services/d;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->b:Lcom/yelp/android/services/d;

    .line 99
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->j:Lorg/apache/http/client/HttpClient;

    .line 100
    iput-object p5, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->k:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 101
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a:Lcom/yelp/android/util/o;

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/o;->a(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method protected constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lorg/apache/http/client/HttpClient;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;",
            "Ljava/lang/String;",
            "Lorg/apache/http/client/HttpClient;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 115
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->K()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/ApiRequest;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lorg/apache/http/client/HttpClient;Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 116
    return-void
.end method

.method private a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/HttpClient;Lcom/yelp/android/debug/Debug;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/HttpClient;",
            "Lcom/yelp/android/debug/Debug;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/yelp/android/appdata/webrequests/YelpException;
        }
    .end annotation

    .prologue
    .line 409
    .line 410
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 411
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->c:J

    .line 413
    invoke-static {p1}, Lcom/yelp/android/services/c;->a(Lorg/apache/http/HttpRequest;)V

    .line 415
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->w()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->w()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 417
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 420
    :cond_0
    invoke-interface {p2, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 423
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Lorg/apache/http/HttpResponse;)V

    .line 424
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 425
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->d:J

    .line 430
    const/16 v0, 0x12c

    if-lt v1, v0, :cond_1

    .line 431
    iget-wide v4, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->d:J

    iget-wide v6, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->c:J

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(ILorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    :cond_1
    const/4 v0, 0x0

    .line 440
    :try_start_1
    const-string/jumbo v1, "Content-Type"

    invoke-interface {v3, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 441
    if-eqz v1, :cond_2

    .line 442
    invoke-interface {v1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v2

    array-length v4, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v2, v1

    .line 443
    const-string/jumbo v6, "charset"

    invoke-interface {v5, v6}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v5

    .line 444
    if-eqz v5, :cond_5

    .line 445
    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 450
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 451
    const-string/jumbo v0, "utf-8"

    .line 453
    :cond_3
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yelp/android/services/c;->a(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->e:J

    .line 455
    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 460
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 461
    if-eqz v1, :cond_4

    .line 462
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 464
    :cond_4
    return-object v0

    .line 442
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 456
    :catch_0
    move-exception v0

    .line 457
    :try_start_2
    new-instance v0, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorInvalidData:I

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 460
    :catchall_0
    move-exception v0

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 461
    if-eqz v1, :cond_6

    .line 462
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 464
    :cond_6
    throw v0
.end method

.method private a(Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/debug/Debug;",
            "Z)TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorNotConnectedToInternet:I

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    throw v0

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->o()Ljava/lang/String;

    move-result-object v2

    .line 257
    const/4 v1, 0x0

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->g:Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 259
    const/4 v0, 0x0

    .line 261
    sget-object v3, Lcom/yelp/android/appdata/webrequests/ApiRequest$1;->a:[I

    iget-object v4, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->h:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    invoke-virtual {v4}, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 289
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "ApiRequest only supports POST, PUT and GET requests"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :pswitch_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->q()Ljava/lang/String;

    move-result-object v0

    .line 265
    if-nez v0, :cond_1

    .line 266
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 293
    :cond_1
    :goto_0
    const-wide/16 v10, -0x1

    .line 294
    if-nez v0, :cond_2

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->j:Lorg/apache/http/client/HttpClient;

    invoke-direct {p0, v1, v0, p1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/HttpClient;Lcom/yelp/android/debug/Debug;)Landroid/util/Pair;

    move-result-object v2

    .line 299
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 300
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lorg/apache/http/HttpResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    move-object v12, v0

    .line 318
    :goto_1
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->j()Z

    move-result v0

    if-nez v0, :cond_3

    .line 319
    const/4 v0, 0x0

    .line 346
    :goto_2
    return-object v0

    .line 270
    :pswitch_1
    new-instance v1, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :pswitch_2
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 275
    if-eqz v2, :cond_1

    .line 276
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 281
    :pswitch_3
    new-instance v1, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 283
    if-eqz v2, :cond_1

    .line 284
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    :try_start_1
    new-instance v1, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v2, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorUnknown:I

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(Ljava/lang/Throwable;I)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    :catchall_0
    move-exception v0

    .line 310
    invoke-static {}, Lcom/yelp/android/services/c;->a()V

    throw v0

    .line 304
    :catch_1
    move-exception v0

    .line 305
    :try_start_2
    new-instance v1, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v2, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerResponse:I

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(Ljava/lang/Throwable;I)V

    throw v1

    .line 306
    :catch_2
    move-exception v0

    .line 307
    new-instance v1, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v2, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerResponse:I

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(Ljava/lang/Throwable;I)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    :cond_2
    const-string/jumbo v2, "Cache hit!"

    invoke-static {p0, v2}, Lcom/yelp/android/util/YelpLog;->v(Ljava/lang/Object;Ljava/lang/String;)I

    move-object v12, v0

    goto :goto_1

    .line 323
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->f:J

    .line 325
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 331
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->c(Lorg/json/JSONObject;)V

    .line 332
    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->b(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v13

    .line 334
    if-eqz p2, :cond_4

    .line 335
    iget-wide v2, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->f:J

    iget-wide v4, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->c:J

    iget-wide v6, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->d:J

    iget-wide v8, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->e:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Lorg/apache/http/client/methods/HttpUriRequest;JJJJJ)V

    .line 345
    :cond_4
    invoke-virtual {p0, v12}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->d(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v0, v13

    .line 346
    goto :goto_2

    .line 326
    :catch_3
    move-exception v0

    .line 327
    new-instance v1, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v2, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorInvalidData:I

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(Ljava/lang/Throwable;I)V

    throw v1

    .line 347
    :catch_4
    move-exception v0

    .line 348
    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Lorg/json/JSONException;)V

    .line 349
    new-instance v1, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v2, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorInvalidData:I

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(Ljava/lang/Throwable;I)V

    throw v1

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Landroid/os/AsyncTask$Status;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Landroid/os/AsyncTask$Status;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 786
    if-nez p0, :cond_0

    .line 787
    const/4 v0, 0x0

    .line 789
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Landroid/os/AsyncTask$Status;)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs a([Lcom/yelp/android/appdata/webrequests/ApiRequest;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 848
    if-nez p0, :cond_1

    move v1, v2

    .line 856
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 851
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_3

    .line 852
    aget-object v3, p0, v0

    if-eqz v3, :cond_2

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 851
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 856
    goto :goto_0
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->n:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    :cond_0
    const/4 v0, 0x0

    .line 247
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/r;Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/r;",
            "Lcom/yelp/android/debug/Debug;",
            "Z)TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;
        }
    .end annotation

    .prologue
    .line 212
    .line 215
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/yelp/android/appdata/webrequests/YelpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    .line 216
    :catch_0
    move-exception v0

    .line 218
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->isRecoverable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    const-string/jumbo v1, "Intermittent error, retrying"

    invoke-static {p0, v1, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    invoke-direct {p0, p2, p3}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_0
    throw v0
.end method

.method protected a()Lorg/apache/http/HttpEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 176
    :try_start_0
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->i:Ljava/util/ArrayList;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentEncoding(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-object v0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error encoding HTTP POST request parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 184
    new-instance v1, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v2, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorUnknown:I

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(Ljava/lang/Throwable;I)V

    throw v1

    .line 187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract a(ILorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;
        }
    .end annotation
.end method

.method public final a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 608
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->k:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 609
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->l:Z

    .line 139
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->g:Lcom/yelp/android/appdata/webrequests/YelpException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->g:Lcom/yelp/android/appdata/webrequests/YelpException;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessageResource()I

    move-result v0

    sget v1, Lcom/yelp/android/co/a$j;->YPAPIErrorInvalidSessionToken:I

    if-ne v0, v1, :cond_0

    .line 141
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->K()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->J()Lcom/yelp/android/appdata/r;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/yelp/android/appdata/r;->a(Landroid/content/Context;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->g:Lcom/yelp/android/appdata/webrequests/YelpException;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->n()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->n()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->g:Lcom/yelp/android/appdata/webrequests/YelpException;

    invoke-interface {v0, p0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest$b;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->g:Lcom/yelp/android/appdata/webrequests/YelpException;

    if-nez v0, :cond_1

    .line 150
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 687
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/d;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 691
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 699
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 683
    const-string/jumbo v0, ","

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->h:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    if-ne v0, v1, :cond_0

    .line 672
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot add query parameters to a POST API request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->b:Lcom/yelp/android/services/d;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/services/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/services/d;

    .line 676
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 695
    if-eqz p2, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    return-void

    .line 695
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method protected a(Lorg/apache/http/HttpResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;
        }
    .end annotation

    .prologue
    .line 654
    return-void
.end method

.method public a(Lorg/apache/http/client/HttpClient;)V
    .locals 0

    .prologue
    .line 667
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->j:Lorg/apache/http/client/HttpClient;

    .line 668
    return-void
.end method

.method protected a(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 2

    .prologue
    .line 389
    const-string/jumbo v0, "x-screen-scale"

    invoke-static {}, Lcom/yelp/android/appdata/n;->a()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    const-string/jumbo v0, "Connection"

    const-string/jumbo v1, "close"

    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_0
    return-void
.end method

.method protected abstract a(Lorg/apache/http/client/methods/HttpUriRequest;JJJJJ)V
.end method

.method protected abstract a(Lorg/json/JSONException;)V
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->l:Z

    .line 475
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->m:Lcom/yelp/android/appdata/webrequests/ApiRequest$a;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->m:Lcom/yelp/android/appdata/webrequests/ApiRequest$a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/ApiRequest$a;->cancel(Z)Z

    .line 478
    :cond_0
    return-void
.end method

.method public a(Landroid/os/AsyncTask$Status;)Z
    .locals 1

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->m()Landroid/os/AsyncTask$Status;

    move-result-object v0

    if-eq v0, p1, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract b(Lorg/json/JSONObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->n()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->n()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/yelp/android/appdata/webrequests/ApiRequest$b;->onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V

    .line 162
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 724
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/d;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 732
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 728
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 720
    const-string/jumbo v0, ","

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->h:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    if-eq v0, v1, :cond_0

    .line 706
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot add post parameters to a non-POST API request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 710
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->i:Ljava/util/ArrayList;

    .line 712
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->i:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 736
    if-eqz p2, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    return-void

    .line 736
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method protected abstract c(Ljava/lang/String;)Lcom/yelp/android/services/d;
.end method

.method protected varargs c([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .prologue
    .line 120
    :try_start_0
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->K()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->J()Lcom/yelp/android/appdata/r;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->K()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/BaseYelpApplication;->t()Lcom/yelp/android/debug/Debug;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->p()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Lcom/yelp/android/appdata/r;Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/yelp/android/appdata/webrequests/YelpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->g:Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 126
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 471
    return-void
.end method

.method protected abstract c(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;,
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method protected d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 644
    return-void
.end method

.method varargs d([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 469
    return-void
.end method

.method protected e()V
    .locals 0

    .prologue
    .line 467
    return-void
.end method

.method protected final varargs e([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->m:Lcom/yelp/android/appdata/webrequests/ApiRequest$a;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->m:Lcom/yelp/android/appdata/webrequests/ApiRequest$a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/ApiRequest$a;->a([Ljava/lang/Object;)V

    .line 502
    :cond_0
    return-void
.end method

.method public final varargs f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 505
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->m:Lcom/yelp/android/appdata/webrequests/ApiRequest$a;

    if-nez v0, :cond_0

    .line 506
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$a;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest$a;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->m:Lcom/yelp/android/appdata/webrequests/ApiRequest$a;

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->m:Lcom/yelp/android/appdata/webrequests/ApiRequest$a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/ApiRequest$a;->c([Ljava/lang/Object;)Lcom/yelp/android/util/q;

    .line 509
    return-object p0
.end method

.method protected g()Landroid/content/Context;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->n:Landroid/content/Context;

    return-object v0
.end method

.method public final varargs g([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 513
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ApiRequest$a;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest$a;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->m:Lcom/yelp/android/appdata/webrequests/ApiRequest$a;

    .line 514
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->l:Z

    .line 515
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->m:Lcom/yelp/android/appdata/webrequests/ApiRequest$a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/ApiRequest$a;->c([Ljava/lang/Object;)Lcom/yelp/android/util/q;

    .line 516
    return-object p0
.end method

.method protected h()Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->h:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    return-object v0
.end method

.method public i()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;
        }
    .end annotation

    .prologue
    .line 230
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->K()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->J()Lcom/yelp/android/appdata/r;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->K()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/BaseYelpApplication;->t()Lcom/yelp/android/debug/Debug;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->p()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Lcom/yelp/android/appdata/r;Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected j()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method protected k()Z
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->m:Lcom/yelp/android/appdata/webrequests/ApiRequest$a;

    if-nez v0, :cond_0

    .line 482
    const/4 v0, 0x0

    .line 484
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->m:Lcom/yelp/android/appdata/webrequests/ApiRequest$a;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest$a;->isCancelled()Z

    move-result v0

    goto :goto_0
.end method

.method public final m()Landroid/os/AsyncTask$Status;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->m:Lcom/yelp/android/appdata/webrequests/ApiRequest$a;

    if-nez v0, :cond_0

    .line 490
    sget-object v0, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    .line 492
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->m:Lcom/yelp/android/appdata/webrequests/ApiRequest$a;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest$a;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    goto :goto_0
.end method

.method public final n()Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<TResult;>;"
        }
    .end annotation

    .prologue
    .line 604
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->k:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-object v0
.end method

.method protected abstract o()Ljava/lang/String;
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x1

    return v0
.end method

.method protected q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 631
    const/4 v0, 0x0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->b:Lcom/yelp/android/services/d;

    invoke-virtual {v0}, Lcom/yelp/android/services/d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->j:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method protected t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 740
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public u()Z
    .locals 2

    .prologue
    .line 749
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->m()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->v()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()Z
    .locals 1

    .prologue
    .line 762
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->l:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()Ljava/util/List;
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
    .line 813
    const/4 v0, 0x0

    return-object v0
.end method
