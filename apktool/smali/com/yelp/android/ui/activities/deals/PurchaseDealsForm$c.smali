.class Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$c;
.super Ljava/lang/Object;
.source "PurchaseDealsForm.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/cf$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V
    .locals 0

    .prologue
    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$c;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    .line 894
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cf$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/cf$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 908
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$c;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->hideLoadingDialog()V

    .line 909
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$c;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cf$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Ljava/lang/String;)Ljava/lang/String;

    .line 910
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cf$a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$c;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$c;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x410

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->startActivityForResult(Landroid/content/Intent;I)V

    .line 925
    :goto_0
    return-void

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$c;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cf$a;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 917
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$c;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cf$a;->b()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PaymentMethod;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Lcom/yelp/android/serializable/PaymentMethod;)V

    .line 921
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$c;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->n(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 922
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$c;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->b(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    .line 924
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$c;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

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
    .line 898
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$c;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->hideLoadingDialog()V

    .line 899
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$c;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Lcom/yelp/android/appdata/webrequests/YelpException;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    :goto_0
    return-void

    .line 902
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$c;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 903
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$c;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->finish()V

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 887
    check-cast p2, Lcom/yelp/android/appdata/webrequests/cf$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$c;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cf$a;)V

    return-void
.end method
