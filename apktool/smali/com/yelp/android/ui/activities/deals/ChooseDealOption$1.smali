.class Lcom/yelp/android/ui/activities/deals/ChooseDealOption$1;
.super Ljava/lang/Object;
.source "ChooseDealOption.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/deals/ChooseDealOption;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/YelpBusiness;

.field final synthetic b:Lcom/yelp/android/serializable/YelpDeal;

.field final synthetic c:Lcom/yelp/android/ui/activities/deals/ChooseDealOption;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/ChooseDealOption;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/YelpDeal;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ChooseDealOption$1;->c:Lcom/yelp/android/ui/activities/deals/ChooseDealOption;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/deals/ChooseDealOption$1;->a:Lcom/yelp/android/serializable/YelpBusiness;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/deals/ChooseDealOption$1;->b:Lcom/yelp/android/serializable/YelpDeal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ChooseDealOption$1;->c:Lcom/yelp/android/ui/activities/deals/ChooseDealOption;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/ChooseDealOption;->finish()V

    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ChooseDealOption$1;->c:Lcom/yelp/android/ui/activities/deals/ChooseDealOption;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ChooseDealOption$1;->c:Lcom/yelp/android/ui/activities/deals/ChooseDealOption;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ChooseDealOption$1;->a:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/ChooseDealOption$1;->b:Lcom/yelp/android/serializable/YelpDeal;

    invoke-static {v1, v2, v3, p3}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/YelpDeal;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/deals/ChooseDealOption;->startActivity(Landroid/content/Intent;)V

    .line 79
    return-void
.end method
