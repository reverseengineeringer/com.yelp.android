.class Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$5;
.super Landroid/content/BroadcastReceiver;
.source "ActivityReviewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$5;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 648
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->c(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 650
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 651
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$5;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 652
    if-ltz v2, :cond_0

    .line 653
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$5;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    iget-object v3, v3, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 655
    :cond_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$5;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->a(Lcom/yelp/android/serializable/YelpBusinessReview;)V

    goto :goto_0

    .line 657
    :cond_1
    return-void
.end method
