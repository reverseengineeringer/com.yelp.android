.class Lcom/yelp/android/ui/activities/deals/bc;
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
        "Lcom/yelp/android/appdata/webrequests/cq;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V
    .locals 0

    .prologue
    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/bc;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    .line 847
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/cq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 861
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/bc;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->hideLoadingDialog()V

    .line 862
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/bc;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cq;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Ljava/lang/String;)Ljava/lang/String;

    .line 863
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cq;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/bc;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/bc;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x40c

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->startActivityForResult(Landroid/content/Intent;I)V

    .line 878
    :goto_0
    return-void

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/bc;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cq;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 870
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/bc;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cq;->b()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PaymentMethod;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Lcom/yelp/android/serializable/PaymentMethod;)V

    .line 874
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/bc;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->n(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 875
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/bc;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->b(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    .line 877
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/bc;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    goto :goto_0
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
    .line 851
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/bc;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->hideLoadingDialog()V

    .line 852
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/bc;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Lcom/yelp/android/appdata/webrequests/YelpException;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    :goto_0
    return-void

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/bc;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 856
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/bc;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->finish()V

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 841
    check-cast p2, Lcom/yelp/android/appdata/webrequests/cq;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/deals/bc;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cq;)V

    return-void
.end method
