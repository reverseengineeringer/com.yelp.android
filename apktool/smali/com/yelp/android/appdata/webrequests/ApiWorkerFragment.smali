.class public Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;
.super Landroid/support/v4/app/Fragment;
.source "ApiWorkerFragment.java"


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/ek",
            "<***>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Request:",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<**TResult;>;Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<TResult;>;)TRequest;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ei;

    .line 37
    if-nez v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/yelp/android/appdata/webrequests/ei;->a(Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Request:",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<**TResult;>;Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TRequest;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;->b(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;->a:Ljava/util/Map;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/ei;

    invoke-direct {v1, p2}, Lcom/yelp/android/appdata/webrequests/ei;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_0
    return-void
.end method

.method protected b(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)Z"
        }
    .end annotation

    .prologue
    .line 50
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;->setRetainInstance(Z)V

    .line 23
    return-void
.end method
