.class public Lcom/yelp/android/appdata/AppData;
.super Lcom/yelp/android/appdata/BaseYelpApplication;
.source "AppData.java"

# interfaces
.implements Lcom/yelp/android/appdata/StateBroadcastReceiver$a;


# static fields
.field private static h:Lcom/yelp/android/appdata/AppData;

.field private static i:Z


# instance fields
.field private A:Lcom/yelp/android/appdata/e;

.field private B:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yelp/android/ui/activities/support/b;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lcom/yelp/android/services/push/e;

.field private D:Lcom/yelp/android/serializable/PhotoAdsConfig;

.field private E:Lcom/yelp/android/appdata/m;

.field private F:Z

.field private G:Lcom/yelp/android/appdata/webrequests/l;

.field private H:Lcom/yelp/android/appdata/StateBroadcastReceiver;

.field private I:Lcom/yelp/android/cn/d;

.field private J:J

.field private K:Lcom/yelp/android/bz/a;

.field private L:Lcom/yelp/android/bt/b;

.field private M:Lcom/yelp/android/ce/a;

.field private final N:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/l$a;",
            ">;"
        }
    .end annotation
.end field

.field a:Lorg/apache/http/client/HttpClient;

.field private j:Lcom/yelp/android/ui/util/ao;

.field private k:Lcom/yelp/android/appdata/LocationService;

.field private l:Lcom/yelp/android/appdata/c;

.field private m:Lcom/yelp/android/appdata/LocaleSettings;

.field private n:Lcom/yelp/android/appdata/f;

.field private o:Lcom/yelp/android/database/g;

.field private p:Lcom/yelp/android/database/e;

.field private q:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

.field private r:Lcom/yelp/android/appdata/webrequests/co;

.field private s:Lcom/path/android/jobqueue/b;

.field private t:Lcom/yelp/android/ui/util/a;

.field private u:Lcom/yelp/android/analytics/adjust/AdjustManager;

.field private v:Lcom/yelp/android/analytics/i;

.field private w:Lcom/yelp/android/appdata/ApiPreferences;

.field private x:Lcom/yelp/android/services/backgroundlocation/a;

.field private y:Z

.field private z:Lcom/yelp/android/debug/Debug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    sput-boolean v0, Lcom/yelp/android/appdata/AppData;->i:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/yelp/android/appdata/BaseYelpApplication;-><init>()V

    .line 796
    new-instance v0, Lcom/yelp/android/appdata/AppData$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/AppData$5;-><init>(Lcom/yelp/android/appdata/AppData;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->N:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/appdata/AppData;->J:J

    .line 158
    return-void
.end method

.method public static declared-synchronized G()Z
    .locals 2

    .prologue
    .line 1130
    const-class v0, Lcom/yelp/android/appdata/AppData;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/yelp/android/appdata/AppData;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private L()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 251
    new-instance v0, Lcom/yelp/android/appdata/AppData$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/AppData$1;-><init>(Lcom/yelp/android/appdata/AppData;)V

    .line 259
    invoke-static {p0, v0}, Lcom/yelp/android/webimageview/ImageLoader;->initialize(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 260
    invoke-static {}, Lcom/yelp/android/webimageview/ImageLoader;->trimCache()V

    .line 262
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->n:Lcom/yelp/android/appdata/f;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->n:Lcom/yelp/android/appdata/f;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/au/a;->b(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->n:Lcom/yelp/android/appdata/f;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bugsnag/android/Bugsnag;->setUserId(Ljava/lang/String;)V

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/av;->a(Landroid/content/res/Resources;)V

    .line 271
    const-string/jumbo v0, "Yelp"

    invoke-static {v0}, Lcom/comscore/analytics/k;->c(Ljava/lang/String;)V

    .line 272
    invoke-static {p0}, Lcom/comscore/analytics/k;->a(Landroid/content/Context;)V

    .line 273
    invoke-static {v2}, Lcom/comscore/analytics/k;->b(Z)V

    .line 274
    sget-object v0, Lcom/comscore/utils/TransmissionMode;->DEFAULT:Lcom/comscore/utils/TransmissionMode;

    invoke-static {v0}, Lcom/comscore/analytics/k;->b(Lcom/comscore/utils/TransmissionMode;)V

    .line 275
    sget-object v0, Lcom/comscore/utils/TransmissionMode;->WIFIONLY:Lcom/comscore/utils/TransmissionMode;

    invoke-static {v0}, Lcom/comscore/analytics/k;->a(Lcom/comscore/utils/TransmissionMode;)V

    .line 276
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/comscore/analytics/k;->a(Z)V

    .line 277
    invoke-static {}, Lcom/yelp/android/services/i;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/analytics/k;->b(Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/yelp/android/services/i;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/analytics/k;->a(Ljava/lang/String;)V

    .line 279
    invoke-static {}, Lcom/yelp/android/services/i;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/analytics/k;->d(Ljava/lang/String;)V

    .line 285
    invoke-static {p0, p0}, Lcom/yelp/android/appdata/StateBroadcastReceiver;->a(Landroid/content/Context;Lcom/yelp/android/appdata/StateBroadcastReceiver$a;)Lcom/yelp/android/appdata/StateBroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->H:Lcom/yelp/android/appdata/StateBroadcastReceiver;

    .line 288
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    .line 289
    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Z)V

    .line 290
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->c()V

    .line 292
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 293
    if-eqz v0, :cond_1

    .line 299
    const-string/jumbo v1, "GooglePlayServicesUnavailable"

    invoke-static {v1, v2}, Lcom/yelp/android/au/a;->a(Ljava/lang/String;Z)V

    .line 300
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->GooglePlayServicesUnavailable:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "reason_code"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/appdata/AppData;->M()V

    .line 307
    return-void
.end method

.method private M()V
    .locals 2

    .prologue
    .line 314
    invoke-static {}, Lcom/yelp/android/util/v;->a()Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "ydid"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 323
    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 325
    if-nez v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 329
    :cond_0
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 331
    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/v;->a(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private N()V
    .locals 3

    .prologue
    .line 340
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Lcom/yelp/android/appdata/webrequests/c;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/appdata/AppData$2;

    invoke-direct {v2, p0}, Lcom/yelp/android/appdata/AppData$2;-><init>(Lcom/yelp/android/appdata/AppData;)V

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 358
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 360
    :cond_0
    return-void
.end method

.method private O()V
    .locals 1

    .prologue
    .line 709
    const-string/jumbo v0, "Starting Push Service"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->i(Ljava/lang/Object;Ljava/lang/String;)I

    .line 710
    invoke-static {}, Lcom/yelp/android/services/push/b;->b()Lcom/yelp/android/services/push/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/services/push/b;->c()V

    .line 711
    return-void
.end method

.method private P()V
    .locals 2

    .prologue
    .line 714
    const-string/jumbo v0, "Stopping Push Service"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->i(Ljava/lang/Object;Ljava/lang/String;)I

    .line 715
    invoke-static {}, Lcom/yelp/android/services/push/b;->b()Lcom/yelp/android/services/push/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/services/push/b;->e()V

    .line 716
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/c;->a(Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/c;->a(Z)V

    .line 718
    return-void
.end method

.method private Q()V
    .locals 2

    .prologue
    .line 864
    new-instance v0, Lcom/yelp/android/appdata/webrequests/df;

    new-instance v1, Lcom/yelp/android/appdata/AppData$6;

    invoke-direct {v1, p0}, Lcom/yelp/android/appdata/AppData$6;-><init>(Lcom/yelp/android/appdata/AppData;)V

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/df;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 881
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/df;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 882
    return-void
.end method

.method private R()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 937
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/c;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/c;->c(Z)V

    .line 938
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/c;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/c;->d(Z)V

    .line 939
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/c;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/c;->g(Z)V

    .line 940
    return-void
.end method

.method private a(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->m:Lcom/yelp/android/appdata/LocaleSettings;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/LocaleSettings;->a(Ljava/util/Locale;)V

    .line 400
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->m:Lcom/yelp/android/appdata/LocaleSettings;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->a()Ljava/lang/String;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/yelp/android/appdata/AppData;->p:Lcom/yelp/android/database/e;

    invoke-virtual {v1}, Lcom/yelp/android/database/e;->c()Ljava/lang/String;

    move-result-object v1

    .line 402
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/yelp/android/appdata/AppData;->p:Lcom/yelp/android/database/e;

    invoke-static {}, Lcom/yelp/android/appdata/LocaleSettings;->b()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Lcom/yelp/android/database/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 407
    const-string/jumbo v0, "Error loading new category database for locale"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Lcom/yelp/android/analytics/b;)V
    .locals 1

    .prologue
    .line 786
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 787
    return-void
.end method

.method public static a(Lcom/yelp/android/analytics/iris/TimingIri;J)V
    .locals 3

    .prologue
    .line 793
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/analytics/l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/yelp/android/analytics/l;-><init>(Lcom/yelp/android/analytics/iris/a;JLjava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 794
    return-void
.end method

.method public static a(Lcom/yelp/android/analytics/iris/a;)V
    .locals 2

    .prologue
    .line 755
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 756
    return-void
.end method

.method public static a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 767
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 768
    return-void
.end method

.method public static a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V
    .locals 1
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
    .line 777
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 778
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/AppData;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/yelp/android/appdata/AppData;->Q()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/AppData;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/yelp/android/appdata/AppData;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 888
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/c;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->y()V

    .line 889
    const-string/jumbo v0, "Features"

    invoke-virtual {p0, v0, v4}, Lcom/yelp/android/appdata/AppData;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/Features;->updated_privacy_policy:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/Features;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 894
    sget-object v0, Lcom/yelp/android/appdata/Features;->updated_privacy_policy:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 895
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/c;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/c;->x()I

    move-result v2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/c;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/c;->i()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 899
    iget-object v2, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/c;

    invoke-virtual {v2, v3}, Lcom/yelp/android/appdata/c;->c(Z)V

    .line 901
    :cond_0
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/c;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/c;->m()Z

    move-result v2

    if-nez v2, :cond_2

    .line 908
    invoke-direct {p0}, Lcom/yelp/android/appdata/AppData;->R()V

    .line 934
    :cond_1
    :goto_0
    return-void

    .line 910
    :cond_2
    if-nez v1, :cond_3

    if-eqz v0, :cond_1

    :cond_3
    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/c;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/c;->m()Z

    move-result v2

    if-nez v2, :cond_1

    .line 920
    :cond_4
    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    .line 921
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/c;

    invoke-virtual {v0, v4}, Lcom/yelp/android/appdata/c;->c(Z)V

    goto :goto_0

    .line 923
    :cond_5
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 924
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 930
    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 931
    invoke-direct {p0}, Lcom/yelp/android/appdata/AppData;->R()V

    goto :goto_0
.end method

.method public static declared-synchronized b()Lcom/yelp/android/appdata/AppData;
    .locals 2

    .prologue
    .line 443
    const-class v0, Lcom/yelp/android/appdata/AppData;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/yelp/android/appdata/AppData;->h:Lcom/yelp/android/appdata/AppData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic b(Lcom/yelp/android/appdata/AppData;)Lcom/yelp/android/appdata/c;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/c;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/appdata/AppData;)Lcom/yelp/android/appdata/ApiPreferences;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->w:Lcom/yelp/android/appdata/ApiPreferences;

    return-object v0
.end method

.method public static declared-synchronized d()Z
    .locals 2

    .prologue
    .line 451
    const-class v1, Lcom/yelp/android/appdata/AppData;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yelp/android/appdata/AppData;->h:Lcom/yelp/android/appdata/AppData;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yelp/android/appdata/AppData;->h:Lcom/yelp/android/appdata/AppData;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static w()Lcom/path/android/jobqueue/b;
    .locals 1

    .prologue
    .line 742
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/appdata/AppData;->s:Lcom/path/android/jobqueue/b;

    return-object v0
.end method


# virtual methods
.method public A()Lcom/yelp/android/ui/util/ao;
    .locals 1

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->j:Lcom/yelp/android/ui/util/ao;

    return-object v0
.end method

.method public B()Lcom/yelp/android/appdata/m;
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->E:Lcom/yelp/android/appdata/m;

    return-object v0
.end method

.method public C()Lcom/yelp/android/bt/b;
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->L:Lcom/yelp/android/bt/b;

    return-object v0
.end method

.method public D()Lcom/yelp/android/cn/d;
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->I:Lcom/yelp/android/cn/d;

    return-object v0
.end method

.method public E()Lcom/yelp/android/serializable/PhotoAdsConfig;
    .locals 3

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->D:Lcom/yelp/android/serializable/PhotoAdsConfig;

    if-nez v0, :cond_0

    .line 1111
    new-instance v0, Lcom/yelp/android/serializable/PhotoAdsConfig;

    const/4 v1, 0x3

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/PhotoAdsConfig;-><init>(II)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->D:Lcom/yelp/android/serializable/PhotoAdsConfig;

    .line 1115
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->D:Lcom/yelp/android/serializable/PhotoAdsConfig;

    return-object v0
.end method

.method public F()V
    .locals 1

    .prologue
    .line 1122
    invoke-static {p0}, Lcom/yelp/android/appdata/LocationService;->c(Landroid/content/Context;)Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->k:Lcom/yelp/android/appdata/LocationService;

    .line 1123
    return-void
.end method

.method public H()Lcom/yelp/android/ce/a;
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->M:Lcom/yelp/android/ce/a;

    return-object v0
.end method

.method public synthetic I()Lcom/yelp/android/appdata/d;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic J()Lcom/yelp/android/appdata/r;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->p()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 9

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/g;->a(Landroid/content/Context;)V

    .line 172
    invoke-static {}, Lcom/yelp/android/services/i;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/g;->a(Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/yelp/android/services/push/b;->a()V

    .line 177
    new-instance v0, Lcom/yelp/android/ui/util/c;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->j:Lcom/yelp/android/ui/util/ao;

    .line 180
    new-instance v0, Lcom/yelp/android/util/YelpLogDelegate;

    invoke-direct {v0}, Lcom/yelp/android/util/YelpLogDelegate;-><init>()V

    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->registerDelegate(Lcom/yelp/android/util/YelpLog$a;)V

    .line 181
    new-instance v0, Lcom/yelp/android/analytics/adjust/AdjustManager;

    invoke-direct {v0, p0}, Lcom/yelp/android/analytics/adjust/AdjustManager;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->u:Lcom/yelp/android/analytics/adjust/AdjustManager;

    .line 183
    new-instance v0, Lcom/yelp/android/appdata/m;

    invoke-direct {v0}, Lcom/yelp/android/appdata/m;-><init>()V

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/appdata/m;)V

    .line 184
    new-instance v0, Lcom/yelp/android/bt/c;

    invoke-direct {v0}, Lcom/yelp/android/bt/c;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->L:Lcom/yelp/android/bt/b;

    .line 188
    sget-object v0, Lcom/yelp/android/appdata/experiment/d;->a:Lcom/yelp/android/appdata/experiment/d;

    invoke-static {v0}, Lcom/yelp/android/appdata/experiment/j;->a(Lcom/yelp/android/appdata/experiment/i;)V

    .line 189
    sget-object v0, Lcom/yelp/android/appdata/experiment/d;->b:Lcom/yelp/android/appdata/experiment/i;

    invoke-static {v0}, Lcom/yelp/android/appdata/experiment/g;->a(Lcom/yelp/android/appdata/experiment/i;)V

    .line 190
    sget-object v0, Lcom/yelp/android/appdata/experiment/h;->d:Lcom/yelp/android/appdata/experiment/h;

    invoke-static {v0}, Lcom/yelp/android/appdata/Features;->setData(Lcom/yelp/android/appdata/experiment/i;)V

    .line 192
    new-instance v0, Lcom/yelp/android/services/push/e;

    invoke-direct {v0}, Lcom/yelp/android/services/push/e;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->C:Lcom/yelp/android/services/push/e;

    .line 193
    new-instance v0, Lcom/yelp/android/appdata/ApiPreferences;

    invoke-direct {v0}, Lcom/yelp/android/appdata/ApiPreferences;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->w:Lcom/yelp/android/appdata/ApiPreferences;

    .line 194
    new-instance v0, Lcom/yelp/android/appdata/c;

    iget-object v1, p0, Lcom/yelp/android/appdata/AppData;->w:Lcom/yelp/android/appdata/ApiPreferences;

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/appdata/c;-><init>(Landroid/content/Context;Lcom/yelp/android/appdata/ApiPreferences;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/c;

    .line 195
    new-instance v0, Lcom/yelp/android/appdata/LocaleSettings;

    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/LocaleSettings;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->m:Lcom/yelp/android/appdata/LocaleSettings;

    .line 196
    new-instance v0, Lcom/yelp/android/appdata/q;

    iget-object v1, p0, Lcom/yelp/android/appdata/AppData;->m:Lcom/yelp/android/appdata/LocaleSettings;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/services/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/appdata/q;-><init>(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->n:Lcom/yelp/android/appdata/f;

    .line 198
    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(F)V

    .line 199
    new-instance v0, Lcom/yelp/android/debug/Debug;

    iget-object v1, p0, Lcom/yelp/android/appdata/AppData;->n:Lcom/yelp/android/appdata/f;

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/debug/Debug;-><init>(Landroid/content/Context;Lcom/yelp/android/appdata/f;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->z:Lcom/yelp/android/debug/Debug;

    .line 200
    new-instance v0, Lcom/yelp/android/appdata/webrequests/co;

    iget-object v1, p0, Lcom/yelp/android/appdata/AppData;->w:Lcom/yelp/android/appdata/ApiPreferences;

    iget-object v2, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/c;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/co;-><init>(Lcom/yelp/android/appdata/ApiPreferences;Lcom/yelp/android/appdata/c;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->r:Lcom/yelp/android/appdata/webrequests/co;

    .line 201
    new-instance v0, Lcom/yelp/android/ui/util/a;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/a;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->t:Lcom/yelp/android/ui/util/a;

    .line 202
    new-instance v0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    iget-object v1, p0, Lcom/yelp/android/appdata/AppData;->t:Lcom/yelp/android/ui/util/a;

    invoke-direct {v0, v1, p0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;-><init>(Lcom/yelp/android/ui/util/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->q:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    .line 203
    invoke-direct {p0}, Lcom/yelp/android/appdata/AppData;->O()V

    .line 204
    new-instance v0, Lcom/yelp/android/analytics/i;

    iget-object v1, p0, Lcom/yelp/android/appdata/AppData;->n:Lcom/yelp/android/appdata/f;

    iget-object v2, p0, Lcom/yelp/android/appdata/AppData;->r:Lcom/yelp/android/appdata/webrequests/co;

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/analytics/i;-><init>(Landroid/content/Context;Lcom/yelp/android/appdata/f;Lcom/yelp/android/appdata/webrequests/co;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->v:Lcom/yelp/android/analytics/i;

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->p:Lcom/yelp/android/database/e;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->p:Lcom/yelp/android/database/e;

    invoke-virtual {v0}, Lcom/yelp/android/database/e;->a()V

    .line 210
    :cond_0
    new-instance v0, Lcom/yelp/android/database/e;

    iget-object v1, p0, Lcom/yelp/android/appdata/AppData;->m:Lcom/yelp/android/appdata/LocaleSettings;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocaleSettings;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/appdata/LocaleSettings;->b()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/database/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->p:Lcom/yelp/android/database/e;

    .line 215
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->o:Lcom/yelp/android/database/g;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->o:Lcom/yelp/android/database/g;

    invoke-virtual {v0}, Lcom/yelp/android/database/g;->a()Z

    .line 218
    :cond_1
    new-instance v0, Lcom/yelp/android/database/g;

    invoke-direct {v0, p0}, Lcom/yelp/android/database/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->o:Lcom/yelp/android/database/g;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    invoke-static {p0}, Lcom/yelp/android/appdata/LocationService;->c(Landroid/content/Context;)Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->k:Lcom/yelp/android/appdata/LocationService;

    .line 224
    new-instance v0, Lcom/yelp/android/appdata/e;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->A:Lcom/yelp/android/appdata/e;

    .line 225
    invoke-direct {p0}, Lcom/yelp/android/appdata/AppData;->L()V

    .line 226
    new-instance v0, Lcom/path/android/jobqueue/b;

    invoke-static {p0}, Lcom/yelp/android/services/job/a;->a(Landroid/content/Context;)Lcom/yelp/android/bm/a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/path/android/jobqueue/b;-><init>(Landroid/content/Context;Lcom/yelp/android/bm/a;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/path/android/jobqueue/b;)V

    .line 228
    new-instance v0, Lcom/yelp/android/services/backgroundlocation/a;

    new-instance v2, Lcom/yelp/android/services/backgroundlocation/c;

    invoke-direct {v2, p0}, Lcom/yelp/android/services/backgroundlocation/c;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/yelp/android/services/backgroundlocation/b;

    invoke-direct {v3, p0}, Lcom/yelp/android/services/backgroundlocation/b;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/c;

    const-string/jumbo v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/yelp/android/appdata/AppData;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->w()Lcom/path/android/jobqueue/b;

    move-result-object v6

    new-instance v7, Lcom/yelp/android/util/r;

    invoke-direct {v7}, Lcom/yelp/android/util/r;-><init>()V

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/yelp/android/services/backgroundlocation/a;-><init>(Landroid/content/Context;Lcom/yelp/android/services/backgroundlocation/c;Lcom/yelp/android/services/backgroundlocation/b;Lcom/yelp/android/appdata/c;Landroid/app/AlarmManager;Lcom/path/android/jobqueue/b;Lcom/yelp/android/util/r;Lcom/google/android/gms/common/GoogleApiAvailability;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->x:Lcom/yelp/android/services/backgroundlocation/a;

    .line 239
    new-instance v0, Lcom/yelp/android/cn/d;

    iget-object v1, p0, Lcom/yelp/android/appdata/AppData;->q:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    invoke-direct {v0, v1}, Lcom/yelp/android/cn/d;-><init>(Lcom/yelp/android/appdata/webrequests/core/MetricsManager;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->I:Lcom/yelp/android/cn/d;

    .line 241
    new-instance v0, Lcom/yelp/android/bz/a;

    invoke-direct {v0}, Lcom/yelp/android/bz/a;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->K:Lcom/yelp/android/bz/a;

    .line 242
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->K:Lcom/yelp/android/bz/a;

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/AppData;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 243
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not initialize properly"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 963
    invoke-static {}, Lcom/yelp/android/services/push/b;->b()Lcom/yelp/android/services/push/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/services/push/b;->c()V

    .line 965
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->AppForegrounded:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "android_background_location"

    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->k:Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment$Cohort;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/BackgroundLocationExperiment$Cohort;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 971
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->x:Lcom/yelp/android/services/backgroundlocation/a;

    invoke-virtual {v0}, Lcom/yelp/android/services/backgroundlocation/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/appdata/AppData;->y:Z

    if-nez v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->x:Lcom/yelp/android/services/backgroundlocation/a;

    invoke-virtual {v0}, Lcom/yelp/android/services/backgroundlocation/a;->a()V

    .line 973
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/appdata/AppData;->y:Z

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->G:Lcom/yelp/android/appdata/webrequests/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->G:Lcom/yelp/android/appdata/webrequests/l;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/l;->u()Z

    move-result v0

    if-nez v0, :cond_2

    .line 978
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->x()V

    .line 983
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->v:Lcom/yelp/android/analytics/i;

    new-instance v1, Lcom/yelp/android/appdata/AppData$7;

    invoke-direct {v1, p0}, Lcom/yelp/android/appdata/AppData$7;-><init>(Lcom/yelp/android/appdata/AppData;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/i;->a(Lcom/yelp/android/analytics/i$a;)V

    .line 992
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->B:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 993
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/b;

    .line 999
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->e()Lcom/yelp/android/ui/util/ax;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ax;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1000
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->c()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f0023

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 1004
    :cond_3
    invoke-direct {p0}, Lcom/yelp/android/appdata/AppData;->N()V

    .line 1005
    return-void
.end method

.method public a(Lcom/path/android/jobqueue/b;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lcom/yelp/android/appdata/AppData;->s:Lcom/path/android/jobqueue/b;

    .line 747
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/m;)V
    .locals 0

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/yelp/android/appdata/AppData;->E:Lcom/yelp/android/appdata/m;

    .line 1084
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/PhotoAdsConfig;)V
    .locals 0

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/yelp/android/appdata/AppData;->D:Lcom/yelp/android/serializable/PhotoAdsConfig;

    .line 1107
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/support/b;)V
    .locals 1

    .prologue
    .line 556
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->B:Ljava/lang/ref/WeakReference;

    .line 557
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 368
    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Lcom/yelp/android/appdata/webrequests/b;

    new-instance v1, Lcom/yelp/android/appdata/AppData$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/appdata/AppData$3;-><init>(Lcom/yelp/android/appdata/AppData;)V

    invoke-direct {v0, p1, v2, v1}, Lcom/yelp/android/appdata/webrequests/b;-><init>(Ljava/lang/String;ZLcom/yelp/android/appdata/webrequests/core/c$a;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/b;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 393
    :cond_0
    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 459
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/yelp/android/appdata/AppData;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    monitor-exit p0

    return-void

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/BaseYelpApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 167
    invoke-static {p0}, Landroid/support/multidex/a;->a(Landroid/content/Context;)V

    .line 168
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1009
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->G:Lcom/yelp/android/appdata/webrequests/l;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->G:Lcom/yelp/android/appdata/webrequests/l;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/l;->a(Z)V

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/c;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/c;->j(Z)V

    .line 1013
    invoke-static {}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a()V

    .line 1014
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->s()V

    .line 1017
    invoke-static {}, Lcom/yelp/android/appdata/j;->b()V

    .line 1018
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/c;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->Y()V

    .line 1019
    return-void
.end method

.method public c()Lcom/yelp/android/services/push/e;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->C:Lcom/yelp/android/services/push/e;

    return-object v0
.end method

.method public declared-synchronized e()Z
    .locals 1

    .prologue
    .line 466
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/yelp/android/appdata/AppData;->F:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Lcom/yelp/android/appdata/c;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/c;

    return-object v0
.end method

.method public g()Lcom/yelp/android/appdata/LocaleSettings;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->m:Lcom/yelp/android/appdata/LocaleSettings;

    return-object v0
.end method

.method public h()Lcom/yelp/android/appdata/f;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->n:Lcom/yelp/android/appdata/f;

    return-object v0
.end method

.method public i()Lcom/yelp/android/database/g;
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->o:Lcom/yelp/android/database/g;

    if-nez v0, :cond_0

    .line 486
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The database must be open in order to access it."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->o:Lcom/yelp/android/database/g;

    return-object v0
.end method

.method public final j()Lcom/yelp/android/database/e;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->p:Lcom/yelp/android/database/e;

    return-object v0
.end method

.method public k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->q:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    return-object v0
.end method

.method public l()Lcom/yelp/android/analytics/adjust/AdjustManager;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->u:Lcom/yelp/android/analytics/adjust/AdjustManager;

    return-object v0
.end method

.method public m()Lcom/yelp/android/analytics/i;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->v:Lcom/yelp/android/analytics/i;

    return-object v0
.end method

.method public n()Lcom/yelp/android/ui/util/a;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->t:Lcom/yelp/android/ui/util/a;

    return-object v0
.end method

.method public o()Lcom/yelp/android/appdata/ApiPreferences;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->w:Lcom/yelp/android/appdata/ApiPreferences;

    return-object v0
.end method

.method public declared-synchronized onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 614
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/BaseYelpApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 616
    iget-boolean v0, p0, Lcom/yelp/android/appdata/AppData;->b:Z

    if-eqz v0, :cond_0

    .line 619
    new-instance v0, Lcom/yelp/android/appdata/q;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {}, Lcom/yelp/android/services/i;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/appdata/q;-><init>(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->n:Lcom/yelp/android/appdata/f;

    .line 620
    invoke-direct {p0, p1}, Lcom/yelp/android/appdata/AppData;->a(Landroid/content/res/Configuration;)V

    .line 623
    invoke-static {}, Lcom/yelp/android/services/push/b;->b()Lcom/yelp/android/services/push/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/services/push/b;->c()V

    .line 626
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/appdata/AppData;->e:Z

    if-eqz v0, :cond_1

    .line 627
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->n:Lcom/yelp/android/appdata/f;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/f;->i()Z

    .line 630
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/appdata/AppData;->c:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/yelp/android/appdata/AppData;->b:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/yelp/android/appdata/AppData;->e:Z

    if-eqz v0, :cond_3

    .line 639
    :cond_2
    new-instance v0, Lcom/yelp/android/appdata/AppData$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/AppData$4;-><init>(Lcom/yelp/android/appdata/AppData;)V

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData$4;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    :cond_3
    monitor-exit p0

    return-void

    .line 614
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 577
    new-instance v0, Lcom/yelp/android/au/a$a;

    invoke-direct {v0}, Lcom/yelp/android/au/a$a;-><init>()V

    new-instance v1, Lcom/crashlytics/android/core/e$a;

    invoke-direct {v1}, Lcom/crashlytics/android/core/e$a;-><init>()V

    invoke-virtual {v1, v2}, Lcom/crashlytics/android/core/e$a;->a(Z)Lcom/crashlytics/android/core/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/crashlytics/android/core/e$a;->a()Lcom/crashlytics/android/core/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/au/a$a;->a(Lcom/crashlytics/android/core/e;)Lcom/yelp/android/au/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/au/a$a;->a()Lcom/yelp/android/au/a;

    move-result-object v0

    .line 581
    new-array v1, v3, [Lio/fabric/sdk/android/h;

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Lio/fabric/sdk/android/c;->a(Landroid/content/Context;[Lio/fabric/sdk/android/h;)Lio/fabric/sdk/android/c;

    .line 585
    invoke-static {p0}, Lcom/bugsnag/android/Bugsnag;->init(Landroid/content/Context;)Lcom/bugsnag/android/Client;

    .line 586
    const-string/jumbo v0, "User"

    const-string/jumbo v1, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bugsnag/android/Bugsnag;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 588
    invoke-super {p0}, Lcom/yelp/android/appdata/BaseYelpApplication;->onCreate()V

    .line 589
    const-string/jumbo v0, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/au/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->G()Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    invoke-static {p0}, Lcom/yelp/android/br/a;->a(Landroid/app/Application;)Lcom/yelp/android/br/b;

    .line 593
    :cond_0
    sput-object p0, Lcom/yelp/android/appdata/AppData;->h:Lcom/yelp/android/appdata/AppData;

    .line 594
    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->a()V

    .line 595
    invoke-virtual {p0, v3}, Lcom/yelp/android/appdata/AppData;->a(Z)V

    .line 596
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->n:Lcom/yelp/android/appdata/f;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/f;->i()Z

    .line 600
    const-string/jumbo v0, "releaseWhenSurfaceDestroyed"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 602
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->I:Lcom/yelp/android/cn/d;

    invoke-virtual {v0}, Lcom/yelp/android/cn/d;->a()Lcom/yelp/android/cn/c;

    move-result-object v0

    .line 603
    iget-wide v2, p0, Lcom/yelp/android/appdata/AppData;->J:J

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/cn/c;->a(J)V

    .line 604
    invoke-virtual {v0}, Lcom/yelp/android/cn/c;->b()J

    .line 607
    invoke-virtual {v0}, Lcom/yelp/android/cn/c;->g()V

    .line 609
    invoke-static {p0}, Ljp/line/android/sdk/c;->a(Landroid/content/Context;)V

    .line 610
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 659
    invoke-super {p0}, Lcom/yelp/android/appdata/BaseYelpApplication;->onLowMemory()V

    .line 660
    invoke-static {}, Lcom/yelp/android/webimageview/ImageLoader;->clearCache()V

    .line 661
    invoke-static {p0}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/t;->a()V

    .line 662
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 673
    invoke-super {p0}, Lcom/yelp/android/appdata/BaseYelpApplication;->onTerminate()V

    .line 674
    invoke-static {}, Lcom/yelp/android/webimageview/ImageLoader;->trimCache()V

    .line 675
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/AppData;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 676
    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 677
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .prologue
    .line 666
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/BaseYelpApplication;->onTrimMemory(I)V

    .line 667
    invoke-static {}, Lcom/yelp/android/webimageview/ImageLoader;->clearCache()V

    .line 668
    invoke-static {p0}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/t;->a(I)V

    .line 669
    return-void
.end method

.method public p()Lcom/yelp/android/appdata/webrequests/co;
    .locals 1

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/yelp/android/appdata/webrequests/co;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->r:Lcom/yelp/android/appdata/webrequests/co;

    return-object v0
.end method

.method public r()Lcom/yelp/android/appdata/LocationService;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->k:Lcom/yelp/android/appdata/LocationService;

    return-object v0
.end method

.method public s()Lcom/yelp/android/services/backgroundlocation/a;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->x:Lcom/yelp/android/services/backgroundlocation/a;

    return-object v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 725
    invoke-static {p1}, Lcom/yelp/android/util/h;->a(Landroid/content/Intent;)V

    .line 726
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/BaseYelpApplication;->startActivity(Landroid/content/Intent;)V

    .line 727
    return-void
.end method

.method public t()Lcom/yelp/android/debug/Debug;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->z:Lcom/yelp/android/debug/Debug;

    return-object v0
.end method

.method public final u()Lorg/apache/http/client/HttpClient;
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->a:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->a:Lorg/apache/http/client/HttpClient;

    .line 568
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->z:Lcom/yelp/android/debug/Debug;

    iget-object v1, p0, Lcom/yelp/android/appdata/AppData;->n:Lcom/yelp/android/appdata/f;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/services/c;->a(Landroid/content/Context;Lcom/yelp/android/debug/Debug;Lcom/yelp/android/appdata/f;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    goto :goto_0
.end method

.method public v()V
    .locals 0

    .prologue
    .line 705
    invoke-direct {p0}, Lcom/yelp/android/appdata/AppData;->P()V

    .line 706
    return-void
.end method

.method public x()V
    .locals 2

    .prologue
    .line 949
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->G:Lcom/yelp/android/appdata/webrequests/l;

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->G:Lcom/yelp/android/appdata/webrequests/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/l;->a(Z)V

    .line 951
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->G:Lcom/yelp/android/appdata/webrequests/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/l;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 953
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/l;

    iget-object v1, p0, Lcom/yelp/android/appdata/AppData;->N:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/l;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->G:Lcom/yelp/android/appdata/webrequests/l;

    .line 954
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->G:Lcom/yelp/android/appdata/webrequests/l;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/l;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 955
    return-void
.end method

.method public y()Lcom/yelp/android/appdata/e;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->A:Lcom/yelp/android/appdata/e;

    return-object v0
.end method

.method public z()V
    .locals 2

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/c;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/c;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->ad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/c;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/c;->s()I

    .line 1062
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/c;->j(Z)V

    .line 1064
    :cond_0
    return-void
.end method
