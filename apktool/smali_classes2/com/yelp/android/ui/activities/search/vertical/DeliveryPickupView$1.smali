.class Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$1;
.super Ljava/lang/Object;
.source "DeliveryPickupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->a(Lcom/yelp/android/serializable/PlatformDeliveryAddress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->a(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;)Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$a;->c()V

    .line 95
    return-void
.end method
