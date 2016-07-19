.class public Lcom/yelp/android/appdata/webrequests/core/MetricsManager;
.super Ljava/lang/Object;
.source "MetricsManager.java"

# interfaces
.implements Lcom/yelp/android/appdata/StateBroadcastReceiver$a;
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/webrequests/core/MetricsManager$3;,
        Lcom/yelp/android/appdata/webrequests/core/MetricsManager$a;,
        Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/StateBroadcastReceiver$a;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
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

.field private n:Lcom/google/android/gms/analytics/g;

.field private o:Lcom/google/android/gms/analytics/g;

.field private p:Z

.field private q:Ljava/util/Random;

.field private r:Ljava/lang/String;

.field private s:Lcom/yelp/android/ui/util/a;

.field private final t:Ljava/lang/Runnable;

.field private u:Lrx/subjects/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/a",
            "<",
            "Lcom/yelp/android/serializable/IriTrackerIri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/ui/util/a;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    new-instance v0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$1;-><init>(Lcom/yelp/android/appdata/webrequests/core/MetricsManager;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->t:Ljava/lang/Runnable;

    .line 661
    invoke-static {}, Lrx/subjects/a;->b()Lrx/subjects/a;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->u:Lrx/subjects/a;

    .line 198
    invoke-static {p2, p0}, Lcom/yelp/android/appdata/StateBroadcastReceiver;->a(Landroid/content/Context;Lcom/yelp/android/appdata/StateBroadcastReceiver$a;)Lcom/yelp/android/appdata/StateBroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->c:Lcom/yelp/android/appdata/StateBroadcastReceiver;

    .line 199
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->i:Landroid/os/Handler;

    .line 200
    iput-boolean v3, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->e:Z

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->f:Ljava/util/ArrayList;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->g:Ljava/util/ArrayList;

    .line 203
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "analytics-saving-0.tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->l:Ljava/io/File;

    .line 204
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->s:Lcom/yelp/android/ui/util/a;

    .line 208
    iput-boolean v3, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->p:Z

    .line 209
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->q:Ljava/util/Random;

    .line 210
    return-void
.end method

.method private static a(Ljava/lang/Object;)J
    .locals 3

    .prologue
    .line 701
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 702
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    .line 706
    :goto_0
    return-wide v0

    .line 702
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 703
    :cond_1
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 704
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 705
    :cond_2
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 706
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 708
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cannot be coerced to a long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/yelp/android/appdata/webrequests/core/MetricsManager;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->i:Landroid/os/Handler;

    return-object v0
.end method

.method public static a(Lcom/yelp/android/analytics/a;)Lcom/yelp/android/analytics/g;
    .locals 4

    .prologue
    .line 97
    invoke-interface {p0}, Lcom/yelp/android/analytics/a;->getIri()Lcom/yelp/android/analytics/iris/a;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_0

    .line 99
    new-instance v0, Lcom/yelp/android/analytics/g;

    invoke-interface {p0, v1}, Lcom/yelp/android/analytics/a;->getRequestIdForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1}, Lcom/yelp/android/analytics/a;->getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/analytics/g;-><init>(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    :goto_0
    return-object v0

    .line 104
    :cond_0
    const-string/jumbo v0, "No IRI returned"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/bs/b;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 712
    invoke-virtual {p1}, Lcom/yelp/android/bs/b;->a()Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/analytics/iris/GoogleAnalyticsCategory;->getName()Ljava/lang/String;

    move-result-object v0

    .line 714
    invoke-virtual {p1}, Lcom/yelp/android/bs/b;->b()Z

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
    .line 509
    if-eqz p2, :cond_0

    .line 511
    :goto_0
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 513
    :try_start_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/b;

    invoke-virtual {v0}, Lcom/yelp/android/analytics/b;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 511
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 509
    :cond_0
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0

    .line 519
    :cond_1
    if-eqz p1, :cond_2

    .line 521
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 527
    :goto_3
    return-object v0

    .line 522
    :catch_0
    move-exception v0

    .line 524
    const-string/jumbo v0, "[]"

    goto :goto_3

    .line 527
    :cond_2
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 514
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
            "Lcom/yelp/android/appdata/webrequests/core/MetricsManager$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/yelp/android/analytics/g;->d()Lcom/yelp/android/analytics/iris/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/analytics/iris/a;->getGoogleAnalyticMetric()Lcom/yelp/android/bs/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/bs/b;->e()[Lcom/yelp/android/analytics/c;

    move-result-object v1

    .line 670
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 672
    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 673
    invoke-virtual {p0}, Lcom/yelp/android/analytics/g;->e()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4}, Lcom/yelp/android/analytics/c;->getParameterKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 674
    invoke-virtual {p0}, Lcom/yelp/android/analytics/g;->e()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v4}, Lcom/yelp/android/analytics/c;->getParameterKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 675
    new-instance v6, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$a;

    invoke-interface {v4}, Lcom/yelp/android/analytics/c;->getDimensionIndex()I

    move-result v4

    invoke-direct {v6, v4, v5}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$a;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 679
    :cond_1
    return-object v2
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 135
    sget-object v1, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a:Ljava/lang/ref/WeakReference;

    .line 137
    monitor-exit v1

    .line 138
    return-void

    .line 137
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

    .line 147
    invoke-static {p0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/a;)Lcom/yelp/android/analytics/g;

    move-result-object v3

    .line 148
    if-eqz v3, :cond_2

    .line 149
    sget-object v4, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->b:Ljava/lang/Object;

    monitor-enter v4

    .line 150
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/yelp/android/analytics/g;->e()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 152
    if-ne v2, v0, :cond_1

    const-string/jumbo v2, "portrait"

    .line 157
    :goto_0
    const-string/jumbo v6, "orientation"

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string/jumbo v2, "is_first"

    invoke-static {p0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->b(Lcom/yelp/android/analytics/a;)Z

    move-result v6

    if-nez v6, :cond_0

    move v1, v0

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-virtual {v3, v5}, Lcom/yelp/android/analytics/g;->a(Ljava/util/Map;)V

    .line 165
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 166
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a:Ljava/lang/ref/WeakReference;

    .line 167
    monitor-exit v4

    .line 170
    :goto_1
    return v0

    .line 152
    :cond_1
    const-string/jumbo v2, "landscape"

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move v0, v1

    .line 170
    goto :goto_1
.end method

.method static synthetic b(Lcom/yelp/android/appdata/webrequests/core/MetricsManager;)Ljava/io/File;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->l:Ljava/io/File;

    return-object v0
.end method

.method public static b(Lcom/yelp/android/analytics/a;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 117
    sget-object v0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v1

    .line 121
    :cond_1
    sget-object v0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/a;

    .line 122
    if-eqz v0, :cond_0

    .line 126
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

    .line 282
    if-nez p1, :cond_0

    .line 320
    :goto_0
    return v0

    .line 286
    :cond_0
    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->f:Ljava/util/ArrayList;

    monitor-enter v2

    .line 291
    :try_start_0
    iget-boolean v3, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->e:Z

    if-nez v3, :cond_2

    instance-of v3, p1, Lcom/yelp/android/analytics/m;

    if-nez v3, :cond_1

    instance-of v3, p1, Lcom/yelp/android/analytics/o;

    if-eqz v3, :cond_2

    .line 294
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 297
    :cond_2
    :try_start_1
    iget-boolean v3, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->e:Z

    if-nez v3, :cond_4

    .line 298
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 299
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->d:Ljava/lang/String;

    .line 300
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

    .line 304
    const/4 v3, 0x0

    iput v3, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->h:I

    .line 305
    instance-of v3, p1, Lcom/yelp/android/analytics/k;

    if-nez v3, :cond_3

    .line 306
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->K()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/BaseYelpApplication;->J()Lcom/yelp/android/appdata/r;

    move-result-object v3

    invoke-interface {v3}, Lcom/yelp/android/appdata/r;->a()Ljava/lang/String;

    move-result-object v3

    .line 308
    new-instance v4, Lcom/yelp/android/analytics/k;

    invoke-direct {v4, v3}, Lcom/yelp/android/analytics/k;-><init>(Ljava/lang/String;)V

    .line 309
    iget v3, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->h:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->h:I

    invoke-virtual {v4, v3}, Lcom/yelp/android/analytics/k;->a(I)V

    .line 310
    iget-object v3, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->d:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/yelp/android/analytics/k;->a(Ljava/lang/String;)V

    .line 311
    iget-object v3, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->e:Z

    .line 315
    :cond_4
    iget v3, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->h:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->h:I

    invoke-virtual {p1, v3}, Lcom/yelp/android/analytics/b;->a(I)V

    .line 316
    iget-object v3, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->d:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/yelp/android/analytics/b;->a(Ljava/lang/String;)V

    .line 317
    const-class v3, Lcom/yelp/android/analytics/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    :cond_5
    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->e:Z

    .line 318
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 320
    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/appdata/webrequests/core/MetricsManager;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->p:Z

    return v0
.end method

.method private static d()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/appdata/webrequests/core/MetricsManager$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 686
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 687
    invoke-static {}, Lcom/yelp/android/analytics/GADimensions;->values()[Lcom/yelp/android/analytics/GADimensions;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 688
    invoke-virtual {v4}, Lcom/yelp/android/analytics/GADimensions;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 689
    new-instance v5, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$a;

    invoke-virtual {v4}, Lcom/yelp/android/analytics/GADimensions;->getIndex()I

    move-result v6

    invoke-virtual {v4}, Lcom/yelp/android/analytics/GADimensions;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$a;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 692
    :cond_1
    return-object v1
.end method

.method private d(Lcom/yelp/android/analytics/b;)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 547
    .line 550
    instance-of v0, p1, Lcom/yelp/android/analytics/g;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->p:Z

    if-nez v0, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 554
    check-cast v0, Lcom/yelp/android/analytics/g;

    .line 556
    invoke-virtual {v0}, Lcom/yelp/android/analytics/g;->d()Lcom/yelp/android/analytics/iris/a;

    move-result-object v1

    .line 557
    invoke-interface {v1}, Lcom/yelp/android/analytics/iris/a;->isExcludedFromGoogleAnalytics()Z

    move-result v2

    if-nez v2, :cond_0

    .line 561
    invoke-interface {v1}, Lcom/yelp/android/analytics/iris/a;->getGoogleAnalyticMetric()Lcom/yelp/android/bs/b;

    move-result-object v2

    .line 564
    invoke-virtual {v2}, Lcom/yelp/android/bs/b;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 566
    iget-object v3, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->q:Ljava/util/Random;

    const/16 v5, 0xa

    invoke-virtual {v3, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 567
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lcom/yelp/android/analytics/iris/a;->getIriName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " / 10"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 576
    :goto_1
    sget-object v3, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$3;->a:[I

    invoke-virtual {v2}, Lcom/yelp/android/bs/b;->f()Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$GaTrackerType;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 583
    iget-object v3, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->n:Lcom/google/android/gms/analytics/g;

    .line 587
    :goto_2
    invoke-static {v0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/g;)Ljava/util/List;

    move-result-object v5

    .line 588
    invoke-static {}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->d()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 590
    instance-of v6, v2, Lcom/yelp/android/bs/c;

    if-eqz v6, :cond_5

    .line 591
    invoke-virtual {v3, v1}, Lcom/google/android/gms/analytics/g;->a(Ljava/lang/String;)V

    .line 592
    new-instance v2, Lcom/google/android/gms/analytics/d$d;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/d$d;-><init>()V

    .line 593
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->r:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 594
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->r:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/analytics/d$d;->d(Ljava/lang/String;)Lcom/google/android/gms/analytics/d$c;

    .line 595
    iput-object v4, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->r:Ljava/lang/String;

    .line 598
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$a;

    .line 599
    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$a;->a()I

    move-result v5

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Lcom/google/android/gms/analytics/d$d;->a(ILjava/lang/String;)Lcom/google/android/gms/analytics/d$c;

    goto :goto_3

    .line 572
    :cond_3
    invoke-interface {v1}, Lcom/yelp/android/analytics/iris/a;->getIriName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 578
    :pswitch_0
    iget-object v3, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->o:Lcom/google/android/gms/analytics/g;

    goto :goto_2

    .line 601
    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/analytics/d$d;->a()Ljava/util/Map;

    move-result-object v1

    .line 602
    invoke-virtual {v3, v1}, Lcom/google/android/gms/analytics/g;->a(Ljava/util/Map;)V

    .line 647
    :goto_4
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->H()Lcom/yelp/android/ce/a;

    move-result-object v2

    .line 648
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 650
    const-string/jumbo v2, "name"

    invoke-virtual {v0}, Lcom/yelp/android/analytics/g;->d()Lcom/yelp/android/analytics/iris/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/yelp/android/analytics/iris/a;->getIriName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->u:Lrx/subjects/a;

    new-instance v3, Lcom/yelp/android/serializable/IriTrackerIri;

    invoke-virtual {v0}, Lcom/yelp/android/analytics/g;->d()Lcom/yelp/android/analytics/iris/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/analytics/iris/a;->getIriName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "&t"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v4, v0, v1}, Lcom/yelp/android/serializable/IriTrackerIri;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lrx/subjects/a;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 603
    :cond_5
    instance-of v6, v2, Lcom/yelp/android/bs/d;

    if-eqz v6, :cond_7

    .line 604
    check-cast p1, Lcom/yelp/android/analytics/l;

    .line 605
    new-instance v6, Lcom/google/android/gms/analytics/d$e;

    invoke-direct {v6}, Lcom/google/android/gms/analytics/d$e;-><init>()V

    invoke-direct {p0, v2}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/bs/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/gms/analytics/d$e;->b(Ljava/lang/String;)Lcom/google/android/gms/analytics/d$e;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/analytics/l;->f()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/analytics/d$e;->a(J)Lcom/google/android/gms/analytics/d$e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/analytics/d$e;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/d$e;

    move-result-object v2

    .line 611
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$a;

    .line 612
    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$a;->a()I

    move-result v6

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Lcom/google/android/gms/analytics/d$e;->a(ILjava/lang/String;)Lcom/google/android/gms/analytics/d$c;

    goto :goto_5

    .line 615
    :cond_6
    invoke-virtual {v2}, Lcom/google/android/gms/analytics/d$e;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/analytics/g;->a(Ljava/util/Map;)V

    move-object v1, v4

    .line 616
    goto :goto_4

    :cond_7
    instance-of v6, v2, Lcom/yelp/android/bs/a;

    if-eqz v6, :cond_b

    .line 617
    new-instance v4, Lcom/google/android/gms/analytics/d$a;

    invoke-direct {v4}, Lcom/google/android/gms/analytics/d$a;-><init>()V

    invoke-direct {p0, v2}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/bs/b;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/android/gms/analytics/d$a;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/d$a;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/analytics/d$a;->b(Ljava/lang/String;)Lcom/google/android/gms/analytics/d$a;

    move-result-object v4

    .line 622
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$a;

    .line 623
    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$a;->a()I

    move-result v6

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v6, v1}, Lcom/google/android/gms/analytics/d$a;->a(ILjava/lang/String;)Lcom/google/android/gms/analytics/d$c;

    goto :goto_6

    :cond_8
    move-object v1, v2

    .line 626
    check-cast v1, Lcom/yelp/android/bs/a;

    .line 628
    invoke-virtual {v1}, Lcom/yelp/android/bs/a;->c()Ljava/lang/String;

    move-result-object v2

    .line 629
    if-eqz v2, :cond_9

    .line 630
    invoke-virtual {v0}, Lcom/yelp/android/analytics/g;->e()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 631
    if-eqz v2, :cond_9

    .line 632
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/android/gms/analytics/d$a;->c(Ljava/lang/String;)Lcom/google/android/gms/analytics/d$a;

    .line 636
    :cond_9
    invoke-virtual {v1}, Lcom/yelp/android/bs/a;->d()Ljava/lang/String;

    move-result-object v1

    .line 637
    if-eqz v1, :cond_a

    .line 638
    invoke-virtual {v0}, Lcom/yelp/android/analytics/g;->e()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 639
    if-eqz v1, :cond_a

    .line 640
    invoke-static {v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Ljava/lang/Object;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/analytics/d$a;->a(J)Lcom/google/android/gms/analytics/d$a;

    .line 643
    :cond_a
    invoke-virtual {v4}, Lcom/google/android/gms/analytics/d$a;->a()Ljava/util/Map;

    move-result-object v1

    .line 644
    invoke-virtual {v3, v1}, Lcom/google/android/gms/analytics/g;->a(Ljava/util/Map;)V

    goto/16 :goto_4

    :cond_b
    move-object v1, v4

    goto/16 :goto_4

    .line 576
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
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
    .line 446
    new-instance v0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$2;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$2;-><init>(Lcom/yelp/android/appdata/webrequests/core/MetricsManager;[Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->f:Ljava/util/ArrayList;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$2;->c([Ljava/lang/Object;)Lcom/yelp/android/util/q;

    move-result-object v0

    .line 480
    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->e:Z

    if-nez v0, :cond_0

    .line 402
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->c(Landroid/content/Context;)V

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->g:Ljava/util/ArrayList;

    monitor-enter v1

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/b;

    .line 407
    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 410
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 411
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    return-void
.end method

.method public a(Lcom/yelp/android/analytics/b;)V
    .locals 4

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->d(Lcom/yelp/android/analytics/b;)V

    .line 243
    invoke-direct {p0, p1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->c(Lcom/yelp/android/analytics/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->m:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 249
    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    :cond_0
    return-void

    .line 247
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 231
    invoke-static {p2, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 232
    return-void
.end method

.method public a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    invoke-interface {p1}, Lcom/yelp/android/analytics/iris/a;->getIriName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
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

    .line 227
    :cond_0
    new-instance v0, Lcom/yelp/android/analytics/g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/yelp/android/analytics/g;-><init>(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 228
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
    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->k:Z

    .line 362
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->l:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->l:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 365
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 278
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->r:Ljava/lang/String;

    .line 279
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 542
    iput-boolean p1, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->p:Z

    .line 543
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/c;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/c;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/c;->b(Z)V

    .line 544
    return-void

    .line 543
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 341
    iget-boolean v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->k:Z

    if-eqz v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 344
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->m:J

    .line 345
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->K()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->t()Lcom/yelp/android/debug/Debug;

    move-result-object v0

    iget-boolean v0, v0, Lcom/yelp/android/debug/Debug;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 346
    iput-boolean v4, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->k:Z

    .line 347
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->f:Ljava/util/ArrayList;

    monitor-enter v1

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->j:Ljava/util/ArrayList;

    .line 349
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 350
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    new-instance v0, Lcom/yelp/android/appdata/webrequests/core/a;

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->s:Lcom/yelp/android/ui/util/a;

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->j:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p0}, Lcom/yelp/android/appdata/webrequests/core/a;-><init>(Lcom/yelp/android/ui/util/a;Ljava/util/List;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 352
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->l:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/a;->a(Ljava/io/File;)V

    .line 353
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/a;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 356
    :cond_1
    const-string/jumbo v0, "Last cache flush at %s"

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 427
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->K()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->t()Lcom/yelp/android/debug/Debug;

    move-result-object v0

    iget-boolean v0, v0, Lcom/yelp/android/debug/Debug;->b:Z

    if-eqz v0, :cond_0

    .line 429
    new-instance v0, Lcom/yelp/android/analytics/j;

    invoke-direct {v0}, Lcom/yelp/android/analytics/j;-><init>()V

    invoke-direct {p0, v0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->c(Lcom/yelp/android/analytics/b;)Z

    .line 430
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->t:Ljava/lang/Runnable;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a([Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 432
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_ENTRY:Lcom/yelp/android/analytics/GADimensions;

    iput-object v3, v0, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    .line 433
    sget-object v0, Lcom/yelp/android/analytics/GADimensions;->MOBILE_VERTICAL_SEARCH_TYPE:Lcom/yelp/android/analytics/GADimensions;

    iput-object v3, v0, Lcom/yelp/android/analytics/GADimensions;->value:Ljava/lang/String;

    .line 434
    return-void
.end method

.method public b(Lcom/yelp/android/analytics/b;)V
    .locals 2

    .prologue
    .line 264
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->g:Ljava/util/ArrayList;

    monitor-enter v1

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    monitor-exit v1

    .line 267
    return-void

    .line 266
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
    .line 532
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/c;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/c;

    move-result-object v0

    .line 533
    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/c;->a(I)Lcom/google/android/gms/analytics/g;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->n:Lcom/google/android/gms/analytics/g;

    .line 534
    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/c;->a(I)Lcom/google/android/gms/analytics/g;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->o:Lcom/google/android/gms/analytics/g;

    .line 535
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/c;->b(I)V

    .line 539
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 415
    invoke-static {p1}, Lcom/yelp/android/appdata/BaseYelpApplication;->d(Landroid/content/Context;)Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->J()Lcom/yelp/android/appdata/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/appdata/r;->a()Ljava/lang/String;

    move-result-object v0

    .line 416
    new-instance v1, Lcom/yelp/android/analytics/k;

    invoke-direct {v1, v0}, Lcom/yelp/android/analytics/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 417
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

    .line 369
    iput-boolean v2, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->k:Z

    .line 380
    const-string/jumbo v0, "Error with analytics, %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 383
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->f:Ljava/util/ArrayList;

    monitor-enter v1

    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->j:Ljava/util/ArrayList;

    .line 388
    :cond_0
    monitor-exit v1

    .line 390
    :cond_1
    return-void

    .line 388
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
    .line 74
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
