.class public Lcom/yelp/android/cn/d;
.super Ljava/lang/Object;
.source "TimerFactory.java"


# instance fields
.field private final a:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/core/MetricsManager;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/yelp/android/cn/d;->a:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    .line 17
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/cn/c;
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lcom/yelp/android/cn/c;

    iget-object v1, p0, Lcom/yelp/android/cn/d;->a:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    sget-object v2, Lcom/yelp/android/analytics/iris/TimingIri;->ApplicationStartup:Lcom/yelp/android/analytics/iris/TimingIri;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/cn/c;-><init>(Lcom/yelp/android/appdata/webrequests/core/MetricsManager;Lcom/yelp/android/analytics/iris/a;)V

    return-object v0
.end method

.method public b()Lcom/yelp/android/cn/c;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/yelp/android/cn/c;

    iget-object v1, p0, Lcom/yelp/android/cn/d;->a:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    sget-object v2, Lcom/yelp/android/analytics/iris/TimingIri;->BusinessDetailsLoad:Lcom/yelp/android/analytics/iris/TimingIri;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/cn/c;-><init>(Lcom/yelp/android/appdata/webrequests/core/MetricsManager;Lcom/yelp/android/analytics/iris/a;)V

    return-object v0
.end method

.method public c()Lcom/yelp/android/cn/b;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Lcom/yelp/android/cn/b;

    iget-object v1, p0, Lcom/yelp/android/cn/d;->a:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    sget-object v2, Lcom/yelp/android/analytics/iris/TimingIri;->BusinessDetailsFullyLoaded:Lcom/yelp/android/analytics/iris/TimingIri;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/cn/b;-><init>(Lcom/yelp/android/appdata/webrequests/core/MetricsManager;Lcom/yelp/android/analytics/iris/a;)V

    return-object v0
.end method
