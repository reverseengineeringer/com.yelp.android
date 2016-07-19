.class Lcom/crashlytics/android/answers/c;
.super Lcom/crashlytics/android/answers/m;
.source "AutoSessionAnalyticsManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private final d:Landroid/app/Application;

.field private final e:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/o;Lcom/crashlytics/android/answers/q;Landroid/app/Application;)V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/answers/m;-><init>(Lcom/crashlytics/android/answers/o;Lcom/crashlytics/android/answers/q;)V

    .line 24
    new-instance v0, Lcom/crashlytics/android/answers/c$1;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/answers/c$1;-><init>(Lcom/crashlytics/android/answers/c;)V

    iput-object v0, p0, Lcom/crashlytics/android/answers/c;->e:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 77
    iput-object p3, p0, Lcom/crashlytics/android/answers/c;->d:Landroid/app/Application;

    .line 78
    invoke-static {}, Lcom/crashlytics/android/answers/a;->c()Lcom/crashlytics/android/answers/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/a;->B()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "Registering activity lifecycle callbacks for session analytics."

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/crashlytics/android/answers/c;->e:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p3, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 81
    return-void
.end method

.method public static a(Landroid/app/Application;Lcom/crashlytics/android/answers/o;Lcom/crashlytics/android/answers/k;Lio/fabric/sdk/android/services/network/c;)Lcom/crashlytics/android/answers/c;
    .locals 3

    .prologue
    .line 65
    const-string/jumbo v0, "Crashlytics Trace Manager"

    invoke-static {v0}, Lio/fabric/sdk/android/services/common/l;->b(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/crashlytics/android/answers/e;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/crashlytics/android/answers/e;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/answers/k;Lio/fabric/sdk/android/services/network/c;)V

    .line 69
    new-instance v2, Lcom/crashlytics/android/answers/q;

    invoke-direct {v2, p0, v1, p2, v0}, Lcom/crashlytics/android/answers/q;-><init>(Landroid/content/Context;Lcom/yelp/android/ct/i;Lcom/crashlytics/android/answers/k;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 71
    new-instance v0, Lcom/crashlytics/android/answers/c;

    invoke-direct {v0, p1, v2, p0}, Lcom/crashlytics/android/answers/c;-><init>(Lcom/crashlytics/android/answers/o;Lcom/crashlytics/android/answers/q;Landroid/app/Application;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Lcom/crashlytics/android/answers/a;->c()Lcom/crashlytics/android/answers/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/a;->B()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "Unregistering activity lifecycle callbacks for session analytics"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/crashlytics/android/answers/c;->d:Landroid/app/Application;

    iget-object v1, p0, Lcom/crashlytics/android/answers/c;->e:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 88
    invoke-super {p0}, Lcom/crashlytics/android/answers/m;->a()V

    .line 89
    return-void
.end method
