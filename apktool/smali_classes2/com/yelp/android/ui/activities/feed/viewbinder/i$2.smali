.class Lcom/yelp/android/ui/activities/feed/viewbinder/i$2;
.super Ljava/lang/Object;
.source "CheckInUserListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/i;->a(Lcom/yelp/android/serializable/FeedItem;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/FeedItem;

.field final synthetic b:Lcom/yelp/android/ui/activities/feed/viewbinder/i;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/i;Lcom/yelp/android/serializable/FeedItem;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/i$2;->b:Lcom/yelp/android/ui/activities/feed/viewbinder/i;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/i$2;->a:Lcom/yelp/android/serializable/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 51
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SELECTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/i$2;->b:Lcom/yelp/android/ui/activities/feed/viewbinder/i;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/feed/viewbinder/i;->f:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/i$2;->a:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedItem;->h()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 55
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/i$2;->a:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/i$2;->a:Lcom/yelp/android/serializable/FeedItem;

    const-class v3, Lcom/yelp/android/serializable/FeedCheckInActivity;

    invoke-virtual {v0, v3, v1}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;I)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedCheckInActivity;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedCheckInActivity;->d()Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/i$2;->a:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/FeedItem;->l()Lcom/yelp/android/serializable/FeedGroupedByInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/FeedGroupedByInfo;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/feed/ActivityRecentCheckIns;->a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 65
    return-void
.end method
