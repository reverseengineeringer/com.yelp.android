.class public Lcom/yelp/android/appdata/AppData;
.super Lcom/yelp/android/appdata/BaseYelpApplication;
.source "AppData.java"

# interfaces
.implements Lcom/yelp/android/appdata/ar;


# static fields
.field private static h:Lcom/yelp/android/appdata/AppData;


# instance fields
.field private A:Lcom/yelp/android/appdata/webrequests/n;

.field private B:Lcom/yelp/android/appdata/StateBroadcastReceiver;

.field private C:Lcom/yelp/android/be/c;

.field private final D:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/o;",
            ">;"
        }
    .end annotation
.end field

.field a:Lorg/apache/http/client/HttpClient;

.field private i:Lcom/yelp/android/ui/util/ci;

.field private j:Lcom/yelp/android/appdata/LocationService;

.field private k:Lcom/yelp/android/appdata/i;

.field private l:Lcom/yelp/android/appdata/LocaleSettings;

.field private m:Lcom/yelp/android/appdata/n;

.field private n:Lcom/yelp/android/database/q;

.field private o:Lcom/yelp/android/database/m;

.field private p:Lcom/yelp/android/av/a;

.field private q:Lcom/yelp/android/appdata/webrequests/dc;

.field private r:Lcom/path/android/jobqueue/c;

.field private s:Lcom/yelp/android/debug/Debug;

.field private t:Lcom/yelp/android/appdata/k;

.field private u:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yelp/android/ui/activities/support/h;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/yelp/android/services/push/i;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/yelp/android/services/push/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/yelp/android/appdata/BaseYelpApplication;-><init>()V

    .line 661
    new-instance v0, Lcom/yelp/android/appdata/e;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/e;-><init>(Lcom/yelp/android/appdata/AppData;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->D:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method private A()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 171
    new-instance v0, Lcom/yelp/android/appdata/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/b;-><init>(Lcom/yelp/android/appdata/AppData;)V

    .line 178
    invoke-static {p0, v0}, Lcom/yelp/android/webimageview/ImageLoader;->initialize(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 179
    invoke-static {}, Lcom/yelp/android/webimageview/ImageLoader;->trimCache()V

    .line 182
    new-instance v0, Lcom/yelp/android/util/YelpLogDelegate;

    invoke-direct {v0}, Lcom/yelp/android/util/YelpLogDelegate;-><init>()V

    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->registerDelegate(Lcom/yelp/android/util/al;)V

    .line 184
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->m:Lcom/yelp/android/appdata/n;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->m:Lcom/yelp/android/appdata/n;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/n;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/d;->d(Ljava/lang/String;)V

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/cw;->a(Landroid/content/res/Resources;)V

    .line 191
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->q:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    invoke-direct {p0}, Lcom/yelp/android/appdata/AppData;->G()V

    .line 194
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->q:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->f()V

    .line 198
    :cond_1
    invoke-static {p0}, Lcom/comscore/analytics/h;->a(Landroid/content/Context;)V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "https://sb.scorecardresearch.com/p2?c2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/services/x;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/analytics/h;->a(Ljava/lang/String;)V

    .line 201
    invoke-static {v2}, Lcom/comscore/analytics/h;->a(Z)V

    .line 202
    sget-object v0, Lcom/comscore/utils/TransmissionMode;->NEVER:Lcom/comscore/utils/TransmissionMode;

    invoke-static {v0}, Lcom/comscore/analytics/h;->a(Lcom/comscore/utils/TransmissionMode;)V

    .line 203
    invoke-static {}, Lcom/comscore/analytics/h;->c()V

    .line 209
    invoke-static {p0, p0}, Lcom/yelp/android/appdata/StateBroadcastReceiver;->a(Landroid/content/Context;Lcom/yelp/android/appdata/ar;)Lcom/yelp/android/appdata/StateBroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->B:Lcom/yelp/android/appdata/StateBroadcastReceiver;

    .line 213
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->a:Lcom/yelp/android/appdata/experiment/e;

    invoke-static {v0}, Lcom/yelp/android/appdata/experiment/g;->a(Lcom/yelp/android/appdata/experiment/f;)V

    .line 214
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->b:Lcom/yelp/android/appdata/experiment/e;

    invoke-static {v0}, Lcom/yelp/android/appdata/experiment/d;->a(Lcom/yelp/android/appdata/experiment/f;)V

    .line 215
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->c:Lcom/yelp/android/appdata/experiment/e;

    invoke-static {v0}, Lcom/yelp/android/appdata/Features;->setData(Lcom/yelp/android/appdata/experiment/f;)V

    .line 218
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v0

    .line 219
    invoke-virtual {v0, v2}, Lcom/yelp/android/av/a;->a(Z)V

    .line 220
    invoke-virtual {v0}, Lcom/yelp/android/av/a;->c()V

    .line 222
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 223
    if-eqz v0, :cond_2

    .line 229
    const-string/jumbo v1, "GooglePlayServicesUnavailable"

    invoke-static {v1, v2}, Lcom/crashlytics/android/d;->a(Ljava/lang/String;Z)V

    .line 230
    sget-object v1, Lcom/yelp/android/analytics/iris/AutoIri;->GooglePlayServicesUnavailable:Lcom/yelp/android/analytics/iris/AutoIri;

    const-string/jumbo v2, "reason_code"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    :cond_2
    invoke-static {}, Lcom/yelp/android/ui/util/q;->a()V

    .line 237
    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/ak;->a(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method private B()V
    .locals 3

    .prologue
    .line 246
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Lcom/yelp/android/appdata/webrequests/b;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/appdata/c;

    invoke-direct {v2, p0}, Lcom/yelp/android/appdata/c;-><init>(Lcom/yelp/android/appdata/AppData;)V

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/b;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 263
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 265
    :cond_0
    return-void
.end method

.method private C()V
    .locals 1

    .prologue
    .line 583
    const-string/jumbo v0, "Starting Push Service"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->i(Ljava/lang/Object;Ljava/lang/String;)I

    .line 584
    invoke-static {}, Lcom/yelp/android/services/push/d;->b()Lcom/yelp/android/services/push/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/services/push/d;->c()V

    .line 585
    return-void
.end method

.method private D()V
    .locals 2

    .prologue
    .line 588
    const-string/jumbo v0, "Stopping Push Service"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->i(Ljava/lang/Object;Ljava/lang/String;)I

    .line 589
    invoke-static {}, Lcom/yelp/android/services/push/d;->b()Lcom/yelp/android/services/push/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/services/push/d;->e()V

    .line 590
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->k:Lcom/yelp/android/appdata/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/i;->a(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->k:Lcom/yelp/android/appdata/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/i;->a(Z)V

    .line 592
    return-void
.end method

.method private E()V
    .locals 2

    .prologue
    .line 719
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ec;

    new-instance v1, Lcom/yelp/android/appdata/g;

    invoke-direct {v1, p0}, Lcom/yelp/android/appdata/g;-><init>(Lcom/yelp/android/appdata/AppData;)V

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/ec;-><init>(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 732
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ec;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 733
    return-void
.end method

.method private F()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 783
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->k:Lcom/yelp/android/appdata/i;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/i;->c(Z)V

    .line 784
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->k:Lcom/yelp/android/appdata/i;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/i;->d(Z)V

    .line 785
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->k:Lcom/yelp/android/appdata/i;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/i;->e(Z)V

    .line 786
    return-void
.end method

.method private G()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 846
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 847
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 848
    const v2, 0x7f07031c

    invoke-virtual {p0, v2}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 849
    const v3, 0x7f07046b

    invoke-virtual {p0, v3}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 850
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 851
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 852
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 853
    new-instance v0, Lcom/yelp/android/appdata/RemoteConfigPreferences;

    invoke-direct {v0}, Lcom/yelp/android/appdata/RemoteConfigPreferences;-><init>()V

    .line 854
    new-instance v1, Lcom/yelp/android/appdata/am;

    invoke-direct {v1, v6}, Lcom/yelp/android/appdata/am;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/am;)Lcom/yelp/android/appdata/RemoteConfigPreferences;

    .line 855
    new-instance v1, Lcom/yelp/android/appdata/webrequests/fl;

    invoke-direct {v1, v4, v0, v4, v4}, Lcom/yelp/android/appdata/webrequests/fl;-><init>(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/appdata/RemoteConfigPreferences;Landroid/location/Location;Ljava/lang/String;)V

    new-array v0, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/fl;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 857
    :cond_0
    return-void
.end method

.method private a(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/LocaleSettings;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/LocaleSettings;->a(Ljava/util/Locale;)V

    .line 276
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/LocaleSettings;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->a()Ljava/lang/String;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/yelp/android/appdata/AppData;->o:Lcom/yelp/android/database/m;

    invoke-virtual {v1}, Lcom/yelp/android/database/m;->c()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/yelp/android/appdata/AppData;->o:Lcom/yelp/android/database/m;

    invoke-static {}, Lcom/yelp/android/appdata/LocaleSettings;->b()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Lcom/yelp/android/database/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    const-string/jumbo v0, "Error loading new category database for locale"

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Lcom/yelp/android/analytics/b;)V
    .locals 1

    .prologue
    .line 651
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 652
    return-void
.end method

.method public static a(Lcom/yelp/android/analytics/iris/TimingIri;J)V
    .locals 3

    .prologue
    .line 658
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/analytics/n;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/yelp/android/analytics/n;-><init>(Lcom/yelp/android/analytics/iris/b;JLjava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 659
    return-void
.end method

.method public static a(Lcom/yelp/android/analytics/iris/b;)V
    .locals 2

    .prologue
    .line 620
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 621
    return-void
.end method

.method public static a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 632
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 633
    return-void
.end method

.method public static a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V
    .locals 1
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
    .line 642
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 643
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/AppData;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/yelp/android/appdata/AppData;->E()V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/appdata/AppData;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 82
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

    .line 737
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->k:Lcom/yelp/android/appdata/i;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->v()V

    .line 738
    const-string/jumbo v0, "Features"

    invoke-virtual {p0, v0, v4}, Lcom/yelp/android/appdata/AppData;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/Features;->updated_privacy_policy:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/Features;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 742
    sget-object v0, Lcom/yelp/android/appdata/Features;->updated_privacy_policy:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 743
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/yelp/android/appdata/AppData;->k:Lcom/yelp/android/appdata/i;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/i;->u()I

    move-result v2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/yelp/android/appdata/AppData;->k:Lcom/yelp/android/appdata/i;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/i;->g()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 746
    iget-object v2, p0, Lcom/yelp/android/appdata/AppData;->k:Lcom/yelp/android/appdata/i;

    invoke-virtual {v2, v3}, Lcom/yelp/android/appdata/i;->c(Z)V

    .line 748
    :cond_0
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/yelp/android/appdata/AppData;->k:Lcom/yelp/android/appdata/i;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/i;->k()Z

    move-result v2

    if-nez v2, :cond_2

    .line 754
    invoke-direct {p0}, Lcom/yelp/android/appdata/AppData;->F()V

    .line 780
    :cond_1
    :goto_0
    return-void

    .line 756
    :cond_2
    if-nez v1, :cond_3

    if-eqz v0, :cond_1

    :cond_3
    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/yelp/android/appdata/AppData;->k:Lcom/yelp/android/appdata/i;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/i;->k()Z

    move-result v2

    if-nez v2, :cond_1

    .line 765
    :cond_4
    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    .line 766
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->k:Lcom/yelp/android/appdata/i;

    invoke-virtual {v0, v4}, Lcom/yelp/android/appdata/i;->c(Z)V

    goto :goto_0

    .line 769
    :cond_5
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 770
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 776
    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 777
    invoke-direct {p0}, Lcom/yelp/android/appdata/AppData;->F()V

    goto :goto_0
.end method

.method public static declared-synchronized b()Lcom/yelp/android/appdata/AppData;
    .locals 2

    .prologue
    .line 319
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

.method public static declared-synchronized d()Z
    .locals 2

    .prologue
    .line 327
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

.method public static r()Lcom/path/android/jobqueue/c;
    .locals 1

    .prologue
    .line 606
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/appdata/AppData;->r:Lcom/path/android/jobqueue/c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 125
    invoke-static {}, Lcom/yelp/android/services/push/d;->a()V

    .line 128
    invoke-static {p0}, Lcom/crashlytics/android/d;->a(Landroid/content/Context;)V

    .line 132
    new-instance v0, Lcom/yelp/android/ui/util/e;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->i:Lcom/yelp/android/ui/util/ci;

    .line 133
    new-instance v0, Lcom/yelp/android/services/push/i;

    invoke-direct {v0}, Lcom/yelp/android/services/push/i;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->v:Lcom/yelp/android/services/push/i;

    .line 134
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->z:Ljava/util/HashSet;

    .line 135
    new-instance v0, Lcom/yelp/android/appdata/i;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->k:Lcom/yelp/android/appdata/i;

    .line 136
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->k:Lcom/yelp/android/appdata/i;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->r()V

    .line 137
    new-instance v0, Lcom/yelp/android/appdata/LocaleSettings;

    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/LocaleSettings;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/LocaleSettings;

    .line 138
    new-instance v0, Lcom/yelp/android/appdata/bb;

    iget-object v1, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/LocaleSettings;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/services/x;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/appdata/bb;-><init>(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->m:Lcom/yelp/android/appdata/n;

    .line 139
    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Lcom/yelp/android/appdata/ao;->a(F)V

    .line 140
    new-instance v0, Lcom/yelp/android/debug/Debug;

    iget-object v1, p0, Lcom/yelp/android/appdata/AppData;->m:Lcom/yelp/android/appdata/n;

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/debug/Debug;-><init>(Landroid/content/Context;Lcom/yelp/android/appdata/n;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->s:Lcom/yelp/android/debug/Debug;

    .line 141
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dc;

    iget-object v1, p0, Lcom/yelp/android/appdata/AppData;->k:Lcom/yelp/android/appdata/i;

    iget-object v2, p0, Lcom/yelp/android/appdata/AppData;->m:Lcom/yelp/android/appdata/n;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/dc;-><init>(Lcom/yelp/android/appdata/i;Lcom/yelp/android/appdata/n;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->q:Lcom/yelp/android/appdata/webrequests/dc;

    .line 142
    new-instance v0, Lcom/yelp/android/av/a;

    iget-object v1, p0, Lcom/yelp/android/appdata/AppData;->m:Lcom/yelp/android/appdata/n;

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/av/a;-><init>(Landroid/content/Context;Lcom/yelp/android/appdata/n;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->p:Lcom/yelp/android/av/a;

    .line 144
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->o:Lcom/yelp/android/database/m;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->o:Lcom/yelp/android/database/m;

    invoke-virtual {v0}, Lcom/yelp/android/database/m;->a()V

    .line 147
    :cond_0
    new-instance v0, Lcom/yelp/android/database/m;

    iget-object v1, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/LocaleSettings;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocaleSettings;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/appdata/LocaleSettings;->b()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/database/m;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->o:Lcom/yelp/android/database/m;

    .line 149
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->n:Lcom/yelp/android/database/q;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->n:Lcom/yelp/android/database/q;

    invoke-virtual {v0}, Lcom/yelp/android/database/q;->a()Z

    .line 152
    :cond_1
    new-instance v0, Lcom/yelp/android/database/q;

    invoke-direct {v0, p0}, Lcom/yelp/android/database/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->n:Lcom/yelp/android/database/q;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    invoke-static {p0}, Lcom/yelp/android/appdata/LocationService;->c(Landroid/content/Context;)Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->j:Lcom/yelp/android/appdata/LocationService;

    .line 158
    new-instance v0, Lcom/yelp/android/appdata/k;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->t:Lcom/yelp/android/appdata/k;

    .line 159
    invoke-direct {p0}, Lcom/yelp/android/appdata/AppData;->A()V

    .line 160
    new-instance v0, Lcom/path/android/jobqueue/c;

    invoke-static {p0}, Lcom/yelp/android/services/job/a;->a(Landroid/content/Context;)Lcom/yelp/android/aq/a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/path/android/jobqueue/c;-><init>(Landroid/content/Context;Lcom/yelp/android/aq/a;)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/path/android/jobqueue/c;)V

    .line 161
    invoke-static {}, Lcom/yelp/android/analytics/j;->a()V

    .line 162
    new-instance v0, Lcom/yelp/android/be/c;

    iget-object v1, p0, Lcom/yelp/android/appdata/AppData;->p:Lcom/yelp/android/av/a;

    invoke-direct {v0, v1}, Lcom/yelp/android/be/c;-><init>(Lcom/yelp/android/av/a;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->C:Lcom/yelp/android/be/c;

    .line 163
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not initialize properly"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 810
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/services/push/AccountPushRegistrationService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 813
    iget-boolean v0, p0, Lcom/yelp/android/appdata/AppData;->w:Z

    if-nez v0, :cond_0

    .line 814
    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->s()V

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->u:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 819
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->u:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/h;

    .line 825
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->e()Lcom/yelp/android/ui/util/dg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/dg;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 826
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->c()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0020

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 830
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/appdata/AppData;->B()V

    .line 831
    return-void
.end method

.method public a(Lcom/path/android/jobqueue/c;)V
    .locals 0

    .prologue
    .line 610
    iput-object p1, p0, Lcom/yelp/android/appdata/AppData;->r:Lcom/path/android/jobqueue/c;

    .line 611
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/RemoteConfigPreferences;)V
    .locals 3

    .prologue
    .line 535
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/yelp/android/services/push/t;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->b()Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a()Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->m()Lcom/yelp/android/appdata/ai;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->k()Lcom/yelp/android/appdata/ah;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->l()Lcom/yelp/android/appdata/ag;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->g()Lcom/yelp/android/appdata/ak;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-virtual {p1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->d()Lcom/yelp/android/appdata/al;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-virtual {p1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->f()Lcom/yelp/android/appdata/am;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-virtual {p1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->c()Lcom/yelp/android/appdata/an;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/AppData;->a([Lcom/yelp/android/services/push/t;)V

    .line 545
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/support/h;)V
    .locals 1

    .prologue
    .line 412
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->u:Ljava/lang/ref/WeakReference;

    .line 413
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yelp/android/appdata/webrequests/dc;->a(Landroid/content/Context;)V

    .line 871
    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/debug/h;

    invoke-direct {v1, p1}, Lcom/yelp/android/debug/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/debug/Debug;->a(Lcom/yelp/android/debug/h;Landroid/content/Context;)V

    .line 872
    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/q;->f()Lcom/yelp/android/database/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/d;->c()V

    .line 873
    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/q;->g()Lcom/yelp/android/ax/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ax/a;->b()V

    .line 874
    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->onLowMemory()V

    .line 875
    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->q()V

    .line 879
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/yelp/android/appdata/h;

    invoke-direct {v1, p0}, Lcom/yelp/android/appdata/h;-><init>(Lcom/yelp/android/appdata/AppData;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 893
    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 1

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/yelp/android/appdata/AppData;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    monitor-exit p0

    return-void

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs a([Lcom/yelp/android/services/push/t;)V
    .locals 4

    .prologue
    .line 557
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->z:Ljava/util/HashSet;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 558
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 559
    if-nez v2, :cond_0

    .line 560
    iget-object v2, p0, Lcom/yelp/android/appdata/AppData;->z:Ljava/util/HashSet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 558
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 562
    :cond_0
    iget-object v3, p0, Lcom/yelp/android/appdata/AppData;->z:Ljava/util/HashSet;

    invoke-interface {v2}, Lcom/yelp/android/services/push/t;->getAntiTokens()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->z:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 567
    invoke-direct {p0}, Lcom/yelp/android/appdata/AppData;->D()V

    .line 571
    :goto_2
    return-void

    .line 569
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/appdata/AppData;->C()V

    goto :goto_2
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/BaseYelpApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 122
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 835
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/AppData;->w:Z

    .line 836
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/appdata/AppData;->y:Z

    .line 837
    invoke-static {}, Lcom/yelp/android/av/a;->a()V

    .line 838
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->w()V

    .line 841
    invoke-static {}, Lcom/yelp/android/appdata/ab;->b()V

    .line 842
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->k:Lcom/yelp/android/appdata/i;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->Y()V

    .line 843
    return-void
.end method

.method public c()Lcom/yelp/android/services/push/i;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->v:Lcom/yelp/android/services/push/i;

    return-object v0
.end method

.method public declared-synchronized e()Z
    .locals 1

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/yelp/android/appdata/AppData;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Lcom/yelp/android/appdata/i;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->k:Lcom/yelp/android/appdata/i;

    return-object v0
.end method

.method public g()Lcom/yelp/android/appdata/LocaleSettings;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->l:Lcom/yelp/android/appdata/LocaleSettings;

    return-object v0
.end method

.method public h()Lcom/yelp/android/appdata/n;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->m:Lcom/yelp/android/appdata/n;

    return-object v0
.end method

.method public i()Lcom/yelp/android/database/q;
    .locals 2

    .prologue
    .line 361
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->n:Lcom/yelp/android/database/q;

    if-nez v0, :cond_0

    .line 362
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The database must be open in order to access it."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->n:Lcom/yelp/android/database/q;

    return-object v0
.end method

.method public final j()Lcom/yelp/android/database/m;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->o:Lcom/yelp/android/database/m;

    return-object v0
.end method

.method public k()Lcom/yelp/android/av/a;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->p:Lcom/yelp/android/av/a;

    return-object v0
.end method

.method public l()Lcom/yelp/android/appdata/webrequests/dc;
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/yelp/android/appdata/webrequests/dc;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->q:Lcom/yelp/android/appdata/webrequests/dc;

    return-object v0
.end method

.method public n()Lcom/yelp/android/appdata/LocationService;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->j:Lcom/yelp/android/appdata/LocationService;

    return-object v0
.end method

.method public o()Lcom/yelp/android/debug/Debug;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->s:Lcom/yelp/android/debug/Debug;

    return-object v0
.end method

.method public declared-synchronized onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 449
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/yelp/android/appdata/BaseYelpApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 451
    iget-boolean v0, p0, Lcom/yelp/android/appdata/AppData;->b:Z

    if-eqz v0, :cond_0

    .line 454
    new-instance v0, Lcom/yelp/android/appdata/bb;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {}, Lcom/yelp/android/services/x;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/appdata/bb;-><init>(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->m:Lcom/yelp/android/appdata/n;

    .line 455
    invoke-direct {p0, p1}, Lcom/yelp/android/appdata/AppData;->a(Landroid/content/res/Configuration;)V

    .line 458
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/appdata/AppData;->e:Z

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->m:Lcom/yelp/android/appdata/n;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/n;->k()Z

    .line 462
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/appdata/AppData;->c:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/yelp/android/appdata/AppData;->b:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/yelp/android/appdata/AppData;->e:Z

    if-eqz v0, :cond_3

    .line 471
    :cond_2
    new-instance v0, Lcom/yelp/android/appdata/d;

    invoke-direct {v0, p0}, Lcom/yelp/android/appdata/d;-><init>(Lcom/yelp/android/appdata/AppData;)V

    invoke-virtual {v0}, Lcom/yelp/android/appdata/d;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    :cond_3
    monitor-exit p0

    return-void

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 427
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 429
    invoke-super {p0}, Lcom/yelp/android/appdata/BaseYelpApplication;->onCreate()V

    .line 430
    sput-object p0, Lcom/yelp/android/appdata/AppData;->h:Lcom/yelp/android/appdata/AppData;

    .line 431
    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->a()V

    .line 432
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/yelp/android/appdata/AppData;->a(Z)V

    .line 433
    iget-object v2, p0, Lcom/yelp/android/appdata/AppData;->m:Lcom/yelp/android/appdata/n;

    invoke-virtual {v2}, Lcom/yelp/android/appdata/n;->k()Z

    .line 437
    const-string/jumbo v2, "releaseWhenSurfaceDestroyed"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 439
    iget-object v2, p0, Lcom/yelp/android/appdata/AppData;->C:Lcom/yelp/android/be/c;

    invoke-virtual {v2}, Lcom/yelp/android/be/c;->a()Lcom/yelp/android/be/b;

    move-result-object v2

    .line 440
    invoke-virtual {v2, v0, v1}, Lcom/yelp/android/be/b;->a(J)V

    .line 441
    invoke-virtual {v2}, Lcom/yelp/android/be/b;->b()J

    .line 444
    invoke-virtual {v2}, Lcom/yelp/android/be/b;->e()V

    .line 445
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 491
    invoke-super {p0}, Lcom/yelp/android/appdata/BaseYelpApplication;->onLowMemory()V

    .line 492
    invoke-static {}, Lcom/yelp/android/webimageview/ImageLoader;->clearCache()V

    .line 493
    invoke-static {p0}, Lcom/bumptech/glide/h;->b(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/h;->h()V

    .line 494
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 504
    invoke-super {p0}, Lcom/yelp/android/appdata/BaseYelpApplication;->onTerminate()V

    .line 505
    invoke-static {}, Lcom/yelp/android/webimageview/ImageLoader;->trimCache()V

    .line 506
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/AppData;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 507
    const v1, 0x7f0e0012

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 508
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .prologue
    .line 498
    invoke-static {}, Lcom/yelp/android/webimageview/ImageLoader;->clearCache()V

    .line 499
    invoke-static {p0}, Lcom/bumptech/glide/h;->b(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->a(I)V

    .line 500
    return-void
.end method

.method public final p()Lorg/apache/http/client/HttpClient;
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->a:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->a:Lorg/apache/http/client/HttpClient;

    .line 420
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->s:Lcom/yelp/android/debug/Debug;

    iget-object v1, p0, Lcom/yelp/android/appdata/AppData;->m:Lcom/yelp/android/appdata/n;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/services/d;->a(Landroid/content/Context;Lcom/yelp/android/debug/Debug;Lcom/yelp/android/appdata/n;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    goto :goto_0
.end method

.method public q()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->z:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 575
    invoke-direct {p0}, Lcom/yelp/android/appdata/AppData;->D()V

    .line 576
    return-void
.end method

.method public s()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 795
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->A:Lcom/yelp/android/appdata/webrequests/n;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->A:Lcom/yelp/android/appdata/webrequests/n;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/n;->cancel(Z)V

    .line 797
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->A:Lcom/yelp/android/appdata/webrequests/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/n;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 799
    :cond_0
    iput-boolean v2, p0, Lcom/yelp/android/appdata/AppData;->w:Z

    .line 800
    new-instance v0, Lcom/yelp/android/appdata/webrequests/n;

    iget-object v1, p0, Lcom/yelp/android/appdata/AppData;->D:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/n;-><init>(Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/AppData;->A:Lcom/yelp/android/appdata/webrequests/n;

    .line 801
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->A:Lcom/yelp/android/appdata/webrequests/n;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/n;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 802
    return-void
.end method

.method public t()Lcom/yelp/android/appdata/k;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->t:Lcom/yelp/android/appdata/k;

    return-object v0
.end method

.method public u()V
    .locals 1

    .prologue
    .line 896
    iget-boolean v0, p0, Lcom/yelp/android/appdata/AppData;->y:Z

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->k:Lcom/yelp/android/appdata/i;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->m()I

    .line 898
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/AppData;->y:Z

    .line 900
    :cond_0
    return-void
.end method

.method public v()Lcom/yelp/android/ui/util/ci;
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->i:Lcom/yelp/android/ui/util/ci;

    return-object v0
.end method

.method public w()Lcom/yelp/android/be/c;
    .locals 1

    .prologue
    .line 923
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData;->C:Lcom/yelp/android/be/c;

    return-object v0
.end method

.method public synthetic x()Lcom/yelp/android/appdata/j;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    return-object v0
.end method

.method public synthetic y()Lcom/yelp/android/appdata/bc;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/yelp/android/appdata/AppData;->l()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    return-object v0
.end method
