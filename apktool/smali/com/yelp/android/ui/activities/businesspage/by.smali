.class Lcom/yelp/android/ui/activities/businesspage/by;
.super Ljava/lang/Object;
.source "BusinessPageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/yelp/android/ui/activities/businesspage/bx;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/bx;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 3346
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/by;->b:Lcom/yelp/android/ui/activities/businesspage/bx;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/by;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 3350
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/by;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/by;->b:Lcom/yelp/android/ui/activities/businesspage/bx;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/businesspage/bx;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->v(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/s;->a()Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/by;->b:Lcom/yelp/android/ui/activities/businesspage/bx;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/businesspage/bx;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->v(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/s;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/yelp/android/ui/util/s;->a(I)Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/serializable/DealPurchase;)Landroid/content/Intent;

    move-result-object v0

    .line 3354
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/by;->b:Lcom/yelp/android/ui/activities/businesspage/bx;

    const/16 v2, 0x3f5

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/businesspage/bx;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3356
    return-void
.end method
