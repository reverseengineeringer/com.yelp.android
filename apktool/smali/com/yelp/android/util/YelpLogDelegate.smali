.class public Lcom/yelp/android/util/YelpLogDelegate;
.super Ljava/lang/Object;
.source "YelpLogDelegate.java"

# interfaces
.implements Lcom/yelp/android/util/al;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 29
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-static {p2}, Lcom/crashlytics/android/d;->c(Ljava/lang/String;)V

    .line 32
    :cond_0
    invoke-static {p3}, Lcom/crashlytics/android/d;->a(Ljava/lang/Throwable;)V

    .line 33
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v0

    invoke-static {p3}, Lcom/yelp/android/analytics/e;->a(Ljava/lang/Throwable;)Lcom/yelp/android/analytics/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    .line 35
    return-void
.end method

.method public showDebugToast(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/yelp/android/util/am;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/util/am;-><init>(Lcom/yelp/android/util/YelpLogDelegate;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method
