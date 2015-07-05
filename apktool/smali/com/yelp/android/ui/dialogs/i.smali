.class Lcom/yelp/android/ui/dialogs/i;
.super Lcom/yelp/android/ui/util/dd;
.source "CheckInOfferDialog.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/h;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/dialogs/h;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/i;->a:Lcom/yelp/android/ui/dialogs/h;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 363
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/i;->a:Lcom/yelp/android/ui/dialogs/h;

    iget-object v0, v0, Lcom/yelp/android/ui/dialogs/h;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/dialogs/j;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/dialogs/j;-><init>(Lcom/yelp/android/ui/dialogs/i;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 369
    return-void
.end method
