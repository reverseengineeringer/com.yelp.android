.class Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7$1;
.super Lcom/yelp/android/ui/util/av$a;
.source "CheckInOfferDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7$1;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/av$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 402
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7$1;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7;

    iget-object v0, v0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7$1;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7;

    iget-object v1, v1, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog$7;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->g(Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 407
    return-void
.end method
