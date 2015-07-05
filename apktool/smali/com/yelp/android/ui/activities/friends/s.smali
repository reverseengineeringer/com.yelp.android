.class Lcom/yelp/android/ui/activities/friends/s;
.super Ljava/lang/Object;
.source "FriendsListFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/aa;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friends/FriendsListFragment;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/s;->a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public m_()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/s;->a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/s;->a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v2, v2}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->startActivity(Landroid/content/Intent;)V

    .line 220
    return-void
.end method
