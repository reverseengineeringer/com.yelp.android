.class public Lcom/yelp/android/analytics/n;
.super Lcom/yelp/android/analytics/g;
.source "TimingAnalytic.java"


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(Lcom/yelp/android/analytics/iris/b;JLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p4}, Lcom/yelp/android/analytics/g;-><init>(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/util/Map;)V

    .line 24
    iput-wide p2, p0, Lcom/yelp/android/analytics/n;->a:J

    .line 25
    return-void
.end method


# virtual methods
.method public c()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 29
    invoke-super {p0}, Lcom/yelp/android/analytics/g;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 30
    iget-wide v2, p0, Lcom/yelp/android/analytics/n;->a:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 31
    const-string/jumbo v1, "interval"

    iget-wide v2, p0, Lcom/yelp/android/analytics/n;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 33
    :cond_0
    return-object v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/yelp/android/analytics/n;->a:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[MetricsTiming:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/analytics/n;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "iri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/analytics/n;->d()Lcom/yelp/android/analytics/iris/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/yelp/android/analytics/iris/b;->getIriName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/yelp/android/analytics/n;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
