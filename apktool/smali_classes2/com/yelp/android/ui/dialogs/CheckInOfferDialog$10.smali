.class Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$10;
.super Lcom/yelp/android/ui/util/av$a;
.source "CheckInOfferDialog.java"


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
    .line 477
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$10;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/av$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 481
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$10;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->i(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V

    .line 482
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$10;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->j(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    const v2, 0x7f04001c

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 485
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$10;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->k(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/yelp/android/ui/util/av;->b:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 486
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$10;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->l(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Landroid/widget/Button;

    move-result-object v0

    sget v1, Lcom/yelp/android/ui/util/av;->b:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/util/av;->c(Landroid/view/View;J)Landroid/view/animation/AlphaAnimation;

    .line 487
    return-void
.end method
