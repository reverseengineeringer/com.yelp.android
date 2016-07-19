.class public Lcom/yelp/android/ci/h;
.super Lcom/yelp/android/ci/e;
.source "ReviewFeedEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ci/h$1;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/serializable/FeedItem;

.field private b:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

.field private c:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;)V
    .locals 4

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/ci/e;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yelp/android/ci/h;->a:Lcom/yelp/android/serializable/FeedItem;

    .line 24
    iput-object p2, p0, Lcom/yelp/android/ci/h;->b:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    .line 25
    iput-object p3, p0, Lcom/yelp/android/ci/h;->c:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    .line 26
    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->f()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ci/h;->d:Ljava/util/Map;

    .line 27
    sget-object v0, Lcom/yelp/android/ci/h$1;->a:[I

    iget-object v1, p0, Lcom/yelp/android/ci/h;->c:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 38
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ci/h;->d:Ljava/util/Map;

    const-string/jumbo v2, "is_positive"

    iget-object v0, p0, Lcom/yelp/android/ci/h;->b:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    sget-object v3, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;->ADD:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void

    .line 29
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ci/h;->d:Ljava/util/Map;

    const-string/jumbo v1, "vote_type"

    const-string/jumbo v2, "useful"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 32
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ci/h;->d:Ljava/util/Map;

    const-string/jumbo v1, "vote_type"

    const-string/jumbo v2, "funny"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 35
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ci/h;->d:Ljava/util/Map;

    const-string/jumbo v1, "vote_type"

    const-string/jumbo v2, "cool"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 27
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/core/c$a;)Lcom/yelp/android/appdata/webrequests/core/c;
    .locals 5

    .prologue
    .line 53
    new-instance v1, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;

    iget-object v2, p0, Lcom/yelp/android/ci/h;->b:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;

    iget-object v3, p0, Lcom/yelp/android/ci/h;->c:Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;

    iget-object v0, p0, Lcom/yelp/android/ci/h;->a:Lcom/yelp/android/serializable/FeedItem;

    const-class v4, Lcom/yelp/android/serializable/FeedReviewActivity;

    invoke-virtual {v0, v4}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedReviewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedReviewActivity;->d()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest;-><init>(Lcom/yelp/android/appdata/webrequests/core/c$a;Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteType;Lcom/yelp/android/appdata/webrequests/ReviewVoteRequest$VoteValue;Ljava/lang/String;)V

    return-object v1
.end method

.method public a()Lcom/yelp/android/ui/activities/feed/FeedEventIriType;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_VOTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    return-object v0
.end method

.method public synthetic b(Lcom/yelp/android/appdata/webrequests/core/c$a;)Lcom/yelp/android/appdata/webrequests/core/b;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/yelp/android/ci/h;->a(Lcom/yelp/android/appdata/webrequests/core/c$a;)Lcom/yelp/android/appdata/webrequests/core/c;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ci/h;->d:Ljava/util/Map;

    return-object v0
.end method
