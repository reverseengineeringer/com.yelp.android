.class Lcom/yelp/android/ui/activities/friends/l;
.super Ljava/lang/Object;
.source "FindFriendsFBContactsFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/fg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/activities/fg",
        "<",
        "Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/l;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/FacebookConnectManager",
            "<",
            "Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 474
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/l;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/l;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->j(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;Z)V

    .line 475
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/FacebookConnectManager",
            "<",
            "Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/l;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/YelpException;

    sget v2, Lcom/yelp/android/appdata/webrequests/YelpException;->YPErrorFacebookConnect:I

    invoke-direct {v1, p2, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 481
    return-void
.end method

.method public b(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/FacebookConnectManager",
            "<",
            "Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 485
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/l;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->k(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Lcom/yelp/android/appdata/webrequests/cc;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/l;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->k(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Lcom/yelp/android/appdata/webrequests/cc;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cc;->cancel(Z)V

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/l;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 489
    return-void
.end method

.method public c(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/FacebookConnectManager",
            "<",
            "Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 470
    return-void
.end method
