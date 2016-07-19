.class Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$2;
.super Ljava/lang/Object;
.source "DeliveryPickupViewController.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/search/vertical/UserEnterAddressView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$2;->a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$2;->a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;)Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/ar;->c(Landroid/view/View;)V

    .line 330
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$2;->a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a()V

    .line 331
    return-void
.end method
