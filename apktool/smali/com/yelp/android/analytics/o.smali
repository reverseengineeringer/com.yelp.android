.class public Lcom/yelp/android/analytics/o;
.super Lcom/yelp/android/analytics/b;
.source "WebRequestAnalytic.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/analytics/b;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/yelp/android/analytics/o;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/yelp/android/analytics/o;->b:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;->REQUEST:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    invoke-virtual {p0, v0}, Lcom/yelp/android/analytics/o;->a(Lcom/yelp/android/analytics/iris/AnalyticCategory;)V

    .line 23
    return-void
.end method


# virtual methods
.method public c()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-super {p0}, Lcom/yelp/android/analytics/b;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 28
    const-string/jumbo v1, "time"

    invoke-virtual {p0}, Lcom/yelp/android/analytics/o;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 29
    const-string/jumbo v1, "request_id"

    iget-object v2, p0, Lcom/yelp/android/analytics/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string/jumbo v1, "path"

    iget-object v2, p0, Lcom/yelp/android/analytics/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 36
    const-string/jumbo v0, "[MetricsWebRequest:index=%s, path=%s, request_id=%s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/analytics/o;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/yelp/android/analytics/o;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/yelp/android/analytics/o;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
