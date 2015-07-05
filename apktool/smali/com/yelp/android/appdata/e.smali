.class Lcom/yelp/android/appdata/e;
.super Ljava/lang/Object;
.source "AppData.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/o;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/yelp/android/appdata/AppData;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/AppData;)V
    .locals 1

    .prologue
    .line 661
    iput-object p1, p0, Lcom/yelp/android/appdata/e;->b:Lcom/yelp/android/appdata/AppData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 663
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/e;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/o;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/o;",
            ")V"
        }
    .end annotation

    .prologue
    .line 681
    iget-object v0, p0, Lcom/yelp/android/appdata/e;->b:Lcom/yelp/android/appdata/AppData;

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/o;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/appdata/AppData;Ljava/util/Map;)V

    .line 682
    invoke-static {}, Lcom/yelp/android/appdata/experiment/g;->a()Lcom/yelp/android/appdata/experiment/f;

    move-result-object v0

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/o;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/yelp/android/appdata/experiment/f;->a(Ljava/util/Map;)V

    .line 683
    invoke-static {}, Lcom/yelp/android/appdata/Features;->data()Lcom/yelp/android/appdata/experiment/f;

    move-result-object v0

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/o;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/yelp/android/appdata/experiment/f;->a(Ljava/util/Map;)V

    .line 688
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/o;->a:Ljava/util/Map;

    sget-object v1, Lcom/yelp/android/appdata/Features;->mobile_google_analytics:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/Features;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 689
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/o;->a:Ljava/util/Map;

    sget-object v1, Lcom/yelp/android/appdata/Features;->mobile_google_analytics:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/Features;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 694
    :goto_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v1

    .line 697
    const-string/jumbo v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/yelp/android/av/a;->a(Z)V

    .line 701
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    iget-boolean v1, p2, Lcom/yelp/android/appdata/webrequests/o;->d:Z

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/i;->f(Z)V

    .line 703
    iget-boolean v0, p2, Lcom/yelp/android/appdata/webrequests/o;->d:Z

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/yelp/android/appdata/e;->b:Lcom/yelp/android/appdata/AppData;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/appdata/AppData;)V

    .line 707
    :cond_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/o;->c:Lcom/yelp/android/serializable/UpdatePrompt;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/i;->a(Lcom/yelp/android/serializable/UpdatePrompt;)V

    .line 708
    return-void

    .line 691
    :cond_2
    sget-object v0, Lcom/yelp/android/appdata/Features;->mobile_google_analytics:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/Features;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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
    .line 667
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 668
    new-instance v1, Lcom/yelp/android/appdata/f;

    invoke-direct {v1, p0}, Lcom/yelp/android/appdata/f;-><init>(Lcom/yelp/android/appdata/e;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 677
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 661
    check-cast p2, Lcom/yelp/android/appdata/webrequests/o;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/e;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/o;)V

    return-void
.end method
