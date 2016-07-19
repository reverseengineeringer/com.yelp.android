.class Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$5;
.super Lcom/yelp/android/appdata/webrequests/k$b;
.source "ActivityComboBookmarks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$5;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 419
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$5;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->a(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;)Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;

    .line 420
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$5;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->f()V

    .line 421
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 425
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

    .line 430
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$5;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->n()V

    .line 431
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$5;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->c(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 432
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$5;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->d(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboMapFragment;->b()Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/map/YelpMap;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$5;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->a(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;Z)Z

    .line 434
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$5;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->e(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$5;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->e(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$5;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->e(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)Lcom/yelp/android/ui/activities/nearby/ComboListFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/ComboListFragment;->a(Ljava/lang/Runnable;)V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$5;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->f(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->notifyDataSetChanged()V

    .line 439
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$5;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$5;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->g(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)Lcom/yelp/android/ui/panels/PanelError$a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->populateError(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 440
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 416
    check-cast p2, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$5;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$a;)V

    return-void
.end method
