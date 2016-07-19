.class Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$4;
.super Ljava/lang/Object;
.source "DeliveryPickupView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/Space;

.field final synthetic b:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;Landroid/widget/Space;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$4;->b:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$4;->a:Landroid/widget/Space;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$4;->a:Landroid/widget/Space;

    invoke-virtual {v0}, Landroid/widget/Space;->getWidth()I

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$4;->b:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->b(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    .line 174
    if-le v1, v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$4;->a:Landroid/widget/Space;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$4;->b:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->a(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;)Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$a;->b()V

    .line 179
    return-void
.end method
