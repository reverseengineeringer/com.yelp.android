.class Lcom/yelp/android/ui/activities/friends/f;
.super Ljava/lang/Object;
.source "FindFriendsFBContactsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/f;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 332
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 333
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/f;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 334
    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
    invoke-static {v1, v3, v3}, Lcom/yelp/android/services/job/SendFriendRequestsJob;->launchJob(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/f;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->e(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friends/f;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 342
    :cond_1
    return-void
.end method
