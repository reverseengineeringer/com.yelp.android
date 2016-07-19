.class public abstract Lcom/yelp/android/ci/g;
.super Lcom/yelp/android/ci/e;
.source "LikedFeedEvent.java"


# instance fields
.field protected a:Z

.field private b:Ljava/util/Map;
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
.method public constructor <init>(Lcom/yelp/android/serializable/FeedItem;Z)V
    .locals 3

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yelp/android/ci/e;-><init>()V

    .line 19
    iput-boolean p2, p0, Lcom/yelp/android/ci/g;->a:Z

    .line 20
    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->f()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ci/g;->b:Ljava/util/Map;

    .line 21
    iget-object v0, p0, Lcom/yelp/android/ci/g;->b:Ljava/util/Map;

    const-string/jumbo v1, "vote_type"

    const-string/jumbo v2, "like"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/yelp/android/ci/g;->b:Ljava/util/Map;

    const-string/jumbo v1, "is_positive"

    iget-boolean v2, p0, Lcom/yelp/android/ci/g;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/ui/activities/feed/FeedEventIriType;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_VOTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

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
    .line 32
    iget-object v0, p0, Lcom/yelp/android/ci/g;->b:Ljava/util/Map;

    return-object v0
.end method
