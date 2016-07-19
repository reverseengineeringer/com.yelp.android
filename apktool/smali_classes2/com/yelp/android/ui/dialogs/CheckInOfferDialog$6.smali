.class Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$6;
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
    .line 362
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$6;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 366
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$6;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->c(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$6;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    const v1, 0x7f07067f

    const v2, 0x7f0701b0

    const v3, 0x1040009

    const v4, 0x7f070253

    invoke-static {v1, v2, v3, v4}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(IIII)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;Lcom/yelp/android/ui/dialogs/TwoButtonDialog;)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$6;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->c(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$6;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->d(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 376
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$6;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->c(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->setCancelable(Z)V

    .line 377
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$6;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->c(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$6;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-virtual {v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getChildFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "dialog_discard_offer"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 378
    return-void
.end method
