.class Lcom/yelp/android/ui/activities/deals/f;
.super Ljava/lang/Object;
.source "ActivityDealDetail.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V
    .locals 0

    .prologue
    .line 604
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/f;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 608
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 609
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/f;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 612
    :goto_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/f;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/f;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->b(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpDeal;->getBusinessName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getBusinessId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v3, v4, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusinessReview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 614
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/f;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->startActivity(Landroid/content/Intent;)V

    .line 615
    return-void

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/f;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getCountry()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
