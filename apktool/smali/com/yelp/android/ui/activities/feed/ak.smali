.class Lcom/yelp/android/ui/activities/feed/ak;
.super Landroid/content/BroadcastReceiver;
.source "FeedFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/FeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/ak;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 435
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewBroadcast;

    .line 436
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->getReviewState()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v1

    .line 438
    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewState;->DRAFTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v1, v2, :cond_1

    .line 445
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 446
    const-string/jumbo v2, "the_draft_rating"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->getRating()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 447
    const-string/jumbo v2, "the_draft_text"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/ak;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/activities/feed/aq;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v1, v2, :cond_2

    .line 459
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/ak;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/activities/feed/aq;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getFeedBundle(Lcom/yelp/android/serializable/ReviewBroadcast;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 461
    :cond_2
    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewState;->NOT_STARTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v1, v2, :cond_0

    .line 468
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/ak;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/activities/feed/aq;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
