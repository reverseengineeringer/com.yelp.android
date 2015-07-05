.class Lcom/yelp/android/ui/activities/profile/x;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "UserProfileFragment.java"


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
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/x;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/feed/FeedRequestResult;)V
    .locals 8
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
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 504
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/x;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->c(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 505
    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/x;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030128

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/x;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 508
    const v0, 0x7f0c040e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 509
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/x;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->d(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)Lcom/yelp/android/serializable/User;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/x;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    const v3, 0x7f0703be

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 512
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/x;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1, v6}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 517
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/x;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-virtual {v0, v7}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Z)V

    .line 518
    return-void

    .line 509
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/x;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    const v3, 0x7f070657

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/profile/x;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-static {v5}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->d(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)Lcom/yelp/android/serializable/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/serializable/User;->getFirstName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/x;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->b(Ljava/util/List;)V

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x1

    return v0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1
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
    .line 527
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/x;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->b(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 528
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 500
    check-cast p2, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/x;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/feed/FeedRequestResult;)V

    return-void
.end method
