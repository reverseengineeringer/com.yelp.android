.class public Lcom/yelp/android/analytics/l;
.super Lcom/yelp/android/analytics/b;
.source "SessionEndAnalytic.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/yelp/android/analytics/b;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public c()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/analytics/b;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 15
    const-string/jumbo v1, "end"

    invoke-virtual {p0}, Lcom/yelp/android/analytics/l;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 16
    const-string/jumbo v1, "reason"

    const-string/jumbo v2, "background"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 22
    const-string/jumbo v1, "[MetricsSessionEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string/jumbo v1, "index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p0}, Lcom/yelp/android/analytics/l;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string/jumbo v1, "start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p0}, Lcom/yelp/android/analytics/l;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
