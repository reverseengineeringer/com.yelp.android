.class Lcom/yelp/android/ui/dialogs/g;
.super Ljava/lang/Object;
.source "CheckInOfferDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/g;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 338
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/g;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->c(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/g;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    const v1, 0x7f0706af

    const v2, 0x7f070130

    const v3, 0x1040009

    const v4, 0x7f070206

    invoke-static {v1, v2, v3, v4}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(IIII)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;Lcom/yelp/android/ui/dialogs/TwoButtonDialog;)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/g;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->c(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/g;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->d(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 344
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/g;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->c(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->setCancelable(Z)V

    .line 345
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/g;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->c(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/g;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-virtual {v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog_discard_offer"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 346
    return-void
.end method
