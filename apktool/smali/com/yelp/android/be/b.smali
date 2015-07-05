.class public Lcom/yelp/android/be/b;
.super Lcom/yelp/android/be/a;
.source "MetricTimer.java"


# instance fields
.field protected final a:Lcom/yelp/android/av/a;

.field protected final b:Lcom/yelp/android/analytics/iris/b;


# direct methods
.method public constructor <init>(Lcom/yelp/android/av/a;Lcom/yelp/android/analytics/iris/b;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yelp/android/be/a;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/yelp/android/be/b;->a:Lcom/yelp/android/av/a;

    .line 23
    iput-object p2, p0, Lcom/yelp/android/be/b;->b:Lcom/yelp/android/analytics/iris/b;

    .line 24
    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/be/b;->a:Lcom/yelp/android/av/a;

    invoke-virtual {p0}, Lcom/yelp/android/be/b;->g()Lcom/yelp/android/analytics/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 29
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/be/b;->a:Lcom/yelp/android/av/a;

    invoke-virtual {p0}, Lcom/yelp/android/be/b;->g()Lcom/yelp/android/analytics/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/av/a;->b(Lcom/yelp/android/analytics/b;)V

    .line 34
    return-void
.end method

.method protected f()Ljava/util/Map;
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
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method protected g()Lcom/yelp/android/analytics/n;
    .locals 5

    .prologue
    .line 41
    new-instance v0, Lcom/yelp/android/analytics/n;

    iget-object v1, p0, Lcom/yelp/android/be/b;->b:Lcom/yelp/android/analytics/iris/b;

    invoke-virtual {p0}, Lcom/yelp/android/be/b;->c()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/yelp/android/be/b;->f()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/analytics/n;-><init>(Lcom/yelp/android/analytics/iris/b;JLjava/util/Map;)V

    return-object v0
.end method
