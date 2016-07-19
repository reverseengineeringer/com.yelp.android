.class Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$2;
.super Ljava/lang/Object;
.source "PurchaseDealsForm.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$2;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 3
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
    .line 694
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$2;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->i(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$2;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->i(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$2;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->enableLoading()V

    .line 696
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$2;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/dc;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$2;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->j(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/yelp/android/appdata/webrequests/dc;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Lcom/yelp/android/appdata/webrequests/dc;)Lcom/yelp/android/appdata/webrequests/dc;

    .line 697
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$2;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->i(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 699
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
    .line 703
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$2;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 704
    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v0

    .line 705
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$2;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    new-instance v2, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$2$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$2$1;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$2;)V

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->populateError(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 713
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 688
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
