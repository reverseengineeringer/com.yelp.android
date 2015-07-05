.class Lcom/yelp/android/ui/dialogs/n;
.super Lcom/yelp/android/ui/util/dd;
.source "CheckInOfferDialog.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/n;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 428
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/n;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->g(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V

    .line 429
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/n;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->h(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    const v2, 0x7f040016

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 431
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/n;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->i(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/yelp/android/ui/util/cw;->b:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/cw;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 432
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/n;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->j(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/yelp/android/ui/util/cw;->b:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/cw;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 433
    return-void
.end method
