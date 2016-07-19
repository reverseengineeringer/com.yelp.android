.class Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$3;
.super Ljava/lang/Object;
.source "PurchaseDealsForm.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/yelp/android/serializable/PaymentMethod;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V
    .locals 0

    .prologue
    .line 717
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$3;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/PaymentMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 721
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$3;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$3;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->disableLoading()V

    .line 723
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$3;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->clearError()V

    .line 728
    const/4 v1, 0x0

    .line 730
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PaymentMethod;

    .line 735
    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$3;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->m(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 741
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$3;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v1, p2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 742
    if-eqz v0, :cond_1

    .line 744
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$3;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->m(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 745
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$3;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->m(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 746
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$3;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Lcom/yelp/android/serializable/PaymentMethod;)V

    .line 748
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3
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
    .line 752
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$3;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 753
    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v0

    .line 754
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$3;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    new-instance v2, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$3$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$3$1;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$3;)V

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->populateError(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 764
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 717
    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$3;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/ArrayList;)V

    return-void
.end method
