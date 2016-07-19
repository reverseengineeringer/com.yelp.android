.class public Lcom/yelp/android/ci/b;
.super Lcom/yelp/android/ci/e;
.source "BookmarkFeedEvent.java"


# instance fields
.field private final a:Lcom/yelp/android/serializable/FeedItem;

.field private final b:Lcom/yelp/android/serializable/YelpBusiness;


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/ci/e;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/yelp/android/ci/b;->a:Lcom/yelp/android/serializable/FeedItem;

    .line 21
    iput-object p2, p0, Lcom/yelp/android/ci/b;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 22
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/ui/activities/feed/FeedEventIriType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_BOOKMARK:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    return-object v0
.end method

.method public b(Lcom/yelp/android/appdata/webrequests/core/c$a;)Lcom/yelp/android/appdata/webrequests/core/b;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 3
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
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ci/b;->a:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->f()Ljava/util/Map;

    move-result-object v1

    .line 32
    const-string/jumbo v2, "action"

    iget-object v0, p0, Lcom/yelp/android/ci/b;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "remove"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-object v1

    .line 32
    :cond_0
    const-string/jumbo v0, "add"

    goto :goto_0
.end method

.method public c()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ci/b;->b:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method
