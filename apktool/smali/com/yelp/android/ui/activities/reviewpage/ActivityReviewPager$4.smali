.class Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$4;
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
    .line 627
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$4;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 630
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewBroadcast;

    .line 635
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->e()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$4;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$4;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->c()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->a(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$4;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->d:Lcom/yelp/android/ui/widgets/ReviewPagerFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/ReviewPagerFragment;->g()V

    .line 640
    :cond_0
    return-void
.end method
