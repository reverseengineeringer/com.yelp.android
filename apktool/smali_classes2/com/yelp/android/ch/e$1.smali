.class Lcom/yelp/android/ch/e$1;
.super Ljava/lang/Object;
.source "FeedUserReviewViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ch/e;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/FeedType;

.field final synthetic b:Lcom/yelp/android/serializable/FeedItem;

.field final synthetic c:Lcom/yelp/android/serializable/YelpBusinessReview;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/yelp/android/ch/e;


# direct methods
.method constructor <init>(Lcom/yelp/android/ch/e;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/serializable/YelpBusinessReview;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/yelp/android/ch/e$1;->e:Lcom/yelp/android/ch/e;

    iput-object p2, p0, Lcom/yelp/android/ch/e$1;->a:Lcom/yelp/android/ui/activities/feed/FeedType;

    iput-object p3, p0, Lcom/yelp/android/ch/e$1;->b:Lcom/yelp/android/serializable/FeedItem;

    iput-object p4, p0, Lcom/yelp/android/ch/e$1;->c:Lcom/yelp/android/serializable/YelpBusinessReview;

    iput-object p5, p0, Lcom/yelp/android/ch/e$1;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 72
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SELECTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    iget-object v1, p0, Lcom/yelp/android/ch/e$1;->a:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ch/e$1;->b:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedItem;->g()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ch/e$1;->b:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->l()Lcom/yelp/android/serializable/FeedGroupedByInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedGroupedByInfo;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/yelp/android/ch/e$1;->c:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ch/e$1;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/yelp/android/ch/e$1;->c:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v4, v5, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusinessReview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 94
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ch/e$1;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/yelp/android/ch/e$1;->c:Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusinessReview;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v4, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
