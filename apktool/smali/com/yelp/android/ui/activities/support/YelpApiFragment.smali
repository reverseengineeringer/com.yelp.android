.class public Lcom/yelp/android/ui/activities/support/YelpApiFragment;
.super Landroid/support/v4/app/Fragment;
.source "YelpApiFragment.java"


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Request:",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<**TResult;>;Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TRequest;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<TResult;>;)TRequest;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpApiFragment;->a:Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;

    invoke-virtual {v0, p1, p3}, Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    move-object p2, v0

    .line 62
    :cond_0
    return-object p2
.end method

.method public a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 1
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
    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpApiFragment;->a:Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 44
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpApiFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "TAG_API_WORKER_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpApiFragment;->a:Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;

    .line 25
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpApiFragment;->a:Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpApiFragment;->a:Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;

    .line 27
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpApiFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpApiFragment;->a:Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;

    const-string/jumbo v2, "TAG_API_WORKER_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 32
    :cond_0
    return-void
.end method
