.class Lcom/yelp/android/ui/activities/feed/bt;
.super Ljava/lang/Object;
.source "UserReviewsFragment.java"

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
        "Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/bt;->a:Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bt;->a:Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;->r()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 73
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/bt;->a:Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;->a(Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;)Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->ME:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/bt;->a:Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bt;->a:Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;->a(Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;Ljava/util/List;)V

    .line 78
    return-void

    .line 73
    :cond_1
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->USER:Lcom/yelp/android/ui/activities/feed/FeedType;

    goto :goto_0
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
    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bt;->a:Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;->a(Lcom/yelp/android/util/ErrorType;)V

    .line 67
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/bt;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
