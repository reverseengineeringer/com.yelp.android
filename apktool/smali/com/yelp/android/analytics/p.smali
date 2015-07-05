.class public Lcom/yelp/android/analytics/p;
.super Lcom/yelp/android/analytics/b;
.source "WebRequestAnalytic.java"


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
    .line 37
    invoke-direct {p0}, Lcom/yelp/android/analytics/b;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/yelp/android/analytics/p;->a:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/yelp/android/analytics/p;->b:Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;->REQUEST:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    invoke-virtual {p0, v0}, Lcom/yelp/android/analytics/p;->a(Lcom/yelp/android/analytics/iris/AnalyticCategory;)V

    .line 41
    iput-wide p7, p0, Lcom/yelp/android/analytics/p;->c:J

    .line 42
    iput-wide p3, p0, Lcom/yelp/android/analytics/p;->d:J

    .line 43
    iput-wide p5, p0, Lcom/yelp/android/analytics/p;->e:J

    .line 44
    iput-wide p9, p0, Lcom/yelp/android/analytics/p;->f:J

    .line 45
    iput-wide p11, p0, Lcom/yelp/android/analytics/p;->g:J

    .line 46
    return-void
.end method


# virtual methods
.method public c()Lorg/json/JSONObject;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 50
    invoke-super {p0}, Lcom/yelp/android/analytics/b;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 51
    const-string/jumbo v1, "time"

    invoke-virtual {p0}, Lcom/yelp/android/analytics/p;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 52
    const-string/jumbo v1, "request_id"

    iget-object v2, p0, Lcom/yelp/android/analytics/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string/jumbo v1, "path"

    iget-object v2, p0, Lcom/yelp/android/analytics/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string/jumbo v1, "interval_data"

    iget-wide v2, p0, Lcom/yelp/android/analytics/p;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 57
    iget-wide v2, p0, Lcom/yelp/android/analytics/p;->d:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 58
    const-string/jumbo v1, "interval_request"

    iget-wide v2, p0, Lcom/yelp/android/analytics/p;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 60
    :cond_0
    iget-wide v2, p0, Lcom/yelp/android/analytics/p;->e:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 61
    const-string/jumbo v1, "interval_response"

    iget-wide v2, p0, Lcom/yelp/android/analytics/p;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 63
    :cond_1
    iget-wide v2, p0, Lcom/yelp/android/analytics/p;->f:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 64
    const-string/jumbo v1, "interval_parse"

    iget-wide v2, p0, Lcom/yelp/android/analytics/p;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 66
    :cond_2
    iget-wide v2, p0, Lcom/yelp/android/analytics/p;->g:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 67
    const-string/jumbo v1, "response_content_length"

    iget-wide v2, p0, Lcom/yelp/android/analytics/p;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 69
    :cond_3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 74
    const-string/jumbo v0, "[MetricsWebRequest:index=%s, path=%s, request_id=%s, interval_data=%s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/analytics/p;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/yelp/android/analytics/p;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/yelp/android/analytics/p;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/yelp/android/analytics/p;->e:J

    iget-wide v6, p0, Lcom/yelp/android/analytics/p;->d:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
