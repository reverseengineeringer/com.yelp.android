.class Lcom/yelp/android/ui/activities/friends/h;
.super Ljava/lang/Object;
.source "FindFriendsFBContactsFragment.java"

# interfaces
.implements Lcom/yelp/android/av/i;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/h;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/h;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->j()V

    .line 375
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/h;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->f(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Lcom/yelp/android/ui/widgets/YelpToggleButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/h;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->f(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Lcom/yelp/android/ui/widgets/YelpToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/h;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/h;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->e(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/h;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/h;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->f(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Lcom/yelp/android/ui/widgets/YelpToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;Z)Z

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/h;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVisibility(I)V

    .line 382
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/h;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->e(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/h;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a_()V

    goto :goto_0
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
    .line 369
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/h;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 370
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 366
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/friends/h;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
