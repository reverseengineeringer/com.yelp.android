.class Lcom/yelp/android/ui/activities/deals/g;
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
    .line 618
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/g;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 622
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 625
    if-eqz v0, :cond_0

    .line 626
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/g;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 628
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/g;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->startActivity(Landroid/content/Intent;)V

    .line 630
    :cond_0
    return-void
.end method
