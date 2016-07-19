.class Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$8;
.super Ljava/lang/Object;
.source "CheckInOfferDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$8;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 418
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->CheckInOfferDiscard:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "check_in_offer_id"

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$8;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v2}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->e(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Lcom/yelp/android/serializable/Offer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Offer;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 420
    new-instance v0, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;->REMOVE:Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$8;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v2}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->e(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Lcom/yelp/android/serializable/Offer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Offer;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest;-><init>(Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 425
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$8;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->e(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Offer$OfferState;->REMOVED:Lcom/yelp/android/serializable/Offer$OfferState;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Offer;->a(Lcom/yelp/android/serializable/Offer$OfferState;)V

    .line 426
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$8;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$8;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->e(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Lcom/yelp/android/serializable/Offer;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$8;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-virtual {v2}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "business_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Offer;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$8;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->dismiss()V

    .line 429
    return-void
.end method
