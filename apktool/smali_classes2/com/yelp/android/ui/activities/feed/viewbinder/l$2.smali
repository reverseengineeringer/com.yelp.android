.class Lcom/yelp/android/ui/activities/feed/viewbinder/l$2;
.super Ljava/lang/Object;
.source "EventListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/l;->a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/FeedItem;

.field final synthetic b:I

.field final synthetic c:Lcom/yelp/android/ui/activities/feed/viewbinder/l;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/l;Lcom/yelp/android/serializable/FeedItem;I)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/l$2;->c:Lcom/yelp/android/ui/activities/feed/viewbinder/l;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/l$2;->a:Lcom/yelp/android/serializable/FeedItem;

    iput p3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/l$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 90
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SELECTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/l$2;->c:Lcom/yelp/android/ui/activities/feed/viewbinder/l;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/feed/viewbinder/l;->f:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/l$2;->a:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedItem;->g()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/l$2;->a:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v0

    iget v3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/l$2;->b:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SingleFeedActivity;

    invoke-interface {v0}, Lcom/yelp/android/serializable/SingleFeedActivity;->a()Lcom/yelp/android/serializable/Event;

    move-result-object v0

    sget-object v3, Lcom/yelp/android/analytics/iris/IriSource;->Feed:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-static {v2, v0, v3}, Lcom/yelp/android/ui/activities/events/ActivityEventPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Event;Lcom/yelp/android/analytics/iris/IriSource;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method
