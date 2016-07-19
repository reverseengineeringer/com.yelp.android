.class public abstract Lcom/yelp/android/appdata/webrequests/core/b;
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
.field private a:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->u()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/yelp/android/appdata/webrequests/ApiRequest;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$RequestType;Ljava/lang/String;Lorg/apache/http/client/HttpClient;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 39
    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/core/b;->b()V

    .line 40
    return-void
.end method

.method private b()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method


# virtual methods
.method protected a(ILorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;
        }
    .end annotation

    .prologue
    .line 106
    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_0

    .line 108
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    .line 109
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

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 118
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 124
    new-instance v0, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerResponse:I

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    throw v0

    .line 120
    :sswitch_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerResourceNotFound:I

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    throw v0

    .line 122
    :sswitch_1
    new-instance v0, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorServerMaintenance:I

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    throw v0

    .line 118
    nop

    :sswitch_data_0
    .sparse-switch
        0x194 -> :sswitch_0
        0x1f7 -> :sswitch_1
    .end sparse-switch
.end method

.method protected a(Lorg/apache/http/client/methods/HttpUriRequest;JJJJJ)V
    .locals 14

    .prologue
    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 138
    sub-long v4, p2, p4

    .line 139
    sub-long v6, p6, p4

    .line 140
    sub-long v8, p8, p6

    .line 141
    sub-long v10, v0, p2

    .line 143
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/analytics/m;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/core/b;->i_()Ljava/lang/String;

    move-result-object v3

    move-wide/from16 v12, p10

    invoke-direct/range {v1 .. v13}, Lcom/yelp/android/analytics/m;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJ)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 156
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/analytics/o;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/core/b;->i_()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/yelp/android/analytics/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 164
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->b()V

    .line 165
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/core/b;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/core/b;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected a(Lorg/json/JSONException;)V
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    invoke-static {p1}, Lcom/yelp/android/analytics/e;->a(Ljava/lang/Throwable;)Lcom/yelp/android/analytics/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 96
    return-void
.end method

.method protected a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/ApiException;
        }
    .end annotation

    .prologue
    .line 184
    const-string/jumbo v0, "code"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p2}, Lcom/yelp/android/appdata/webrequests/ApiException;->getExceptionForCode(ILorg/json/JSONObject;)Lcom/yelp/android/appdata/webrequests/ApiException;

    move-result-object v0

    throw v0
.end method

.method protected c(Ljava/lang/String;)Lcom/yelp/android/services/d;
    .locals 3

    .prologue
    .line 44
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->h()Lcom/yelp/android/appdata/f;

    move-result-object v1

    .line 46
    invoke-virtual {v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->I()Lcom/yelp/android/appdata/d;

    move-result-object v0

    .line 47
    new-instance v2, Lcom/yelp/android/services/h;

    invoke-direct {v2, p1, v1, v0}, Lcom/yelp/android/services/h;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/f;Lcom/yelp/android/appdata/d;)V

    return-object v2
.end method

.method public c(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/b;->b:Lcom/yelp/android/services/d;

    check-cast v0, Lcom/yelp/android/services/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/services/h;->a(Ljava/lang/String;D)Lcom/yelp/android/services/h;

    .line 91
    return-void
.end method

.method protected c(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yelp/android/appdata/webrequests/YelpException;
        }
    .end annotation

    .prologue
    .line 57
    const-string/jumbo v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 58
    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v1, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorInvalidData:I

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(I)V

    throw v0

    .line 65
    :cond_0
    const-string/jumbo v1, "request_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/appdata/webrequests/core/b;->a:Ljava/lang/String;

    .line 67
    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 69
    const-string/jumbo v0, "relevant_experiments"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 72
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    :try_start_0
    invoke-static {}, Lcom/yelp/android/appdata/experiment/j;->a()Lcom/yelp/android/appdata/experiment/i;

    move-result-object v3

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/yelp/android/appdata/experiment/i;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/appdata/webrequests/core/b;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 86
    :cond_2
    return-void
.end method

.method public i_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected k()Z
    .locals 2

    .prologue
    .line 170
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->d:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    sget-object v1, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->enabled:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    return v0
.end method

.method protected o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/b;->b:Lcom/yelp/android/services/d;

    invoke-virtual {v0}, Lcom/yelp/android/services/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
