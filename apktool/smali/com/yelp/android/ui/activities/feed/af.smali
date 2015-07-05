.class Lcom/yelp/android/ui/activities/feed/af;
.super Ljava/lang/Object;
.source "FeedFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/FeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V
    .locals 0

    .prologue
    .line 735
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/af;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 738
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/yelp/android/ui/activities/feed/e;

    if-eqz v0, :cond_0

    .line 739
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/feed/e;

    .line 740
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/e;->b()I

    move-result v1

    .line 741
    if-ltz v1, :cond_0

    .line 742
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/e;->a()Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 743
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/e;->a()Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mPhotos:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 744
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 745
    const-string/jumbo v4, "seen_media_count"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    const-string/jumbo v1, "total_media_count"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    const-string/jumbo v1, "media_id"

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_MEDIA_SEEN:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/af;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->h(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/activities/feed/FeedType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 752
    :cond_0
    return-void
.end method
