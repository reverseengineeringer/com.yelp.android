.class Lcom/yelp/android/ui/activities/friends/c;
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
    .line 292
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friends/c;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 297
    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/c;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->a(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v1

    .line 302
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 303
    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/c;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEnabled(Z)V

    .line 304
    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/c;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/c;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/friends/c;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->c(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setY(F)V

    .line 307
    iget-object v2, p0, Lcom/yelp/android/ui/activities/friends/c;->a:Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;->b(Lcom/yelp/android/ui/activities/friends/FindFriendsFBContactsFragment;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 311
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-static {v2, v6, v6}, Lcom/yelp/android/services/job/SendFriendRequestsJob;->launchJob(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 313
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/yelp/android/ui/activities/friends/d;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/friends/d;-><init>(Lcom/yelp/android/ui/activities/friends/c;Landroid/view/View;)V

    sget v0, Lcom/yelp/android/ui/util/cw;->c:I

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 326
    return-void
.end method
