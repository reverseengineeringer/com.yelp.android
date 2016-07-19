.class Lcom/yelp/android/ui/activities/feed/viewbinder/e$a$3;
.super Ljava/lang/Object;
.source "BusinessPhotoFeedViewBinder.java"

# interfaces
.implements Lcom/yelp/android/ui/util/DynamicImageView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a$3;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 156
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a$3;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;->a(Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;)Lcom/yelp/android/ch/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ch/b;->b()Lcom/yelp/android/serializable/FeedItem;

    move-result-object v0

    .line 157
    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SELECTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a$3;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;->b(Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;)Lcom/yelp/android/ui/activities/feed/FeedType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->c()Lcom/yelp/android/ui/activities/feed/FeedItemType;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/ui/activities/feed/FeedItemType;->BUSINESS_PHOTO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->g()Ljava/util/Map;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 162
    return-void

    .line 157
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->h()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method
