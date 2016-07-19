.class Lcom/yelp/android/ui/activities/friends/FriendsListFragment$3;
.super Ljava/lang/Object;
.source "FriendsListFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/PanelError$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/friends/FriendsListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friends/FriendsListFragment;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment$3;->a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public q_()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment$3;->a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/friends/FriendsListFragment$3;->a:Lcom/yelp/android/ui/activities/friends/FriendsListFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/friends/FriendsListFragment;->startActivity(Landroid/content/Intent;)V

    .line 220
    return-void
.end method
