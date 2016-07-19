.class public Lcom/yelp/android/ui/activities/support/YelpApiListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "YelpApiListFragment.java"


# instance fields
.field private i:Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpApiListFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "TAG_API_WORKER_FRAGMENT"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpApiListFragment;->i:Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;

    .line 25
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpApiListFragment;->i:Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/support/YelpApiListFragment;->i:Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;

    .line 27
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/support/YelpApiListFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/YelpApiListFragment;->i:Lcom/yelp/android/appdata/webrequests/ApiWorkerFragment;

    const-string/jumbo v2, "TAG_API_WORKER_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 32
    :cond_0
    return-void
.end method
