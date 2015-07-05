.class Lcom/yelp/android/ui/activities/c;
.super Ljava/lang/Object;
.source "ActivityBadge.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/FeedEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityBadge;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityBadge;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/yelp/android/ui/activities/c;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/activities/c;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->b(Lcom/yelp/android/ui/activities/ActivityBadge;)Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a(Ljava/util/List;)V

    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/activities/c;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->b(Lcom/yelp/android/ui/activities/ActivityBadge;)Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 183
    return-void
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
    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/c;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->b(Lcom/yelp/android/ui/activities/ActivityBadge;)Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/c;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->c(Lcom/yelp/android/ui/activities/ActivityBadge;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0345

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 171
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/c;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
