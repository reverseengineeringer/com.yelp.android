.class Lcom/yelp/android/ui/activities/feed/viewbinder/k$a$1;
.super Ljava/lang/Object;
.source "EventFeedViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/k$a;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/FeedType;

.field final synthetic b:Lcom/yelp/android/serializable/FeedItem;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/yelp/android/ui/activities/feed/viewbinder/k$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/k$a;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/k$a$1;->d:Lcom/yelp/android/ui/activities/feed/viewbinder/k$a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/k$a$1;->a:Lcom/yelp/android/ui/activities/feed/FeedType;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/k$a$1;->b:Lcom/yelp/android/serializable/FeedItem;

    iput-object p4, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/k$a$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 66
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_EVENT:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/k$a$1;->a:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/k$a$1;->b:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedItem;->f()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/k$a$1;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/k$a$1;->b:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/FeedItem;->l()Lcom/yelp/android/serializable/FeedGroupedByInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/FeedGroupedByInfo;->c()Lcom/yelp/android/serializable/Event;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/IriSource;->Feed:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/events/ActivityEventPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Event;Lcom/yelp/android/analytics/iris/IriSource;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 75
    return-void
.end method
