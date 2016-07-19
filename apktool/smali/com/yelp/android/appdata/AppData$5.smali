.class Lcom/yelp/android/appdata/AppData$5;
.super Ljava/lang/Object;
.source "AppData.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/AppData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/l$a;",
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
    .line 797
    iput-object p1, p0, Lcom/yelp/android/appdata/AppData$5;->b:Lcom/yelp/android/appdata/AppData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/appdata/AppData$5;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/l$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/l$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 820
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData$5;->b:Lcom/yelp/android/appdata/AppData;

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/l$a;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/appdata/AppData;Ljava/util/Map;)V

    .line 821
    invoke-static {}, Lcom/yelp/android/appdata/experiment/j;->a()Lcom/yelp/android/appdata/experiment/i;

    move-result-object v0

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/l$a;->b:Ljava/util/Map;

    sget-object v2, Lcom/yelp/android/appdata/experiment/e;->u:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/yelp/android/appdata/experiment/j;->a(Ljava/util/Map;Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/appdata/experiment/i;->a(Ljava/util/Map;)V

    .line 825
    invoke-static {}, Lcom/yelp/android/appdata/Features;->data()Lcom/yelp/android/appdata/experiment/i;

    move-result-object v0

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/l$a;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/yelp/android/appdata/experiment/i;->a(Ljava/util/Map;)V

    .line 830
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/l$a;->a:Ljava/util/Map;

    sget-object v1, Lcom/yelp/android/appdata/Features;->mobile_google_analytics:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/Features;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 831
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/l$a;->a:Ljava/util/Map;

    sget-object v1, Lcom/yelp/android/appdata/Features;->mobile_google_analytics:Lcom/yelp/android/appdata/Features;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/Features;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 836
    :goto_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v1

    .line 839
    const-string/jumbo v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Z)V

    .line 843
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    iget-boolean v1, p2, Lcom/yelp/android/appdata/webrequests/l$a;->e:Z

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/c;->h(Z)V

    .line 846
    iget-boolean v0, p2, Lcom/yelp/android/appdata/webrequests/l$a;->e:Z

    if-eqz v0, :cond_1

    .line 847
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData$5;->b:Lcom/yelp/android/appdata/AppData;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/appdata/AppData;)V

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData$5;->b:Lcom/yelp/android/appdata/AppData;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->b(Lcom/yelp/android/appdata/AppData;)Lcom/yelp/android/appdata/c;

    move-result-object v0

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/l$a;->c:Lcom/yelp/android/serializable/UpdatePrompt;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/c;->a(Lcom/yelp/android/serializable/UpdatePrompt;)V

    .line 851
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData$5;->b:Lcom/yelp/android/appdata/AppData;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->b(Lcom/yelp/android/appdata/AppData;)Lcom/yelp/android/appdata/c;

    move-result-object v0

    iget v1, p2, Lcom/yelp/android/appdata/webrequests/l$a;->f:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/c;->f(I)V

    .line 852
    iget-object v0, p0, Lcom/yelp/android/appdata/AppData$5;->b:Lcom/yelp/android/appdata/AppData;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->b(Lcom/yelp/android/appdata/AppData;)Lcom/yelp/android/appdata/c;

    move-result-object v0

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/l$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/c;->d(Ljava/lang/String;)V

    .line 853
    return-void

    .line 833
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
    .line 803
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 804
    new-instance v1, Lcom/yelp/android/appdata/AppData$5$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/appdata/AppData$5$1;-><init>(Lcom/yelp/android/appdata/AppData$5;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 815
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 797
    check-cast p2, Lcom/yelp/android/appdata/webrequests/l$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/AppData$5;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/l$a;)V

    return-void
.end method
