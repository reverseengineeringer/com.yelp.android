.class Lcom/yelp/android/ui/activities/feed/aa;
.super Ljava/lang/Object;
.source "FeedFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/feed/bd;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/FeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V
    .locals 0

    .prologue
    .line 657
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/aa;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;Lcom/yelp/android/serializable/ReviewFeedEntry;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 660
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 661
    invoke-virtual {p3, v2}, Lcom/yelp/android/serializable/ReviewFeedEntry;->setupIriParams(Ljava/util/Map;)Ljava/util/Map;

    .line 662
    sget-object v0, Lcom/yelp/android/ui/activities/feed/ah;->a:[I

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 673
    :goto_0
    const-string/jumbo v3, "is_positive"

    sget-object v0, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;->ADD:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_VOTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/aa;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->h(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/activities/feed/FeedType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 675
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/aa;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    new-instance v2, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/aa;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->i(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/av/i;

    move-result-object v3

    invoke-virtual {p3}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getReview()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, p2, p1, v4}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;-><init>(Lcom/yelp/android/av/i;Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedFragment;Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;)Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

    .line 677
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/aa;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->j(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 678
    return-void

    .line 664
    :pswitch_0
    const-string/jumbo v0, "vote_type"

    const-string/jumbo v3, "useful"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 667
    :pswitch_1
    const-string/jumbo v0, "vote_type"

    const-string/jumbo v3, "funny"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 670
    :pswitch_2
    const-string/jumbo v0, "vote_type"

    const-string/jumbo v3, "cool"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move v0, v1

    .line 673
    goto :goto_1

    .line 662
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
