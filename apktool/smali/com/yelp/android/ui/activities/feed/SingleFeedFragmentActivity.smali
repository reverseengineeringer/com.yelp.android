.class public Lcom/yelp/android/ui/activities/feed/SingleFeedFragmentActivity;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "SingleFeedFragmentActivity.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 63
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/User;ILcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/feed/SingleFeedFragmentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 28
    const-string/jumbo v1, "total"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    const-string/jumbo v1, "feed_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 30
    return-object v0
.end method

.method private a(Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;Lcom/yelp/android/serializable/User;I)Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/yelp/android/ui/activities/feed/bf;->a:[I

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 63
    :pswitch_0
    invoke-static {p2, p3}, Lcom/yelp/android/ui/activities/feed/UserReviewsFragment;->a(Lcom/yelp/android/serializable/User;I)Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;

    move-result-object v0

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()Z
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/SingleFeedFragmentActivity;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/SingleFeedFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v0

    return v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/SingleFeedFragmentActivity;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/SingleFeedFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 37
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/SingleFeedFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "total"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 38
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/SingleFeedFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v3, "single_feed_fragment"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/feed/SingleFeedFragmentActivity;->a:Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;

    .line 40
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/SingleFeedFragmentActivity;->a:Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;

    if-nez v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/SingleFeedFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "feed_type"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;

    invoke-direct {p0, v1, v0, v2}, Lcom/yelp/android/ui/activities/feed/SingleFeedFragmentActivity;->a(Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment$FeedFragmentType;Lcom/yelp/android/serializable/User;I)Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/SingleFeedFragmentActivity;->a:Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;

    .line 44
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/feed/SingleFeedFragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0c01d4

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/SingleFeedFragmentActivity;->a:Lcom/yelp/android/ui/activities/profile/SingleCurrentUserFeedEntryFragment;

    const-string/jumbo v3, "single_feed_fragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 47
    :cond_0
    return-void
.end method
