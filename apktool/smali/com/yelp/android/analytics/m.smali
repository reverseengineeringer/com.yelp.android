.class public Lcom/yelp/android/analytics/m;
.super Lcom/yelp/android/analytics/b;
.source "SessionStartAnalytic.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yelp/android/analytics/b;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/yelp/android/analytics/m;->a:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public c()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 18
    invoke-super {p0}, Lcom/yelp/android/analytics/b;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 19
    const-string/jumbo v1, "start"

    invoke-virtual {p0}, Lcom/yelp/android/analytics/m;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 20
    iget-object v1, p0, Lcom/yelp/android/analytics/m;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 21
    const-string/jumbo v1, "user_id"

    iget-object v2, p0, Lcom/yelp/android/analytics/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    :cond_0
    const-string/jumbo v1, "version"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 29
    const-string/jumbo v1, "[MetricsSessionStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string/jumbo v1, "index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p0}, Lcom/yelp/android/analytics/m;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v1, "start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p0}, Lcom/yelp/android/analytics/m;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
