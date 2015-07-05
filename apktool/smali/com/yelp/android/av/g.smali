.class public abstract Lcom/yelp/android/av/g;
.super Lcom/yelp/android/appdata/webrequests/ApiRequest;
.source "YelpApiRequest.java"


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
        "Lcom/yelp/android/appdata/webrequests/ApiRequest",
        "<TParams;TProgress;TResult;>;"
    }
.end annotation


# instance fields
.field private mRequestId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->p()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/yelp/android/appdata/webrequests/ApiRequest;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lorg/apache/http/client/HttpClient;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 32
    invoke-direct {p0}, Lcom/yelp/android/av/g;->addCapabilityOverridesForDebug()V

    .line 33
    return-void
.end method

.method private addCapabilityOverridesForDebug()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method


# virtual methods
.method public addObfuscatedUrlParam(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/av/g;->mQuery:Lcom/yelp/android/services/j;

    check-cast v0, Lcom/yelp/android/services/w;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/services/w;->b(Ljava/lang/String;D)Lcom/yelp/android/services/w;

    .line 69
    return-void
.end method

.method protected getQuery(Ljava/lang/String;)Lcom/yelp/android/services/j;
    .locals 3

    .prologue
    .line 37
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->h()Lcom/yelp/android/appdata/n;

    move-result-object v1

    .line 39
    invoke-virtual {v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->x()Lcom/yelp/android/appdata/j;

    move-result-object v0

    .line 40
    new-instance v2, Lcom/yelp/android/services/w;

    invoke-direct {v2, p1, v1, v0}, Lcom/yelp/android/services/w;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/n;Lcom/yelp/android/appdata/j;)V

    return-object v2
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yelp/android/av/g;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method protected getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/av/g;->mQuery:Lcom/yelp/android/services/j;

    invoke-virtual {v0}, Lcom/yelp/android/services/j;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onJSONException(Lorg/json/JSONException;)V
    .locals 2

    .prologue
    .line 73
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v0

    invoke-static {p1}, Lcom/yelp/android/analytics/e;->a(Ljava/lang/Throwable;)Lcom/yelp/android/analytics/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 74
    return-void
.end method

.method protected onProcessingStarted(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 50
    const-string/jumbo v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 51
    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorInvalidData:I

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    throw v0

    .line 58
    :cond_0
    const-string/jumbo v1, "request_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/av/g;->mRequestId:Ljava/lang/String;

    .line 60
    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/av/g;->processErrorMessage(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 64
    :cond_1
    return-void
.end method

.method protected onStatusCodeError(ILorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V
    .locals 6

    .prologue
    .line 79
    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_0

    .line 81
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v0

    .line 82
    new-instance v1, Lorg/apache/http/client/HttpResponseException;

    const-string/jumbo v2, "%s - %s "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-static {v1}, Lcom/yelp/android/analytics/e;->a(Ljava/lang/Throwable;)Lcom/yelp/android/analytics/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 87
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 93
    new-instance v0, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerResponse:I

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    throw v0

    .line 89
    :sswitch_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerResourceNotFound:I

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    throw v0

    .line 91
    :sswitch_1
    new-instance v0, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerMaintenance:I

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    throw v0

    .line 87
    nop

    :sswitch_data_0
    .sparse-switch
        0x194 -> :sswitch_0
        0x1f7 -> :sswitch_1
    .end sparse-switch
.end method

.method protected processErrorMessage(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 132
    const-string/jumbo v0, "code"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p2}, Lcom/yelp/android/appdata/webrequests/ApiException;->getExceptionForCode(ILorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/ApiException;

    move-result-object v0

    throw v0
.end method

.method protected sendMetrics(Lorg/apache/http/client/methods/HttpUriRequest;JJJJJ)V
    .locals 14

    .prologue
    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 103
    sub-long v4, p2, p4

    .line 104
    sub-long v6, p6, p4

    .line 105
    sub-long v8, p8, p6

    .line 106
    sub-long v10, v0, p2

    .line 108
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/analytics/p;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/av/g;->getRequestId()Ljava/lang/String;

    move-result-object v3

    move-wide/from16 v12, p10

    invoke-direct/range {v1 .. v13}, Lcom/yelp/android/analytics/p;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJ)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 118
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/av/a;->b()V

    .line 119
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/av/g;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
