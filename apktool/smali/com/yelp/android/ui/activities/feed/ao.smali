.class Lcom/yelp/android/ui/activities/feed/ao;
.super Landroid/content/BroadcastReceiver;
.source "FeedFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/FeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/ao;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 515
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 516
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/ao;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/activities/feed/aq;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getFeedUpdate(Lcom/yelp/android/serializable/YelpBusinessReview;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 518
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ao;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/activities/feed/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/aq;->notifyDataSetChanged()V

    .line 519
    return-void
.end method
