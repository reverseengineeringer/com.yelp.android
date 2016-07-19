.class public Lcom/yelp/android/ui/activities/feed/ActivityFeed;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityFeed.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

.field private b:Lcom/yelp/android/appdata/StateBroadcastReceiver;

.field private c:Lcom/yelp/android/appdata/StateBroadcastReceiver$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 83
    new-instance v0, Lcom/yelp/android/ui/activities/feed/ActivityFeed$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/ActivityFeed$1;-><init>(Lcom/yelp/android/ui/activities/feed/ActivityFeed;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->c:Lcom/yelp/android/appdata/StateBroadcastReceiver$a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/feed/ActivityFeed;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/ActivityFeed;)Lcom/yelp/android/ui/activities/feed/FeedFragment;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 57
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->B_()V

    .line 68
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 69
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x7f0f020d

    .line 24
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/l;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/FeedFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    .line 27
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    .line 29
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->c:Lcom/yelp/android/appdata/StateBroadcastReceiver$a;

    invoke-static {p0, v0}, Lcom/yelp/android/appdata/StateBroadcastReceiver;->a(Landroid/content/Context;Lcom/yelp/android/appdata/StateBroadcastReceiver$a;)Lcom/yelp/android/appdata/StateBroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->b:Lcom/yelp/android/appdata/StateBroadcastReceiver;

    .line 37
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->removeToolbarElevation()V

    .line 38
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->b:Lcom/yelp/android/appdata/StateBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 51
    return-void
.end method

.method public onDrawerItemSelected(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->B_()V

    .line 62
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDrawerItemSelected(Landroid/content/Intent;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->setFeedHotButtonSelected(Z)V

    .line 45
    return-void
.end method

.method protected onSameActivityHotButtonClick()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->b(Z)V

    .line 80
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->h()V

    .line 81
    return-void
.end method
