.class Lcom/yelp/android/ui/activities/feed/viewbinder/i$1;
.super Ljava/lang/Object;
.source "CheckInUserListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/i;->a(Lcom/yelp/android/serializable/FeedItem;I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/FeedItem;

.field final synthetic b:I

.field final synthetic c:Lcom/yelp/android/ui/activities/feed/viewbinder/i;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/i;Lcom/yelp/android/serializable/FeedItem;I)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/i$1;->c:Lcom/yelp/android/ui/activities/feed/viewbinder/i;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/i$1;->a:Lcom/yelp/android/serializable/FeedItem;

    iput p3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/i$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 32
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SELECTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/i$1;->c:Lcom/yelp/android/ui/activities/feed/viewbinder/i;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/feed/viewbinder/i;->f:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/i$1;->a:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedItem;->g()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/i$1;->a:Lcom/yelp/android/serializable/FeedItem;

    const-class v3, Lcom/yelp/android/serializable/FeedCheckInActivity;

    iget v4, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/i$1;->b:I

    invoke-virtual {v0, v3, v4}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;I)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedCheckInActivity;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedCheckInActivity;->d()Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpCheckIn;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 42
    return-void
.end method
