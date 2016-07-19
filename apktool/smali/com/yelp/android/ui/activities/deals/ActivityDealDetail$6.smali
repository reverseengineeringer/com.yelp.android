.class Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$6;
.super Ljava/lang/Object;
.source "ActivityDealDetail.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$6;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

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
    .line 648
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 650
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$6;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 652
    :goto_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$6;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$6;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->b(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpDeal;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->Q()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v3, v4, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusinessReview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 659
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$6;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->startActivity(Landroid/content/Intent;)V

    .line 660
    return-void

    .line 650
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail$6;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aw()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
