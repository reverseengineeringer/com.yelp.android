.class Lcom/yelp/android/ui/activities/feed/p;
.super Landroid/content/BroadcastReceiver;
.source "CurrentUserFeedFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/p;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 302
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewBroadcast;

    .line 303
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->getReviewState()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v1

    .line 305
    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewState;->DRAFTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v1, v2, :cond_1

    .line 312
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 313
    const-string/jumbo v2, "the_draft_rating"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->getRating()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 314
    const-string/jumbo v2, "the_draft_text"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/p;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/aq;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v1, v2, :cond_2

    .line 326
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/p;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/aq;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getFeedBundle(Lcom/yelp/android/serializable/ReviewBroadcast;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 328
    :cond_2
    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewState;->NOT_STARTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v1, v2, :cond_0

    .line 335
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/p;->a:Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/feed/CurrentUserFeedFragment;->a:Lcom/yelp/android/ui/activities/feed/aq;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/String;)V

    goto :goto_0
.end method