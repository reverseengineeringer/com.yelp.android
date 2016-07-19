.class public abstract Lcom/yelp/android/analytics/b;
.super Ljava/lang/Object;
.source "BaseAnalytic.java"


# instance fields
.field private final a:J

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/yelp/android/analytics/iris/AnalyticCategory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/analytics/b;->a:J

    .line 25
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->Z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/analytics/b;->d:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/yelp/android/analytics/b;->a:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/yelp/android/analytics/b;->b:I

    .line 54
    return-void
.end method

.method public a(Lcom/yelp/android/analytics/iris/AnalyticCategory;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/yelp/android/analytics/b;->e:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    .line 34
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/yelp/android/analytics/b;->c:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/yelp/android/analytics/b;->b:I

    return v0
.end method

.method public c()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 58
    const-string/jumbo v1, "index"

    iget v2, p0, Lcom/yelp/android/analytics/b;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    const-string/jumbo v1, "session_id"

    iget-object v2, p0, Lcom/yelp/android/analytics/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string/jumbo v1, "time"

    iget-wide v2, p0, Lcom/yelp/android/analytics/b;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 61
    iget-object v1, p0, Lcom/yelp/android/analytics/b;->e:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    if-eqz v1, :cond_0

    .line 62
    const-string/jumbo v1, "category"

    iget-object v2, p0, Lcom/yelp/android/analytics/b;->e:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    invoke-virtual {v2}, Lcom/yelp/android/analytics/iris/AnalyticCategory;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/analytics/b;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 65
    const-string/jumbo v1, "preinstalled_cohort"

    iget-object v2, p0, Lcom/yelp/android/analytics/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    :cond_1
    return-object v0
.end method
