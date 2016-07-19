.class Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a$2;
.super Ljava/lang/Object;
.source "UserPhotoFeedViewBinder.java"

# interfaces
.implements Lcom/yelp/android/ui/util/DynamicImageView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a$2;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a$2;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;->a(Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;)Lcom/yelp/android/ch/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ch/b;->b()Lcom/yelp/android/serializable/FeedItem;

    move-result-object v0

    .line 110
    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SELECTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a$2;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;->b(Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;)Lcom/yelp/android/ui/activities/feed/FeedType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->c()Lcom/yelp/android/ui/activities/feed/FeedItemType;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/ui/activities/feed/FeedItemType;->USER_PHOTO:Lcom/yelp/android/ui/activities/feed/FeedItemType;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->g()Ljava/util/Map;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 115
    return-void

    .line 110
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->h()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method
