.class Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$10;
.super Ljava/lang/Object;
.source "AbstractFeedFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$10;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 392
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;

    .line 394
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;->b()I

    move-result v1

    .line 395
    if-ltz v1, :cond_0

    .line 396
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;->a()Lcom/yelp/android/serializable/FeedItem;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 398
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 399
    const-string/jumbo v4, "seen_media_count"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string/jumbo v1, "total_media_count"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string/jumbo v1, "request_id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string/jumbo v1, "index"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_MEDIA_SEEN:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$10;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->c:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 409
    :cond_0
    return-void
.end method
