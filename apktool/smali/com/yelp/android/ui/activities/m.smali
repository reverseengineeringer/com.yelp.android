.class Lcom/yelp/android/ui/activities/m;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "ActivityBookmarks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/j",
        "<",
        "Lcom/yelp/android/appdata/webrequests/cs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityBookmarks;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityBookmarks;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/yelp/android/ui/activities/m;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/cs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/yelp/android/ui/activities/m;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->a(Lcom/yelp/android/ui/activities/ActivityBookmarks;Lcom/yelp/android/appdata/webrequests/cs;)Lcom/yelp/android/appdata/webrequests/cs;

    .line 401
    iget-object v0, p0, Lcom/yelp/android/ui/activities/m;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->f()V

    .line 402
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x1

    return v0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3
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
    const/4 v2, 0x4

    .line 411
    iget-object v0, p0, Lcom/yelp/android/ui/activities/m;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->n()V

    .line 412
    iget-object v0, p0, Lcom/yelp/android/ui/activities/m;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->c(Lcom/yelp/android/ui/activities/ActivityBookmarks;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 413
    iget-object v0, p0, Lcom/yelp/android/ui/activities/m;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->d(Lcom/yelp/android/ui/activities/ActivityBookmarks;)Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->b()Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/map/YelpMap;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/yelp/android/ui/activities/m;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->a(Lcom/yelp/android/ui/activities/ActivityBookmarks;Z)Z

    .line 415
    iget-object v0, p0, Lcom/yelp/android/ui/activities/m;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->e(Lcom/yelp/android/ui/activities/ActivityBookmarks;)Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/yelp/android/ui/activities/m;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->e(Lcom/yelp/android/ui/activities/ActivityBookmarks;)Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/yelp/android/ui/activities/m;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->e(Lcom/yelp/android/ui/activities/ActivityBookmarks;)Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(Ljava/lang/Runnable;)V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/m;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->f(Lcom/yelp/android/ui/activities/ActivityBookmarks;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->notifyDataSetChanged()V

    .line 420
    iget-object v0, p0, Lcom/yelp/android/ui/activities/m;->a:Lcom/yelp/android/ui/activities/ActivityBookmarks;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/ActivityBookmarks;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 421
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 397
    check-cast p2, Lcom/yelp/android/appdata/webrequests/cs;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/m;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cs;)V

    return-void
.end method
