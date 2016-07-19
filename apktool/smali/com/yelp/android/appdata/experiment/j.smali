.class public Lcom/yelp/android/appdata/experiment/j;
.super Ljava/lang/Object;
.source "WebExperimentManager.java"


# static fields
.field private static a:Lcom/yelp/android/appdata/experiment/i;


# direct methods
.method public static a()Lcom/yelp/android/appdata/experiment/i;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/yelp/android/appdata/experiment/j;->a:Lcom/yelp/android/appdata/experiment/i;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Experiment.DATA should have been initialized by AppData!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    sget-object v0, Lcom/yelp/android/appdata/experiment/j;->a:Lcom/yelp/android/appdata/experiment/i;

    return-object v0
.end method

.method public static a(Ljava/util/Map;Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/appdata/experiment/a",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/a;

    .line 36
    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 42
    :cond_1
    return-object v1
.end method

.method public static a(Lcom/yelp/android/appdata/experiment/i;)V
    .locals 0

    .prologue
    .line 54
    sput-object p0, Lcom/yelp/android/appdata/experiment/j;->a:Lcom/yelp/android/appdata/experiment/i;

    .line 55
    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {}, Lcom/yelp/android/appdata/experiment/j;->a()Lcom/yelp/android/appdata/experiment/i;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yelp/android/appdata/experiment/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_0
    return-void
.end method
