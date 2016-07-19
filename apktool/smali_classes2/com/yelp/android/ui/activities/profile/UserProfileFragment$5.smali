.class Lcom/yelp/android/ui/activities/profile/UserProfileFragment$5;
.super Lcom/yelp/android/appdata/webrequests/k$b;
.source "UserProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/profile/UserProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k$b",
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
    .line 627
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$5;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/feed/FeedRequestResult;)V
    .locals 7
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
    const/4 v2, 0x0

    .line 635
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$5;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    check-cast p1, Lcom/yelp/android/appdata/webrequests/bx;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/bx;->i_()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 636
    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 637
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$5;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$5;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03018c

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$5;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 645
    const v0, 0x7f0f04f5

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 647
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    iget-object v4, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$5;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->b(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)Lcom/yelp/android/serializable/User;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$5;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    const v4, 0x7f0703f4

    invoke-virtual {v1, v4}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 653
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$5;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 668
    :cond_0
    :goto_1
    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;->c()Lcom/yelp/android/ui/activities/feed/FeedRequestResult$FeedStatus;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedRequestResult$FeedStatus;->NO_MORE_FEEDS:Lcom/yelp/android/ui/activities/feed/FeedRequestResult$FeedStatus;

    if-ne v0, v1, :cond_1

    .line 669
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$5;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->n()V

    .line 671
    :cond_1
    return-void

    .line 647
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$5;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    const v4, 0x7f070635

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$5;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-static {v6}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->b(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)Lcom/yelp/android/serializable/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yelp/android/serializable/User;->Z()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 657
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$5;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->b(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 658
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$5;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->l()V

    .line 660
    invoke-virtual {p2}, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;->a()Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 661
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 662
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedItem;

    .line 663
    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$5;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->h(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/String;)V

    .line 664
    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$5;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->i(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;)Lcom/yelp/android/ui/activities/feed/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/feed/a;->getCount()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/FeedItem;->a(I)V

    .line 661
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 666
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$5;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->a(Ljava/util/List;)V

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 675
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
    .line 680
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$5;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->n()V

    .line 681
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$5;->a:Lcom/yelp/android/ui/activities/profile/UserProfileFragment;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment;->b(Lcom/yelp/android/ui/activities/profile/UserProfileFragment;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 682
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 627
    check-cast p2, Lcom/yelp/android/ui/activities/feed/FeedRequestResult;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/UserProfileFragment$5;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/feed/FeedRequestResult;)V

    return-void
.end method
