.class Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$3;
.super Ljava/lang/Object;
.source "VideoFeedViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->a(Lcom/yelp/android/ui/util/t;Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/content/Context;Lcom/yelp/android/ci/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/FeedType;

.field final synthetic b:Lcom/yelp/android/serializable/FeedItem;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/yelp/android/serializable/Video;

.field final synthetic f:Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/serializable/Video;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$3;->f:Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$3;->a:Lcom/yelp/android/ui/activities/feed/FeedType;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$3;->b:Lcom/yelp/android/serializable/FeedItem;

    iput-object p4, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$3;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$3;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$3;->e:Lcom/yelp/android/serializable/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 147
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SELECTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$3;->a:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$3;->b:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedItem;->g()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$3;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$3;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$3;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$3;->e:Lcom/yelp/android/serializable/Video;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 154
    return-void
.end method
