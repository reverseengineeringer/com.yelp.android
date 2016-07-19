.class public Lcom/yelp/android/cn/c;
.super Lcom/yelp/android/cn/a;
.source "MetricTimer.java"


# instance fields
.field protected final c:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

.field protected final d:Lcom/yelp/android/analytics/iris/a;


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/core/MetricsManager;Lcom/yelp/android/analytics/iris/a;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/cn/a;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/yelp/android/cn/c;->c:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    .line 21
    iput-object p2, p0, Lcom/yelp/android/cn/c;->d:Lcom/yelp/android/analytics/iris/a;

    .line 22
    return-void
.end method


# virtual methods
.method protected d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/cn/c;->c:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    invoke-virtual {p0}, Lcom/yelp/android/cn/c;->h()Lcom/yelp/android/analytics/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 27
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/cn/c;->c:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    invoke-virtual {p0}, Lcom/yelp/android/cn/c;->h()Lcom/yelp/android/analytics/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->b(Lcom/yelp/android/analytics/b;)V

    .line 32
    return-void
.end method

.method protected h()Lcom/yelp/android/analytics/l;
    .locals 5

    .prologue
    .line 39
    new-instance v0, Lcom/yelp/android/analytics/l;

    iget-object v1, p0, Lcom/yelp/android/cn/c;->d:Lcom/yelp/android/analytics/iris/a;

    invoke-virtual {p0}, Lcom/yelp/android/cn/c;->c()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/yelp/android/cn/c;->d()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/analytics/l;-><init>(Lcom/yelp/android/analytics/iris/a;JLjava/util/Map;)V

    return-object v0
.end method
