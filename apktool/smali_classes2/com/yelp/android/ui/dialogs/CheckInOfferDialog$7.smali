.class Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7;
.super Ljava/lang/Object;
.source "CheckInOfferDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->h()V
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
    .line 381
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 385
    new-instance v0, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;->MARK_USED:Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v2}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->e(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Lcom/yelp/android/serializable/Offer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Offer;->i()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest;-><init>(Lcom/yelp/android/appdata/webrequests/MarkOfferRequest$MarkOfferRequestType;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    .line 390
    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/MarkOfferRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 391
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->e(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Offer$OfferState;->USED:Lcom/yelp/android/serializable/Offer$OfferState;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Offer;->a(Lcom/yelp/android/serializable/Offer$OfferState;)V

    .line 392
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->e(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Lcom/yelp/android/serializable/Offer;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-virtual {v2}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "business_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Offer;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->f(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    const v2, 0x7f04001b

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 398
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->h(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7$1;-><init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 409
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->f(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->h(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 410
    return-void
.end method
