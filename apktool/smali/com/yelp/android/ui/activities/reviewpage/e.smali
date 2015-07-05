.class Lcom/yelp/android/ui/activities/reviewpage/e;
.super Ljava/lang/Object;
.source "ActivityAbstractReviewPage.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;Lcom/yelp/android/ui/activities/reviewpage/a;)V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/e;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 476
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 477
    instance-of v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/e;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;Lcom/yelp/android/serializable/YelpBusinessReview;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->startActivity(Landroid/content/Intent;)V

    .line 480
    :cond_0
    return-void
.end method
