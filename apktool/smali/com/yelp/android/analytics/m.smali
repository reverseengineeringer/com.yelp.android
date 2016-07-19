.class public Lcom/yelp/android/analytics/m;
.super Lcom/yelp/android/analytics/b;
.source "TimingRequestAnalytic.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:J

.field private final g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJJ)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/yelp/android/analytics/b;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/yelp/android/analytics/m;->a:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/yelp/android/analytics/m;->b:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;->TIMING:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    invoke-virtual {p0, v0}, Lcom/yelp/android/analytics/m;->a(Lcom/yelp/android/analytics/iris/AnalyticCategory;)V

    .line 49
    iput-wide p7, p0, Lcom/yelp/android/analytics/m;->c:J

    .line 50
    iput-wide p3, p0, Lcom/yelp/android/analytics/m;->d:J

    .line 51
    iput-wide p5, p0, Lcom/yelp/android/analytics/m;->e:J

    .line 52
    iput-wide p9, p0, Lcom/yelp/android/analytics/m;->f:J

    .line 53
    iput-wide p11, p0, Lcom/yelp/android/analytics/m;->g:J

    .line 54
    return-void
.end method


# virtual methods
.method public c()Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 58
    invoke-super {p0}, Lcom/yelp/android/analytics/b;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 59
    const-string/jumbo v1, "time"

    invoke-virtual {p0}, Lcom/yelp/android/analytics/m;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 60
    const-string/jumbo v1, "request_id"

    iget-object v2, p0, Lcom/yelp/android/analytics/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string/jumbo v1, "iri"

    const-string/jumbo v2, "request"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string/jumbo v1, "interval"

    iget-wide v2, p0, Lcom/yelp/android/analytics/m;->d:J

    iget-wide v4, p0, Lcom/yelp/android/analytics/m;->f:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 63
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 64
    const-string/jumbo v2, "interval_data"

    iget-wide v4, p0, Lcom/yelp/android/analytics/m;->c:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 65
    iget-wide v2, p0, Lcom/yelp/android/analytics/m;->d:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    .line 66
    const-string/jumbo v2, "interval_request"

    iget-wide v4, p0, Lcom/yelp/android/analytics/m;->d:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 68
    :cond_0
    iget-wide v2, p0, Lcom/yelp/android/analytics/m;->e:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    .line 69
    const-string/jumbo v2, "interval_response"

    iget-wide v4, p0, Lcom/yelp/android/analytics/m;->e:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 71
    :cond_1
    iget-wide v2, p0, Lcom/yelp/android/analytics/m;->f:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    .line 72
    const-string/jumbo v2, "interval_parse"

    iget-wide v4, p0, Lcom/yelp/android/analytics/m;->f:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 74
    :cond_2
    iget-wide v2, p0, Lcom/yelp/android/analytics/m;->g:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    .line 75
    const-string/jumbo v2, "response_content_length"

    iget-wide v4, p0, Lcom/yelp/android/analytics/m;->g:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 77
    :cond_3
    const-string/jumbo v2, "path"

    iget-object v3, p0, Lcom/yelp/android/analytics/m;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string/jumbo v2, "params"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 85
    const-string/jumbo v0, "[MetricsTimingRequest:index=%s, path=%s, request_id=%s, interval=%s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/analytics/m;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/yelp/android/analytics/m;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/yelp/android/analytics/m;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/yelp/android/analytics/m;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
