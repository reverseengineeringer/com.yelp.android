.class Lcom/yelp/android/ui/activities/deals/bd;
.super Ljava/lang/Object;
.source "PurchaseDealsForm.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

.field private final b:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/bd;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    iput-object p2, p0, Lcom/yelp/android/ui/activities/deals/bd;->b:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    .line 594
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ")V"
        }
    .end annotation

    .prologue
    .line 618
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/bd;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Z)Z

    .line 619
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 620
    const-string/jumbo v1, "deal_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/bd;->b:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->c(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpDeal;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string/jumbo v1, "deal_option_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/bd;->b:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->g(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/serializable/YelpDealOption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpDealOption;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const-string/jumbo v1, "quantity"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/bd;->b:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->getQuantity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->DealPurchased:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 625
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/bd;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->h(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    .line 627
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/bd;->b:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 628
    const-string/jumbo v1, "extra.deal_purchased"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/bd;->b:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->c(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 629
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 630
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/bd;->b:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->startActivity(Landroid/content/Intent;)V

    .line 631
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/bd;->b:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->finish()V

    .line 632
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 598
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/bd;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Z)Z

    .line 599
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/bd;->b:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getHelper()Lcom/yelp/android/ui/activities/support/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->h()V

    .line 600
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/bd;->b:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Lcom/yelp/android/appdata/webrequests/YelpException;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    :goto_0
    return-void

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/bd;->b:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/bd;->b:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-virtual {p2, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a:Ljava/lang/String;

    .line 606
    instance-of v0, p2, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/yelp/android/appdata/webrequests/ApiException;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v0

    const/16 v1, 0x4b2

    if-ne v0, v1, :cond_1

    .line 608
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/bd;->b:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    const/16 v1, 0x134

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->showDialog(I)V

    .line 612
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/bd;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->e(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    .line 613
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/bd;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    goto :goto_0

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/bd;->b:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    const/16 v1, 0x135

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->showDialog(I)V

    goto :goto_1
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 589
    check-cast p2, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/deals/bd;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/YelpBusiness;)V

    return-void
.end method
