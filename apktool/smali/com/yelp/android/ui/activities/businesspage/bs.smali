.class Lcom/yelp/android/ui/activities/businesspage/bs;
.super Ljava/lang/Object;
.source "BusinessPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

.field final synthetic b:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;)V
    .locals 0

    .prologue
    .line 868
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/bs;->b:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/bs;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 871
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bs;->a:Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/bs;->b:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 872
    return-void
.end method
