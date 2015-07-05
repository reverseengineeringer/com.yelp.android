.class Lcom/yelp/android/ui/dialogs/l;
.super Ljava/lang/Object;
.source "CheckInOfferDialog.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/serializable/Offer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/l;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Offer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/Offer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/l;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->hideLoadingDialog()V

    .line 412
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/yelp/android/ui/dialogs/m;

    invoke-direct {v1, p0, p2}, Lcom/yelp/android/ui/dialogs/m;-><init>(Lcom/yelp/android/ui/dialogs/l;Lcom/yelp/android/serializable/Offer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 419
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/l;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/l;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-virtual {v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "business_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Offer;Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 5
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
    .line 392
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/l;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->hideLoadingDialog()V

    .line 393
    instance-of v0, p2, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiException;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v0

    const/16 v1, 0x3fa

    if-ne v0, v1, :cond_0

    .line 395
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/l;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->e(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Offer$OfferState;->USED:Lcom/yelp/android/serializable/Offer$OfferState;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Offer;->setState(Lcom/yelp/android/serializable/Offer$OfferState;)V

    .line 396
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/l;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->e(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Lcom/yelp/android/serializable/Offer;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/l;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-virtual {v2}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "business_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Offer;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/l;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->dismiss()V

    .line 406
    :goto_0
    return-void

    .line 400
    :cond_0
    const-string/jumbo v0, ""

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/l;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    const v3, 0x7f07051c

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/l;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    const v4, 0x7f070500

    invoke-virtual {v3, v4}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    move-result-object v0

    .line 403
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/l;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->b(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;Lcom/yelp/android/ui/dialogs/TwoButtonDialog;)V

    .line 404
    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/l;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-virtual {v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog_retry_request"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 389
    check-cast p2, Lcom/yelp/android/serializable/Offer;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/dialogs/l;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Offer;)V

    return-void
.end method
