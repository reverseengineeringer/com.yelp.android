.class public Lcom/yelp/android/av/a;
.super Ljava/lang/Object;
.source "MetricsManager.java"

# interfaces
.implements Lcom/yelp/android/appdata/ar;
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/ar;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yelp/android/analytics/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/Object;


# instance fields
.field private final c:Lcom/yelp/android/appdata/StateBroadcastReceiver;

.field private d:Ljava/lang/String;

.field private e:Z

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/analytics/b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/analytics/b;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private final i:Landroid/os/Handler;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/analytics/b;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private final l:Ljava/io/File;

.field private m:J

.field private n:Lcom/google/android/gms/analytics/Tracker;

.field private o:Z

.field private p:Ljava/util/Random;

.field private q:Ljava/lang/String;

.field private final r:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yelp/android/av/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/appdata/n;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    new-instance v0, Lcom/yelp/android/av/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/av/b;-><init>(Lcom/yelp/android/av/a;)V

    iput-object v0, p0, Lcom/yelp/android/av/a;->r:Ljava/lang/Runnable;

    .line 178
    invoke-static {p1, p0}, Lcom/yelp/android/appdata/StateBroadcastReceiver;->a(Landroid/content/Context;Lcom/yelp/android/appdata/ar;)Lcom/yelp/android/appdata/StateBroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/av/a;->c:Lcom/yelp/android/appdata/StateBroadcastReceiver;

    .line 179
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yelp/android/av/a;->i:Landroid/os/Handler;

    .line 180
    iput-boolean v3, p0, Lcom/yelp/android/av/a;->e:Z

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/av/a;->f:Ljava/util/ArrayList;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/av/a;->g:Ljava/util/ArrayList;

    .line 183
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "analytics-saving-0.tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/av/a;->l:Ljava/io/File;

    .line 187
    iput-boolean v3, p0, Lcom/yelp/android/av/a;->o:Z

    .line 188
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/av/a;->p:Ljava/util/Random;

    .line 189
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/av/a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/av/a;->i:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Lcom/yelp/android/analytics/a;)Lcom/yelp/android/analytics/g;
    .locals 4

    .prologue
    .line 88
    invoke-interface {p0}, Lcom/yelp/android/analytics/a;->getIri()Lcom/yelp/android/analytics/iris/b;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_0

    .line 90
    new-instance v0, Lcom/yelp/android/analytics/g;

    invoke-interface {p0, v1}, Lcom/yelp/android/analytics/a;->getRequestIdForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1}, Lcom/yelp/android/analytics/a;->getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/g;-><init>(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/util/Map;)V

    .line 95
    :goto_0
    return-object v0

    .line 93
    :cond_0
    const-string/jumbo v0, "No IRI returned"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/analytics/iris/b;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 626
    invoke-interface {p1}, Lcom/yelp/android/analytics/iris/b;->getGoogleAnalyticsCategory()Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->getGoogleAnalyticsCategoryName()Ljava/lang/String;

    move-result-object v0

    .line 628
    invoke-interface {p1}, Lcom/yelp/android/analytics/iris/b;->isSampledInGoogleAnalytics()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / 10"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static a(Ljava/util/List;ZLorg/json/JSONArray;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/analytics/b;",
            ">;Z",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 477
    if-eqz p2, :cond_0

    .line 479
    :goto_0
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 481
    :try_start_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/b;

    invoke-virtual {v0}, Lcom/yelp/android/analytics/b;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 479
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 477
    :cond_0
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    .line 487
    :cond_1
    if-eqz p1, :cond_2

    .line 489
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 495
    :goto_3
    return-object v0

    .line 490
    :catch_0
    move-exception v0

    .line 492
    const-string/jumbo v0, "[]"

    goto :goto_3

    .line 495
    :cond_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 482
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method protected static a(Lcom/yelp/android/analytics/g;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/g;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/av/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/yelp/android/analytics/g;->d()Lcom/yelp/android/analytics/iris/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/analytics/iris/b;->getGaCustomDimenLinks()[Lcom/yelp/android/analytics/c;

    move-result-object v1

    .line 613
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 615
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 616
    invoke-virtual {p0}, Lcom/yelp/android/analytics/g;->e()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4}, Lcom/yelp/android/analytics/c;->getParameterKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/yelp/android/analytics/g;->e()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4}, Lcom/yelp/android/analytics/c;->getParameterKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 618
    new-instance v6, Lcom/yelp/android/av/e;

    invoke-interface {v4}, Lcom/yelp/android/analytics/c;->getDimensionIndex()I

    move-result v4

    invoke-direct {v6, v4, v5}, Lcom/yelp/android/av/e;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 622
    :cond_1
    return-object v2
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 124
    sget-object v1, Lcom/yelp/android/av/a;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/yelp/android/av/a;->a:Ljava/lang/ref/WeakReference;

    .line 126
    monitor-exit v1

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Lcom/yelp/android/analytics/a;Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 136
    invoke-static {p0}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/a;)Lcom/yelp/android/analytics/g;

    move-result-object v3

    .line 137
    if-eqz v3, :cond_2

    .line 138
    sget-object v4, Lcom/yelp/android/av/a;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 139
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/yelp/android/analytics/g;->e()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 141
    if-ne v2, v0, :cond_1

    const-string/jumbo v2, "portrait"

    .line 145
    :goto_0
    const-string/jumbo v6, "orientation"

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string/jumbo v2, "is_first"

    invoke-static {p0}, Lcom/yelp/android/av/a;->b(Lcom/yelp/android/analytics/a;)Z

    move-result v6

    if-nez v6, :cond_0

    move v1, v0

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {v3, v5}, Lcom/yelp/android/analytics/g;->a(Ljava/util/Map;)V

    .line 153
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 154
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/yelp/android/av/a;->a:Ljava/lang/ref/WeakReference;

    .line 155
    monitor-exit v4

    .line 158
    :goto_1
    return v0

    .line 141
    :cond_1
    const-string/jumbo v2, "landscape"

    goto :goto_0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    .line 158
    goto :goto_1
.end method

.method static synthetic b(Lcom/yelp/android/av/a;)Ljava/io/File;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/av/a;->l:Ljava/io/File;

    return-object v0
.end method

.method public static b(Lcom/yelp/android/analytics/a;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 106
    sget-object v0, Lcom/yelp/android/av/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v1

    .line 110
    :cond_1
    sget-object v0, Lcom/yelp/android/av/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/a;

    .line 111
    if-eqz v0, :cond_0

    .line 115
    invoke-interface {p0}, Lcom/yelp/android/analytics/a;->getComponentId()J

    move-result-wide v2

    invoke-interface {v0}, Lcom/yelp/android/analytics/a;->getComponentId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private c(Lcom/yelp/android/analytics/b;)Z
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 257
    if-nez p1, :cond_0

    .line 291
    :goto_0
    return v0

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/yelp/android/av/a;->f:Ljava/util/ArrayList;

    monitor-enter v2

    .line 266
    :try_start_0
    iget-boolean v3, p0, Lcom/yelp/android/av/a;->e:Z

    if-nez v3, :cond_1

    instance-of v3, p1, Lcom/yelp/android/analytics/p;

    if-eqz v3, :cond_1

    .line 267
    monitor-exit v2

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 270
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lcom/yelp/android/av/a;->e:Z

    if-nez v3, :cond_3

    .line 271
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 272
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/yelp/android/av/a;->d:Ljava/lang/String;

    .line 273
    const-string/jumbo v3, "ManageMetrics"

    const-string/jumbo v6, "Took %d ms to generate UUID"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v4, v10, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v3, v6, v7}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    const/4 v3, 0x0

    iput v3, p0, Lcom/yelp/android/av/a;->h:I

    .line 276
    instance-of v3, p1, Lcom/yelp/android/analytics/m;

    if-nez v3, :cond_2

    .line 277
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->z()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/BaseYelpApplication;->y()Lcom/yelp/android/appdata/bc;

    move-result-object v3

    invoke-interface {v3}, Lcom/yelp/android/appdata/bc;->b()Ljava/lang/String;

    move-result-object v3

    .line 279
    new-instance v4, Lcom/yelp/android/analytics/m;

    invoke-direct {v4, v3}, Lcom/yelp/android/analytics/m;-><init>(Ljava/lang/String;)V

    .line 280
    iget v3, p0, Lcom/yelp/android/av/a;->h:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/yelp/android/av/a;->h:I

    invoke-virtual {v4, v3}, Lcom/yelp/android/analytics/m;->a(I)V

    .line 281
    iget-object v3, p0, Lcom/yelp/android/av/a;->d:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/yelp/android/analytics/m;->a(Ljava/lang/String;)V

    .line 282
    iget-object v3, p0, Lcom/yelp/android/av/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/yelp/android/av/a;->e:Z

    .line 286
    :cond_3
    iget v3, p0, Lcom/yelp/android/av/a;->h:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/yelp/android/av/a;->h:I

    invoke-virtual {p1, v3}, Lcom/yelp/android/analytics/b;->a(I)V

    .line 287
    iget-object v3, p0, Lcom/yelp/android/av/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/yelp/android/analytics/b;->a(Ljava/lang/String;)V

    .line 288
    const-class v3, Lcom/yelp/android/analytics/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_4

    move v0, v1

    :cond_4
    iput-boolean v0, p0, Lcom/yelp/android/av/a;->e:Z

    .line 289
    iget-object v0, p0, Lcom/yelp/android/av/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 291
    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/av/a;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/yelp/android/av/a;->o:Z

    return v0
.end method

.method private d(Lcom/yelp/android/analytics/b;)V
    .locals 8

    .prologue
    .line 512
    instance-of v0, p1, Lcom/yelp/android/analytics/g;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/av/a;->o:Z

    if-nez v0, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 516
    check-cast v0, Lcom/yelp/android/analytics/g;

    .line 518
    invoke-virtual {v0}, Lcom/yelp/android/analytics/g;->d()Lcom/yelp/android/analytics/iris/b;

    move-result-object v1

    .line 519
    invoke-interface {v1}, Lcom/yelp/android/analytics/iris/b;->isExcludedFromGoogleAnalytics()Z

    move-result v2

    if-nez v2, :cond_0

    .line 523
    sget-object v2, Lcom/yelp/android/analytics/GADimensions;->USER_LOGGED_IN_STATE:Lcom/yelp/android/analytics/GADimensions;

    invoke-virtual {v2}, Lcom/yelp/android/analytics/GADimensions;->getIndex()I

    move-result v3

    .line 524
    sget-object v2, Lcom/yelp/android/analytics/GADimensions;->USER_LOGGED_IN_STATE:Lcom/yelp/android/analytics/GADimensions;

    invoke-virtual {v2}, Lcom/yelp/android/analytics/GADimensions;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 528
    invoke-interface {v1}, Lcom/yelp/android/analytics/iris/b;->isSampledInGoogleAnalytics()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/yelp/android/av/a;->p:Ljava/util/Random;

    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 529
    :cond_2
    invoke-interface {v1}, Lcom/yelp/android/analytics/iris/b;->isSampledInGoogleAnalytics()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lcom/yelp/android/analytics/iris/b;->getIriName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " / 10"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 533
    :goto_1
    invoke-static {v0}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/g;)Ljava/util/List;

    move-result-object v5

    .line 535
    sget-object v6, Lcom/yelp/android/av/d;->a:[I

    invoke-interface {v1}, Lcom/yelp/android/analytics/iris/b;->getGoogleAnalyticsCategory()Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 537
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/av/a;->n:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 538
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    .line 539
    iget-object v0, p0, Lcom/yelp/android/av/a;->q:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 540
    iget-object v0, p0, Lcom/yelp/android/av/a;->q:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->setCampaignParamsFromUrl(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 541
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/av/a;->q:Ljava/lang/String;

    .line 543
    :cond_3
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    .line 545
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/av/e;

    .line 546
    invoke-virtual {v0}, Lcom/yelp/android/av/e;->a()I

    move-result v3

    invoke-virtual {v0}, Lcom/yelp/android/av/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    goto :goto_2

    .line 529
    :cond_4
    invoke-interface {v1}, Lcom/yelp/android/analytics/iris/b;->getIriName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 549
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/av/a;->n:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto/16 :goto_0

    :pswitch_1
    move-object v0, v1

    .line 552
    check-cast v0, Lcom/yelp/android/analytics/iris/PushNotificationIri;

    .line 553
    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/iris/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/analytics/iris/PushNotificationIri;->getGoogleAnalyticsAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/analytics/iris/PushNotificationIri;->getGoogleAnalyticsLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 559
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/av/e;

    .line 560
    invoke-virtual {v1}, Lcom/yelp/android/av/e;->a()I

    move-result v3

    invoke-virtual {v1}, Lcom/yelp/android/av/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    goto :goto_3

    .line 563
    :cond_6
    iget-object v1, p0, Lcom/yelp/android/av/a;->n:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 566
    :pswitch_2
    check-cast p1, Lcom/yelp/android/analytics/n;

    .line 567
    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/iris/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/analytics/n;->f()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setVariable(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v1

    .line 572
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/av/e;

    .line 573
    invoke-virtual {v0}, Lcom/yelp/android/av/e;->a()I

    move-result v3

    invoke-virtual {v0}, Lcom/yelp/android/av/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    goto :goto_4

    .line 576
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/av/a;->n:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 582
    :pswitch_3
    new-instance v6, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v6}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/iris/b;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 587
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yelp/android/av/e;

    .line 588
    invoke-virtual {v3}, Lcom/yelp/android/av/e;->a()I

    move-result v5

    invoke-virtual {v3}, Lcom/yelp/android/av/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCustomDimension(ILjava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    goto :goto_5

    .line 591
    :cond_8
    instance-of v3, v1, Lcom/yelp/android/analytics/iris/EventIri;

    if-eqz v3, :cond_9

    .line 592
    check-cast v1, Lcom/yelp/android/analytics/iris/EventIri;

    .line 593
    invoke-virtual {v1}, Lcom/yelp/android/analytics/iris/EventIri;->getLabelKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 594
    invoke-virtual {v0}, Lcom/yelp/android/analytics/g;->e()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1}, Lcom/yelp/android/analytics/iris/EventIri;->getLabelKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 595
    if-eqz v0, :cond_9

    .line 596
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 601
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/av/a;->n:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 535
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public varargs a([Ljava/lang/Runnable;)Landroid/os/AsyncTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Runnable;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/analytics/b;",
            ">;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    new-instance v0, Lcom/yelp/android/av/c;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/av/c;-><init>(Lcom/yelp/android/av/a;[Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/av/a;->f:Ljava/util/ArrayList;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/av/c;->c([Ljava/lang/Object;)Lcom/yelp/android/util/aa;

    move-result-object v0

    .line 448
    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/yelp/android/av/a;->e:Z

    if-nez v0, :cond_0

    .line 371
    invoke-virtual {p0, p1}, Lcom/yelp/android/av/a;->c(Landroid/content/Context;)V

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/av/a;->g:Ljava/util/ArrayList;

    monitor-enter v1

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/av/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/b;

    .line 376
    invoke-virtual {p0, v0}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    goto :goto_0

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 379
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/yelp/android/av/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 380
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    return-void
.end method

.method public a(Lcom/yelp/android/analytics/b;)V
    .locals 4

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/yelp/android/av/a;->d(Lcom/yelp/android/analytics/b;)V

    .line 218
    invoke-direct {p0, p1}, Lcom/yelp/android/av/a;->c(Lcom/yelp/android/analytics/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yelp/android/av/a;->m:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 224
    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/av/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/yelp/android/av/a;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yelp/android/av/a;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    :cond_0
    return-void

    .line 222
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    invoke-interface {p1}, Lcom/yelp/android/analytics/iris/b;->getIriName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Iri is empty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    new-instance v0, Lcom/yelp/android/analytics/g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/yelp/android/analytics/g;-><init>(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 207
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/av/a;->k:Z

    .line 332
    iget-object v0, p0, Lcom/yelp/android/av/a;->l:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/yelp/android/av/a;->l:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 335
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/yelp/android/av/a;->q:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 506
    iput-boolean p1, p0, Lcom/yelp/android/av/a;->o:Z

    .line 507
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setAppOptOut(Z)V

    .line 508
    return-void

    .line 507
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 311
    iget-boolean v0, p0, Lcom/yelp/android/av/a;->k:Z

    if-ne v0, v2, :cond_0

    .line 327
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/av/a;->m:J

    .line 315
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->z()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v0

    iget-boolean v0, v0, Lcom/yelp/android/debug/Debug;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/av/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    iput-boolean v2, p0, Lcom/yelp/android/av/a;->k:Z

    .line 317
    iget-object v1, p0, Lcom/yelp/android/av/a;->f:Ljava/util/ArrayList;

    monitor-enter v1

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/av/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/yelp/android/av/a;->j:Ljava/util/ArrayList;

    .line 319
    iget-object v0, p0, Lcom/yelp/android/av/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 320
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    new-instance v0, Lcom/yelp/android/av/f;

    iget-object v1, p0, Lcom/yelp/android/av/a;->j:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p0}, Lcom/yelp/android/av/f;-><init>(Ljava/util/List;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 322
    iget-object v1, p0, Lcom/yelp/android/av/a;->l:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/yelp/android/av/f;->a(Ljava/io/File;)V

    .line 323
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/av/f;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 326
    :cond_1
    const-string/jumbo v0, "Last cache flush at %s"

    new-array v1, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 396
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->z()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v0

    iget-boolean v0, v0, Lcom/yelp/android/debug/Debug;->b:Z

    if-eqz v0, :cond_0

    .line 398
    new-instance v0, Lcom/yelp/android/analytics/l;

    invoke-direct {v0}, Lcom/yelp/android/analytics/l;-><init>()V

    invoke-direct {p0, v0}, Lcom/yelp/android/av/a;->c(Lcom/yelp/android/analytics/b;)Z

    .line 399
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/av/a;->r:Ljava/lang/Runnable;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/yelp/android/av/a;->a([Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 401
    :cond_0
    return-void
.end method

.method public b(Lcom/yelp/android/analytics/b;)V
    .locals 2

    .prologue
    .line 239
    iget-object v1, p0, Lcom/yelp/android/av/a;->g:Ljava/util/ArrayList;

    monitor-enter v1

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/av/a;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    monitor-exit v1

    .line 242
    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 500
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 501
    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(I)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/av/a;->n:Lcom/google/android/gms/analytics/Tracker;

    .line 502
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setLocalDispatchPeriod(I)V

    .line 503
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 384
    invoke-static {p1}, Lcom/yelp/android/appdata/BaseYelpApplication;->d(Landroid/content/Context;)Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->y()Lcom/yelp/android/appdata/bc;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/bc;->b()Ljava/lang/String;

    move-result-object v0

    .line 385
    new-instance v1, Lcom/yelp/android/analytics/m;

    invoke-direct {v1, v0}, Lcom/yelp/android/analytics/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 386
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 339
    iput-boolean v2, p0, Lcom/yelp/android/av/a;->k:Z

    .line 349
    const-string/jumbo v0, "Error with analytics, %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    iget-object v0, p0, Lcom/yelp/android/av/a;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 352
    iget-object v1, p0, Lcom/yelp/android/av/a;->f:Ljava/util/ArrayList;

    monitor-enter v1

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/av/a;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/yelp/android/av/a;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/av/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/av/a;->j:Ljava/util/ArrayList;

    .line 357
    :cond_0
    monitor-exit v1

    .line 359
    :cond_1
    return-void

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
