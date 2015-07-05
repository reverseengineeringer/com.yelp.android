.class Lcom/yelp/android/ui/activities/deals/ak;
.super Ljava/lang/Object;
.source "PurchaseDealsForm.java"

# interfaces
.implements Lcom/yelp/android/av/i;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ak;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 657
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ak;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->i(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/appdata/webrequests/ea;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ak;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->i(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/appdata/webrequests/ea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ea;->isFetching()Z

    move-result v0

    if-nez v0, :cond_1

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ak;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->enableLoading()V

    .line 659
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ak;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/ea;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/ak;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->j(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/ea;-><init>(ZLcom/yelp/android/appdata/webrequests/m;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Lcom/yelp/android/appdata/webrequests/ea;)Lcom/yelp/android/appdata/webrequests/ea;

    .line 660
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ak;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->i(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/appdata/webrequests/ea;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ea;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 662
    :cond_1
    return-void
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
    .line 666
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ak;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 667
    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v0

    .line 668
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ak;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    new-instance v2, Lcom/yelp/android/ui/activities/deals/al;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/al;-><init>(Lcom/yelp/android/ui/activities/deals/ak;)V

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->populateError(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V

    .line 674
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 651
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/deals/ak;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
