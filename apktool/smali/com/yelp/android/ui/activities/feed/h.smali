.class Lcom/yelp/android/ui/activities/feed/h;
.super Ljava/lang/Object;
.source "BizPhotoFeedViewBinder.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/photoviewer/ad;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/e;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/e;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/h;->a:Lcom/yelp/android/ui/activities/feed/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Media;)V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Photo;)V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public a(Z)V
    .locals 3

    .prologue
    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    const-string/jumbo v1, "vote_type"

    const-string/jumbo v2, "like"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string/jumbo v1, "is_positive"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_VOTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/h;->a:Lcom/yelp/android/ui/activities/feed/e;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/e;->b(Lcom/yelp/android/ui/activities/feed/e;)Lcom/yelp/android/ui/activities/feed/FeedType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/h;->a:Lcom/yelp/android/ui/activities/feed/e;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/feed/e;->c(Lcom/yelp/android/ui/activities/feed/e;)Lcom/yelp/android/ba/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ba/a;->b()Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->setupIriParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 130
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/Media;)V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/Photo;)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public c(Lcom/yelp/android/serializable/Media;)V
    .locals 0

    .prologue
    .line 150
    return-void
.end method
