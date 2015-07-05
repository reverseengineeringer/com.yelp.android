.class Lcom/yelp/android/ui/activities/feed/t;
.super Landroid/content/BroadcastReceiver;
.source "CurrentUserFeedFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/t;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 382
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 383
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/t;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/aq;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getFeedUpdate(Lcom/yelp/android/serializable/YelpBusinessReview;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 385
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/t;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/aq;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/aq;->notifyDataSetChanged()V

    .line 386
    return-void
.end method
