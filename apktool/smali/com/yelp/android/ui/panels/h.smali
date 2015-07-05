.class Lcom/yelp/android/ui/panels/h;
.super Ljava/lang/Object;
.source "BizAttributesFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/BizAttributesFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/BizAttributesFragment;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/yelp/android/ui/panels/h;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/yelp/android/ui/panels/h;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->b(Lcom/yelp/android/ui/panels/BizAttributesFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 285
    invoke-static {}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/h;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->j(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 288
    :cond_0
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 5
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
    .line 277
    invoke-static {}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/h;->a:Lcom/yelp/android/ui/panels/BizAttributesFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/BizAttributesFragment;->j(Lcom/yelp/android/ui/panels/BizAttributesFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 279
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 273
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/panels/h;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/ArrayList;)V

    return-void
.end method
