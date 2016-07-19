.class Lcom/yelp/android/appdata/webrequests/core/MetricsManager$1;
.super Ljava/lang/Object;
.source "MetricsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/webrequests/core/MetricsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/webrequests/core/MetricsManager;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$1;->a:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$1;->a:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    invoke-static {v0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/appdata/webrequests/core/MetricsManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 328
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$1;->a:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->b()V

    .line 329
    return-void
.end method
