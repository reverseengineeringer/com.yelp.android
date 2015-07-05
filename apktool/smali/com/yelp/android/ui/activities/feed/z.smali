.class Lcom/yelp/android/ui/activities/feed/z;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "FeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/j",
        "<",
        "Lcom/yelp/android/ui/activities/feed/FeedRequestResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/FeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/feed/FeedRequestResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/ui/activities/feed/FeedRequestResult;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 621
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 622
    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedEntry;

    .line 623
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedEntry;->isSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 624
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 627
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 630
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/gx;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->d(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v2

    invoke-direct {v1, v2, v5, v5}, Lcom/yelp/android/appdata/webrequests/gx;-><init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedFragment;Lcom/yelp/android/appdata/webrequests/gx;)Lcom/yelp/android/appdata/webrequests/gx;

    .line 631
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->e(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/appdata/webrequests/gx;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gx;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 647
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0, v4}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Lcom/yelp/android/ui/activities/feed/FeedFragment;Z)Z

    .line 648
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0, v4}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedFragment;Z)Z

    .line 650
    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;->c()Lcom/yelp/android/ui/activities/feed/FeedRequestResult$FeedStatus;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedRequestResult$FeedStatus;->NO_MORE_FEEDS:Lcom/yelp/android/ui/activities/feed/FeedRequestResult$FeedStatus;

    if-ne v0, v1, :cond_3

    .line 651
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0, v5}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 652
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->n()V

    .line 654
    :cond_3
    return-void

    .line 633
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 634
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Z)V

    .line 635
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->j()V

    .line 636
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->f(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 637
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->e()V

    .line 638
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Ljava/util/List;)V

    .line 639
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->g(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 641
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->o()V

    goto :goto_1

    .line 644
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Ljava/util/List;)V

    goto :goto_1
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 612
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedFragment;Z)Z

    .line 613
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Z)V

    .line 614
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_LOCATION:Lcom/yelp/android/util/ErrorType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/panels/aa;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V

    .line 615
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->j()V

    .line 616
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
    const/4 v1, 0x0

    .line 603
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedFragment;Z)Z

    .line 604
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Z)V

    .line 605
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->c(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/panels/aa;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V

    .line 606
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->n()V

    .line 607
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/z;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->j()V

    .line 608
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 599
    check-cast p2, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/z;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/feed/FeedRequestResult;)V

    return-void
.end method
