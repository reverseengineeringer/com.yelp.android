.class public Lcom/yelp/android/ui/activities/feed/be;
.super Lcom/yelp/android/ui/activities/feed/v;
.source "ReviewMeFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/feed/v",
        "<",
        "Lcom/yelp/android/serializable/ReviewFeedEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/v;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/yelp/android/serializable/FeedEntry;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const v5, 0x7f0c0024

    .line 21
    invoke-super/range {p0 .. p5}, Lcom/yelp/android/ui/activities/feed/v;->b(Lcom/yelp/android/serializable/FeedEntry;Lcom/yelp/android/ui/activities/feed/FeedType;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 24
    check-cast p1, Lcom/yelp/android/serializable/ReviewFeedEntry;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getReview()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->isFirstReview()Z

    move-result v1

    .line 25
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 26
    if-eqz v1, :cond_2

    .line 27
    if-nez v2, :cond_1

    .line 28
    new-instance v2, Lcom/yelp/android/ui/widgets/AwardBanner;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x0

    const v4, 0x7f0f0006

    invoke-direct {v2, v1, v3, v4}, Lcom/yelp/android/ui/widgets/AwardBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-virtual {v2, v5}, Lcom/yelp/android/ui/widgets/AwardBanner;->setId(I)V

    .line 31
    const v1, 0x7f0c0346

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 39
    :cond_0
    :goto_0
    return-object v0

    .line 33
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 35
    :cond_2
    if-eqz v2, :cond_0

    .line 36
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
