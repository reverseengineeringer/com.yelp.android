.class Lcom/yelp/android/ui/activities/feed/ab;
.super Ljava/lang/Object;
.source "FeedFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/feed/bh;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/FeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V
    .locals 0

    .prologue
    .line 681
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/ab;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/yelp/android/serializable/TipFeedEntry;)V
    .locals 4

    .prologue
    .line 684
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 685
    const-string/jumbo v1, "vote_type"

    const-string/jumbo v2, "like"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    const-string/jumbo v1, "is_positive"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_VOTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/ab;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->h(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/activities/feed/FeedType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 688
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ab;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/fq;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/TipFeedEntry;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/ab;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->k(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/av/i;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lcom/yelp/android/appdata/webrequests/fq;-><init>(Ljava/lang/String;ZLcom/yelp/android/av/i;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->a(Lcom/yelp/android/ui/activities/feed/FeedFragment;Lcom/yelp/android/appdata/webrequests/fq;)Lcom/yelp/android/appdata/webrequests/fq;

    .line 690
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ab;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->l(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/appdata/webrequests/fq;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fq;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 691
    return-void
.end method
