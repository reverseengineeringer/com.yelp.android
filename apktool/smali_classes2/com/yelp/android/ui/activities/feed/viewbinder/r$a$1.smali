.class Lcom/yelp/android/ui/activities/feed/viewbinder/r$a$1;
.super Ljava/lang/Object;
.source "LocalIssueFeedViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/r$a;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/LocalIssue;

.field final synthetic b:Lcom/yelp/android/ui/activities/feed/FeedType;

.field final synthetic c:Lcom/yelp/android/serializable/FeedItem;

.field final synthetic d:Lcom/yelp/android/ui/activities/feed/viewbinder/r$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/r$a;Lcom/yelp/android/serializable/LocalIssue;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/serializable/FeedItem;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/r$a$1;->d:Lcom/yelp/android/ui/activities/feed/viewbinder/r$a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/r$a$1;->a:Lcom/yelp/android/serializable/LocalIssue;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/r$a$1;->b:Lcom/yelp/android/ui/activities/feed/FeedType;

    iput-object p4, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/r$a$1;->c:Lcom/yelp/android/serializable/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/r$a$1;->a:Lcom/yelp/android/serializable/LocalIssue;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->a(Landroid/content/Context;Lcom/yelp/android/serializable/LocalIssue;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SELECTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/r$a$1;->b:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/r$a$1;->c:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedItem;->g()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 82
    return-void
.end method
