.class Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$d$1;
.super Ljava/lang/Object;
.source "BusinessPageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$d;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$d;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$d;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 4679
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$d$1;->b:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$d;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$d$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 4682
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$d$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$d$1;->b:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$d;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$d;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/k;->a()Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$d$1;->b:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$d;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$d;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->A(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/k;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/yelp/android/ui/util/k;->a(I)Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/serializable/DealPurchase;)Landroid/content/Intent;

    move-result-object v0

    .line 4687
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$d$1;->b:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$d;

    const/16 v2, 0x3f9

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$d;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4688
    return-void
.end method
