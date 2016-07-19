.class Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$1;
.super Ljava/lang/Object;
.source "BadgeFeedFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;
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
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/FeedItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$1;->a:Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/FeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$1;->a:Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->b(Z)V

    .line 209
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 210
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$1;->a:Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->b(Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedItem;

    .line 212
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SingleFeedActivity;

    .line 214
    invoke-interface {v0}, Lcom/yelp/android/serializable/SingleFeedActivity;->c()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$1;->a:Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->c(Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;)Lcom/yelp/android/ui/util/ap;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lcom/yelp/android/ui/util/ap;->a(Ljava/util/Collection;Z)V

    .line 220
    :goto_1
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$1;->a:Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->a(Ljava/util/List;)V

    goto :goto_1
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
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
    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$1;->a:Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->b(Z)V

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$1;->a:Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->a(Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f041d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 198
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
