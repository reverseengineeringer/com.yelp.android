.class public abstract Lcom/yelp/android/appdata/webrequests/ApiRequest;
.super Ljava/lang/Object;
.source "ApiRequest.java"


# annotations
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
.field public static final ACCURACY_KEY:Ljava/lang/String; = "accuracy"

.field private static final CURRENT_REQUESTS:Lcom/yelp/android/util/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/util/y",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;>;"
        }
    .end annotation
.end field

.field public static final LATITUDE_KEY:Ljava/lang/String; = "latitude"

.field public static final LONGITUDE_KEY:Ljava/lang/String; = "longitude"


# instance fields
.field private mCallback:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mException:Lcom/yelp/android/appdata/webrequests/YelpException;

.field private mHttpClient:Lorg/apache/http/client/HttpClient;

.field private mIsFinished:Z

.field private mPostParameters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field protected mQuery:Lcom/yelp/android/services/j;

.field private final mRequestType:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

.field private mTask:Lcom/yelp/android/appdata/webrequests/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/l",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation
.end field

.field mTimeRequestRecievedBody:J

.field mTimeRequestRecievedHeader:J

.field mTimeRequestStarted:J

.field mTimeRequestStartedParsing:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/yelp/android/util/y;

    invoke-direct {v0}, Lcom/yelp/android/util/y;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->CURRENT_REQUESTS:Lcom/yelp/android/util/y;

    return-void
.end method

.method protected constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lorg/apache/http/client/HttpClient;Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;",
            "Ljava/lang/String;",
            "Lorg/apache/http/client/HttpClient;",
            "Landroid/content/Context;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p4, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mContext:Landroid/content/Context;

    .line 93
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mRequestType:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    .line 94
    invoke-virtual {p0, p2}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->getQuery(Ljava/lang/String;)Lcom/yelp/android/services/j;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mQuery:Lcom/yelp/android/services/j;

    .line 95
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 96
    iput-object p5, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mCallback:Lcom/yelp/android/appdata/webrequests/m;

    .line 97
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->CURRENT_REQUESTS:Lcom/yelp/android/util/y;

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/y;->a(Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method protected constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lorg/apache/http/client/HttpClient;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;",
            "Ljava/lang/String;",
            "Lorg/apache/http/client/HttpClient;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->z()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/ApiRequest;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lorg/apache/http/client/HttpClient;Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 109
    return-void
.end method

.method public static varargs abortIfAny(Lcom/yelp/android/appdata/webrequests/ApiRequest;[Landroid/os/AsyncTask$Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;[",
            "Landroid/os/AsyncTask$Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 753
    if-eqz p0, :cond_0

    .line 754
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->abortIfAny([Landroid/os/AsyncTask$Status;)V

    .line 756
    :cond_0
    return-void
.end method

.method private executeApiRequest(Lcom/yelp/android/appdata/bc;Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/bc;",
            "Lcom/yelp/android/debug/Debug;",
            "Z)TResult;"
        }
    .end annotation

    .prologue
    .line 235
    invoke-direct/range {p0 .. p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->isNetworkConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 236
    new-instance v2, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v3, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorNotConnectedToInternet:I

    invoke-direct {v2, v3}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    throw v2

    .line 239
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->getUri()Ljava/lang/String;

    move-result-object v4

    .line 240
    const/4 v3, 0x0

    .line 241
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mException:Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 242
    const/4 v2, 0x0

    .line 244
    sget-object v5, Lcom/yelp/android/appdata/webrequests/k;->a:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mRequestType:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    invoke-virtual {v6}, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 272
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "ApiRequest only supports POST, PUT and GET requests"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->getRawResponseFromCache()Ljava/lang/String;

    move-result-object v2

    .line 248
    if-nez v2, :cond_1

    .line 249
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 276
    :cond_1
    :goto_0
    const-wide/16 v12, -0x1

    .line 277
    if-nez v2, :cond_2

    .line 280
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mHttpClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v2, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->executeHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/HttpClient;Lcom/yelp/android/debug/Debug;)Landroid/util/Pair;

    move-result-object v4

    .line 282
    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 283
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lorg/apache/http/HttpResponse;

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    move-object v14, v2

    .line 301
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->isYelpRequest()Z

    move-result v2

    if-nez v2, :cond_3

    .line 302
    const/4 v2, 0x0

    .line 324
    :goto_2
    return-object v2

    .line 253
    :pswitch_1
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :pswitch_2
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->getPostEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 258
    if-eqz v4, :cond_1

    .line 259
    invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 264
    :pswitch_3
    new-instance v3, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->getPostEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 266
    if-eqz v4, :cond_1

    .line 267
    invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_0

    .line 285
    :catch_0
    move-exception v2

    .line 286
    :try_start_1
    new-instance v3, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v4, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorUnknown:I

    invoke-direct {v3, v2, v4}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(Ljava/lang/Throwable;I)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    :catchall_0
    move-exception v2

    .line 293
    invoke-static {}, Lcom/yelp/android/services/d;->a()V

    throw v2

    .line 287
    :catch_1
    move-exception v2

    .line 288
    :try_start_2
    new-instance v3, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v4, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerResponse:I

    invoke-direct {v3, v2, v4}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(Ljava/lang/Throwable;I)V

    throw v3

    .line 289
    :catch_2
    move-exception v2

    .line 290
    new-instance v3, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v4, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerResponse:I

    invoke-direct {v3, v2, v4}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(Ljava/lang/Throwable;I)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    :cond_2
    const-string/jumbo v4, "Cache hit!"

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/yelp/android/util/YelpLog;->v(Ljava/lang/Object;Ljava/lang/String;)I

    move-object v14, v2

    goto :goto_1

    .line 306
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mTimeRequestStartedParsing:J

    .line 308
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 314
    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->onProcessingStarted(Lorg/json/JSONObject;)V

    .line 315
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->process(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v15

    .line 317
    if-eqz p3, :cond_4

    .line 318
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mTimeRequestStartedParsing:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mTimeRequestStarted:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mTimeRequestRecievedHeader:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mTimeRequestRecievedBody:J

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v13}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->sendMetrics(Lorg/apache/http/client/methods/HttpUriRequest;JJJJJ)V

    .line 323
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->cacheRawResponse(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v2, v15

    .line 324
    goto/16 :goto_2

    .line 309
    :catch_3
    move-exception v2

    .line 310
    new-instance v3, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v4, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorInvalidData:I

    invoke-direct {v3, v2, v4}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(Ljava/lang/Throwable;I)V

    throw v3

    .line 325
    :catch_4
    move-exception v2

    .line 326
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->onJSONException(Lorg/json/JSONException;)V

    .line 327
    new-instance v3, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v4, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorInvalidData:I

    invoke-direct {v3, v2, v4}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(Ljava/lang/Throwable;I)V

    throw v3

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private executeHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/HttpClient;Lcom/yelp/android/debug/Debug;)Landroid/util/Pair;
    .locals 7
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

    .prologue
    .line 358
    .line 360
    const-string/jumbo v0, "x-screen-scale"

    invoke-static {}, Lcom/yelp/android/appdata/ao;->a()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string/jumbo v0, "Connection"

    const-string/jumbo v1, "close"

    invoke-interface {p1, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mTimeRequestStarted:J

    .line 368
    invoke-static {p1}, Lcom/yelp/android/services/d;->a(Lorg/apache/http/HttpRequest;)V

    .line 370
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->getExtraRequestHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->getExtraRequestHeaders()Ljava/util/List;

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

    .line 372
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_0
    invoke-interface {p2, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 378
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->validateResponse(Lorg/apache/http/HttpResponse;)V

    .line 379
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 380
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mTimeRequestRecievedHeader:J

    .line 385
    const/16 v1, 0x12c

    if-lt v0, v1, :cond_1

    .line 386
    invoke-virtual {p0, v0, p1, v2}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->onStatusCodeError(ILorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    :cond_1
    const/4 v0, 0x0

    .line 390
    :try_start_1
    const-string/jumbo v1, "Content-Type"

    invoke-interface {v2, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 391
    if-eqz v1, :cond_2

    .line 392
    invoke-interface {v1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 393
    const-string/jumbo v6, "charset"

    invoke-interface {v5, v6}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v5

    .line 394
    if-eqz v5, :cond_5

    .line 395
    invoke-interface {v5}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 400
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 401
    const-string/jumbo v0, "utf-8"

    .line 403
    :cond_3
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yelp/android/services/d;->a(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mTimeRequestRecievedBody:J

    .line 405
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 410
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 411
    if-eqz v1, :cond_4

    .line 412
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 414
    :cond_4
    return-object v0

    .line 392
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 406
    :catch_0
    move-exception v0

    .line 407
    :try_start_2
    new-instance v0, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorInvalidData:I

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 410
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 411
    if-eqz v1, :cond_6

    .line 412
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 414
    :cond_6
    throw v0
.end method

.method public static getLiveRequests()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;>;"
        }
    .end annotation

    .prologue
    .line 706
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->CURRENT_REQUESTS:Lcom/yelp/android/util/y;

    invoke-virtual {v0}, Lcom/yelp/android/util/y;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static is(Lcom/yelp/android/appdata/webrequests/ApiRequest;Landroid/os/AsyncTask$Status;)Z
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
    .line 739
    if-nez p0, :cond_0

    .line 740
    const/4 v0, 0x0

    .line 742
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->is(Landroid/os/AsyncTask$Status;)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs isAny(Lcom/yelp/android/appdata/webrequests/ApiRequest;[Landroid/os/AsyncTask$Status;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;[",
            "Landroid/os/AsyncTask$Status;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 746
    if-nez p0, :cond_0

    .line 747
    const/4 v0, 0x0

    .line 749
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->isAny([Landroid/os/AsyncTask$Status;)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs isCompleted([Lcom/yelp/android/appdata/webrequests/ApiRequest;)Z
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

    .line 798
    if-nez p0, :cond_1

    move v1, v2

    .line 806
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 801
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_3

    .line 802
    aget-object v3, p0, v0

    if-eqz v3, :cond_2

    aget-object v3, p0, v0

    invoke-virtual {v3}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 801
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 806
    goto :goto_0
.end method

.method private isNetworkConnected()Z
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    :cond_0
    const/4 v0, 0x0

    .line 229
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static varargs isNullOr(Lcom/yelp/android/appdata/webrequests/ApiRequest;[Landroid/os/AsyncTask$Status;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;[",
            "Landroid/os/AsyncTask$Status;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 759
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->isAny([Landroid/os/AsyncTask$Status;)Z

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


# virtual methods
.method public varargs abortIfAny([Landroid/os/AsyncTask$Status;)V
    .locals 1

    .prologue
    .line 733
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->isAny([Landroid/os/AsyncTask$Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->cancel(Z)V

    .line 736
    :cond_0
    return-void
.end method

.method public addPostParam(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 677
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/util/f;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method public addPostParam(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 685
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method public addPostParam(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 681
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    return-void
.end method

.method public addPostParam(Ljava/lang/String;Ljava/lang/Iterable;)V
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
    .line 673
    const-string/jumbo v0, ","

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    return-void
.end method

.method public addPostParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mRequestType:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;->POST:Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;

    if-eq v0, v1, :cond_0

    .line 659
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot add post parameters to a non-POST API request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mPostParameters:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 663
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mPostParameters:Ljava/util/ArrayList;

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mPostParameters:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    return-void
.end method

.method public addPostParam(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 689
    if-eqz p2, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    return-void

    .line 689
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public addPostParam(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 669
    const-string/jumbo v0, ","

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    return-void
.end method

.method public addUrlParam(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mQuery:Lcom/yelp/android/services/j;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/services/j;->a(Ljava/lang/String;D)Lcom/yelp/android/services/j;

    .line 640
    return-void
.end method

.method public addUrlParam(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mQuery:Lcom/yelp/android/services/j;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/services/j;->a(Ljava/lang/String;I)Lcom/yelp/android/services/j;

    .line 644
    return-void
.end method

.method public addUrlParam(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mQuery:Lcom/yelp/android/services/j;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/services/j;->a(Ljava/lang/String;J)Lcom/yelp/android/services/j;

    .line 652
    return-void
.end method

.method public addUrlParam(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 635
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mQuery:Lcom/yelp/android/services/j;

    const-string/jumbo v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/services/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/services/j;

    .line 636
    return-void
.end method

.method public addUrlParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mQuery:Lcom/yelp/android/services/j;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/services/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/services/j;

    .line 628
    return-void
.end method

.method public addUrlParam(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mQuery:Lcom/yelp/android/services/j;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/services/j;->a(Ljava/lang/String;Z)Lcom/yelp/android/services/j;

    .line 648
    return-void
.end method

.method public addUrlParam(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mQuery:Lcom/yelp/android/services/j;

    const-string/jumbo v1, ","

    invoke-static {v1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/services/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/services/j;

    .line 632
    return-void
.end method

.method protected cacheRawResponse(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 600
    return-void
.end method

.method public final cancel(Z)V
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mIsFinished:Z

    .line 431
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mTask:Lcom/yelp/android/appdata/webrequests/l;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mTask:Lcom/yelp/android/appdata/webrequests/l;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/l;->cancel(Z)Z

    .line 434
    :cond_0
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation

    .prologue
    .line 113
    :try_start_0
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->z()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->y()Lcom/yelp/android/appdata/bc;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->z()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/BaseYelpApplication;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->sendMetricsForRequest()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->executeSynchronously(Lcom/yelp/android/appdata/bc;Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/yelp/android/appdata/webrequests/YelpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mException:Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 118
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mTask:Lcom/yelp/android/appdata/webrequests/l;

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Lcom/yelp/android/appdata/webrequests/l;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/webrequests/l;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mTask:Lcom/yelp/android/appdata/webrequests/l;

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mTask:Lcom/yelp/android/appdata/webrequests/l;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/l;->c([Ljava/lang/Object;)Lcom/yelp/android/util/aa;

    .line 465
    return-object p0
.end method

.method public final varargs executeRepeatable([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 469
    new-instance v0, Lcom/yelp/android/appdata/webrequests/l;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/webrequests/l;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mTask:Lcom/yelp/android/appdata/webrequests/l;

    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mIsFinished:Z

    .line 471
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mTask:Lcom/yelp/android/appdata/webrequests/l;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/l;->c([Ljava/lang/Object;)Lcom/yelp/android/util/aa;

    .line 472
    return-object p0
.end method

.method public executeSynchronously()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 214
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->z()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->y()Lcom/yelp/android/appdata/bc;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->z()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/BaseYelpApplication;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->sendMetricsForRequest()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->executeSynchronously(Lcom/yelp/android/appdata/bc;Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public executeSynchronously(Lcom/yelp/android/appdata/bc;Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/bc;",
            "Lcom/yelp/android/debug/Debug;",
            "Z)TResult;"
        }
    .end annotation

    .prologue
    .line 196
    .line 199
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->executeApiRequest(Lcom/yelp/android/appdata/bc;Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/yelp/android/appdata/webrequests/YelpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 210
    :goto_0
    return-object v0

    .line 200
    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->isRecoverable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    const-string/jumbo v1, "Intermittent error, retrying"

    invoke-static {p0, v1, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->executeApiRequest(Lcom/yelp/android/appdata/bc;Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 207
    :cond_0
    throw v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .prologue
    .line 476
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mTask:Lcom/yelp/android/appdata/webrequests/l;

    if-nez v0, :cond_0

    .line 477
    new-instance v0, Lcom/yelp/android/appdata/webrequests/l;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/webrequests/l;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mTask:Lcom/yelp/android/appdata/webrequests/l;

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mTask:Lcom/yelp/android/appdata/webrequests/l;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/l;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCacheDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mQuery:Lcom/yelp/android/services/j;

    invoke-virtual {v0}, Lcom/yelp/android/services/j;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCallback()Lcom/yelp/android/appdata/webrequests/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<TResult;>;"
        }
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mCallback:Lcom/yelp/android/appdata/webrequests/m;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getException()Lcom/yelp/android/appdata/webrequests/YelpException;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mException:Lcom/yelp/android/appdata/webrequests/YelpException;

    return-object v0
.end method

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
    .line 766
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mHttpClient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method protected getPostEntity()Lorg/apache/http/HttpEntity;
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mPostParameters:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mPostParameters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 168
    :try_start_0
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mPostParameters:Ljava/util/ArrayList;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentEncoding(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    :goto_0
    return-object v0

    .line 172
    :catch_0
    move-exception v0

    .line 173
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

    .line 175
    new-instance v1, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v2, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorUnknown:I

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(Ljava/lang/Throwable;I)V

    throw v1

    .line 178
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getPostParameters()Ljava/util/List;
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
    .line 693
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mPostParameters:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected abstract getQuery(Ljava/lang/String;)Lcom/yelp/android/services/j;
.end method

.method protected getRawResponseFromCache()Ljava/lang/String;
    .locals 1

    .prologue
    .line 587
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getStatus()Landroid/os/AsyncTask$Status;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mTask:Lcom/yelp/android/appdata/webrequests/l;

    if-nez v0, :cond_0

    .line 446
    sget-object v0, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    .line 448
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mTask:Lcom/yelp/android/appdata/webrequests/l;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/l;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract getUri()Ljava/lang/String;
.end method

.method public is(Landroid/os/AsyncTask$Status;)Z
    .locals 1

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    if-eq v0, p1, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->isFetching()Z

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

.method public varargs isAny([Landroid/os/AsyncTask$Status;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 719
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    .line 720
    array-length v3, p1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p1, v1

    .line 721
    if-eq v2, v4, :cond_0

    sget-object v5, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->isFetching()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 722
    :cond_0
    const/4 v0, 0x1

    .line 725
    :cond_1
    return v0

    .line 720
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mTask:Lcom/yelp/android/appdata/webrequests/l;

    if-nez v0, :cond_0

    .line 438
    const/4 v0, 0x0

    .line 440
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mTask:Lcom/yelp/android/appdata/webrequests/l;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/l;->isCancelled()Z

    move-result v0

    goto :goto_0
.end method

.method public isCompleted()Z
    .locals 1

    .prologue
    .line 715
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mIsFinished:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->isCancelled()Z

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

.method public isFetching()Z
    .locals 2

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isYelpRequest()Z
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 427
    return-void
.end method

.method protected abstract onJSONException(Lorg/json/JSONException;)V
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mIsFinished:Z

    .line 131
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mException:Lcom/yelp/android/appdata/webrequests/YelpException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mException:Lcom/yelp/android/appdata/webrequests/YelpException;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessageResource()I

    move-result v0

    sget v1, Lcom/yelp/android/bf/k;->YPAPIErrorInvalidSessionToken:I

    if-ne v0, v1, :cond_0

    .line 133
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->z()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->y()Lcom/yelp/android/appdata/bc;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/yelp/android/appdata/bc;->a(Landroid/content/Context;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mException:Lcom/yelp/android/appdata/webrequests/YelpException;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->getCallback()Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->getCallback()Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mException:Lcom/yelp/android/appdata/webrequests/YelpException;

    invoke-interface {v0, p0, v1}, Lcom/yelp/android/appdata/webrequests/m;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mException:Lcom/yelp/android/appdata/webrequests/YelpException;

    if-nez v0, :cond_1

    .line 142
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 419
    return-void
.end method

.method protected abstract onProcessingStarted(Lorg/json/JSONObject;)V
.end method

.method varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 423
    return-void
.end method

.method protected abstract onStatusCodeError(ILorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->getCallback()Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->getCallback()Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/yelp/android/appdata/webrequests/m;->onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V

    .line 154
    :cond_0
    return-void
.end method

.method public abstract process(Lorg/json/JSONObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TResult;"
        }
    .end annotation
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mTask:Lcom/yelp/android/appdata/webrequests/l;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mTask:Lcom/yelp/android/appdata/webrequests/l;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/l;->a([Ljava/lang/Object;)V

    .line 458
    :cond_0
    return-void
.end method

.method protected abstract sendMetrics(Lorg/apache/http/client/methods/HttpUriRequest;JJJJJ)V
.end method

.method public sendMetricsForRequest()Z
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x1

    return v0
.end method

.method public final setCallback(Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<TResult;>;)V"
        }
    .end annotation

    .prologue
    .line 564
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mCallback:Lcom/yelp/android/appdata/webrequests/m;

    .line 565
    return-void
.end method

.method public setHttpClient(Lorg/apache/http/client/HttpClient;)V
    .locals 0

    .prologue
    .line 623
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/ApiRequest;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 624
    return-void
.end method

.method protected validateResponse(Lorg/apache/http/HttpResponse;)V
    .locals 0

    .prologue
    .line 610
    return-void
.end method
