.class Lcom/yelp/android/ui/activities/feed/viewbinder/d$2;
.super Ljava/lang/Object;
.source "BusinessListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/d;->a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/FeedItem;

.field final synthetic b:I

.field final synthetic c:Lcom/yelp/android/ui/activities/feed/viewbinder/d;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/d;Lcom/yelp/android/serializable/FeedItem;I)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d$2;->c:Lcom/yelp/android/ui/activities/feed/viewbinder/d;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d$2;->a:Lcom/yelp/android/serializable/FeedItem;

    iput p3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 112
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SELECTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d$2;->c:Lcom/yelp/android/ui/activities/feed/viewbinder/d;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->f:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d$2;->a:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedItem;->g()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d$2;->a:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v0

    iget v3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/d$2;->b:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/SingleFeedActivity;

    invoke-interface {v0}, Lcom/yelp/android/serializable/SingleFeedActivity;->b()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    return-void
.end method
