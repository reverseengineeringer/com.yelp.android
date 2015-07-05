.class Lcom/yelp/android/ui/activities/feed/ap;
.super Ljava/lang/Object;
.source "FeedFragment.java"

# interfaces
.implements Lcom/yelp/android/av/i;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/FeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/ap;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 532
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ap;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    check-cast p1, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

    .line 536
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ap;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->b(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedEntry;

    .line 537
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedEntry;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 538
    check-cast v0, Lcom/yelp/android/serializable/ReviewFeedEntry;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getReview()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v3

    .line 539
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->a()Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    move-result-object v0

    .line 540
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->b()Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    move-result-object v4

    .line 541
    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserFeedback()Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    move-result-object v5

    .line 542
    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusinessReview;->getFeedback()Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    move-result-object v6

    .line 543
    sget-object v7, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;->ADD:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    if-ne v0, v7, :cond_3

    move v0, v1

    .line 544
    :goto_1
    sget-object v7, Lcom/yelp/android/ui/activities/feed/ah;->a:[I

    invoke-virtual {v4}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->ordinal()I

    move-result v4

    aget v4, v7, v4

    packed-switch v4, :pswitch_data_0

    .line 559
    :goto_2
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    const-string/jumbo v1, "com.yelp.android.review.update"

    invoke-direct {v0, v3, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/ap;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 543
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 546
    :pswitch_0
    invoke-virtual {v5, v0}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->setVotedUseful(Z)V

    .line 547
    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->getUsefulVotes()I

    move-result v4

    if-eqz v0, :cond_4

    :goto_3
    add-int v0, v4, v1

    invoke-virtual {v6, v0}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->setUsefulVotes(I)V

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    .line 551
    :pswitch_1
    invoke-virtual {v5, v0}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->setVotedFunny(Z)V

    .line 552
    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->getFunnyVotes()I

    move-result v4

    if-eqz v0, :cond_5

    :goto_4
    add-int v0, v4, v1

    invoke-virtual {v6, v0}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->setFunnyVotes(I)V

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_4

    .line 555
    :pswitch_2
    invoke-virtual {v5, v0}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->setVotedCool(Z)V

    .line 556
    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->getCoolVotes()I

    move-result v4

    if-eqz v0, :cond_6

    :goto_5
    add-int v0, v4, v1

    invoke-virtual {v6, v0}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->setCoolVotes(I)V

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_5

    .line 544
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 526
    invoke-static {p2}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    .line 527
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 523
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/ap;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
