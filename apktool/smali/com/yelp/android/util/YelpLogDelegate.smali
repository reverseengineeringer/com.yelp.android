.class public Lcom/yelp/android/util/YelpLogDelegate;
.super Ljava/lang/Object;
.source "YelpLogDelegate.java"

# interfaces
.implements Lcom/yelp/android/util/YelpLog$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remoteBreadcrumb(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/yelp/android/au/a;->e()Lcom/yelp/android/au/a;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/au/a;->c:Lcom/crashlytics/android/core/e;

    invoke-virtual {v0, p1}, Lcom/crashlytics/android/core/e;->a(Ljava/lang/String;)V

    .line 56
    invoke-static {p1}, Lcom/bugsnag/android/Bugsnag;->leaveBreadcrumb(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public remoteError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 32
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-static {p2}, Lcom/yelp/android/au/a;->a(Ljava/lang/String;)V

    .line 35
    :cond_0
    invoke-static {p3}, Lcom/yelp/android/au/a;->a(Ljava/lang/Throwable;)V

    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    sget-object v0, Lcom/bugsnag/android/Severity;->INFO:Lcom/bugsnag/android/Severity;

    invoke-static {p3, v0}, Lcom/bugsnag/android/Bugsnag;->notify(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;)V

    .line 46
    :goto_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    invoke-static {p3}, Lcom/yelp/android/analytics/e;->a(Ljava/lang/Throwable;)Lcom/yelp/android/analytics/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 51
    :cond_1
    return-void

    .line 40
    :cond_2
    new-instance v0, Lcom/bugsnag/android/MetaData;

    invoke-direct {v0}, Lcom/bugsnag/android/MetaData;-><init>()V

    .line 41
    const-string/jumbo v1, "User"

    const-string/jumbo v2, "Message"

    invoke-virtual {v0, v1, v2, p2}, Lcom/bugsnag/android/MetaData;->addToTab(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    sget-object v1, Lcom/bugsnag/android/Severity;->INFO:Lcom/bugsnag/android/Severity;

    invoke-static {p3, v1, v0}, Lcom/bugsnag/android/Bugsnag;->notify(Ljava/lang/Throwable;Lcom/bugsnag/android/Severity;Lcom/bugsnag/android/MetaData;)V

    goto :goto_0
.end method

.method public showDebugToast(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/yelp/android/util/YelpLogDelegate$1;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/util/YelpLogDelegate$1;-><init>(Lcom/yelp/android/util/YelpLogDelegate;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method
