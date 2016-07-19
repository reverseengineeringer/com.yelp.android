.class Lcom/yelp/android/ui/activities/feed/viewbinder/aa$1;
.super Ljava/lang/Object;
.source "TalkPostListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/aa;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/FeedItem;

.field final synthetic b:Lcom/yelp/android/ui/activities/feed/viewbinder/aa;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/aa;Lcom/yelp/android/serializable/FeedItem;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/aa$1;->b:Lcom/yelp/android/ui/activities/feed/viewbinder/aa;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/aa$1;->a:Lcom/yelp/android/serializable/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/aa$1;->a:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedItem;->l()Lcom/yelp/android/serializable/FeedGroupedByInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedGroupedByInfo;->b()Lcom/yelp/android/serializable/User;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/aa$1;->a:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/ActivityTalkPosts;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 80
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SELECTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/aa$1;->b:Lcom/yelp/android/ui/activities/feed/viewbinder/aa;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/feed/viewbinder/aa;->f:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/aa$1;->a:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedItem;->h()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 84
    return-void
.end method
