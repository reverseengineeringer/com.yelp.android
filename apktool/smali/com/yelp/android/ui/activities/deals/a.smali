.class Lcom/yelp/android/ui/activities/deals/a;
.super Ljava/lang/Object;
.source "ActivityDealDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/a;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/a;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/a;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/a;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/a;->a:Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->b(Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;)Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/deals/ChooseDealOption;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/YelpDeal;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->startActivity(Landroid/content/Intent;)V

    .line 268
    return-void
.end method
