.class Lcom/yelp/android/ui/activities/reviewpage/a;
.super Landroid/content/BroadcastReceiver;
.source "ActivityAbstractReviewPage.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/a;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 517
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 521
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/a;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/reviewpage/bi;

    .line 522
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->a(Lcom/yelp/android/serializable/YelpBusinessReview;)V

    goto :goto_0

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/a;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a(Lcom/yelp/android/serializable/YelpBusinessReview;)V

    .line 525
    return-void
.end method
