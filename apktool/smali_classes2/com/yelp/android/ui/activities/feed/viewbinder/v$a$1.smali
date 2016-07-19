.class Lcom/yelp/android/ui/activities/feed/viewbinder/v$a$1;
.super Ljava/lang/Object;
.source "ReviewDraftFeedViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/v$a;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/ci/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/FeedType;

.field final synthetic b:Lcom/yelp/android/serializable/FeedItem;

.field final synthetic c:Lcom/yelp/android/ui/activities/feed/viewbinder/v$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/v$a;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/serializable/FeedItem;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/v$a$1;->c:Lcom/yelp/android/ui/activities/feed/viewbinder/v$a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/v$a$1;->a:Lcom/yelp/android/ui/activities/feed/FeedType;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/v$a$1;->b:Lcom/yelp/android/serializable/FeedItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 96
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SELECTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/v$a$1;->a:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/v$a$1;->b:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedItem;->g()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/v$a$1;->b:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->l()Lcom/yelp/android/serializable/FeedGroupedByInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedGroupedByInfo;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/v$a$1;->b:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/FeedItem;->l()Lcom/yelp/android/serializable/FeedGroupedByInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/FeedGroupedByInfo;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->ProfileReviewDrafts:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 120
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/v$a$1;->b:Lcom/yelp/android/serializable/FeedItem;

    const-class v3, Lcom/yelp/android/serializable/FeedReviewDraftActivity;

    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedReviewDraftActivity;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedReviewDraftActivity;->d()Lcom/yelp/android/serializable/ReviewDraft;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewDraft;->g()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/yelp/android/ui/activities/reviews/ReviewState;->DRAFTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    sget-object v4, Lcom/yelp/android/ui/activities/reviews/ReviewSource;->ProfileReviewDrafts:Lcom/yelp/android/ui/activities/reviews/ReviewSource;

    invoke-static {v2, v0, v3, v4}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/ui/activities/reviews/ReviewState;Lcom/yelp/android/ui/activities/reviews/ReviewSource;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
