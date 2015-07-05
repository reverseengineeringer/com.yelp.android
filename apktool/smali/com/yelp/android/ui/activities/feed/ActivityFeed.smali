.class public Lcom/yelp/android/ui/activities/feed/ActivityFeed;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityFeed.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

.field private b:Lcom/yelp/android/appdata/StateBroadcastReceiver;

.field private c:Lcom/yelp/android/appdata/ar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 64
    new-instance v0, Lcom/yelp/android/ui/activities/feed/a;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/a;-><init>(Lcom/yelp/android/ui/activities/feed/ActivityFeed;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->c:Lcom/yelp/android/appdata/ar;

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
    .line 61
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->FeedFriend:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->e()V

    .line 56
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 57
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x7f0c01d4

    .line 24
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/FeedFragment;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    .line 28
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->c:Lcom/yelp/android/appdata/ar;

    invoke-static {p0, v0}, Lcom/yelp/android/appdata/StateBroadcastReceiver;->a(Landroid/content/Context;Lcom/yelp/android/appdata/ar;)Lcom/yelp/android/appdata/StateBroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->b:Lcom/yelp/android/appdata/StateBroadcastReceiver;

    .line 33
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 44
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->b:Lcom/yelp/android/appdata/StateBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 45
    return-void
.end method

.method public onDrawerItemSelected(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->e()V

    .line 50
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDrawerItemSelected(Landroid/content/Intent;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/feed/ActivityFeed;->setFeedHotButtonSelected(Z)V

    .line 39
    return-void
.end method
