.class public Lcom/yelp/android/analytics/e;
.super Lcom/yelp/android/analytics/b;
.source "ExceptionAnalytic.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yelp/android/analytics/b;-><init>()V

    .line 26
    sget-object v0, Lcom/yelp/android/analytics/iris/AnalyticCategory;->ERROR:Lcom/yelp/android/analytics/iris/AnalyticCategory;

    invoke-virtual {p0, v0}, Lcom/yelp/android/analytics/e;->a(Lcom/yelp/android/analytics/iris/AnalyticCategory;)V

    .line 27
    iput-object p1, p0, Lcom/yelp/android/analytics/e;->a:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/yelp/android/analytics/e;->b:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/yelp/android/analytics/e;->c:Ljava/util/List;

    .line 30
    iput-boolean p5, p0, Lcom/yelp/android/analytics/e;->e:Z

    .line 31
    iput-object p4, p0, Lcom/yelp/android/analytics/e;->d:Ljava/util/Map;

    .line 32
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Lcom/yelp/android/analytics/e;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/analytics/e;->a(Ljava/lang/Throwable;Ljava/util/Map;)Lcom/yelp/android/analytics/e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/util/Map;)Lcom/yelp/android/analytics/e;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yelp/android/analytics/e;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 52
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->z()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v2

    .line 53
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    array-length v0, v1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    array-length v4, v1

    move v0, v5

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v6, v1, v0

    .line 56
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Lcom/yelp/android/analytics/e;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/analytics/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Z)V

    return-object v0
.end method


# virtual methods
.method public c()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 36
    invoke-super {p0}, Lcom/yelp/android/analytics/b;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 37
    const-string/jumbo v1, "type"

    iget-object v2, p0, Lcom/yelp/android/analytics/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string/jumbo v1, "app_version"

    iget-object v2, p0, Lcom/yelp/android/analytics/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string/jumbo v1, "trace"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/yelp/android/analytics/e;->c:Ljava/util/List;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    iget-object v1, p0, Lcom/yelp/android/analytics/e;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    const-string/jumbo v1, "details"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/yelp/android/analytics/e;->d:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    :cond_0
    const-string/jumbo v1, "is_crash"

    iget-boolean v2, p0, Lcom/yelp/android/analytics/e;->e:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 44
    return-object v0
.end method
