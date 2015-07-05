.class Lcom/yelp/android/ui/activities/deals/ba;
.super Ljava/lang/Object;
.source "PurchaseDealsForm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/az;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/az;)V
    .locals 0

    .prologue
    .line 925
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ba;->a:Lcom/yelp/android/ui/activities/deals/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 929
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ba;->a:Lcom/yelp/android/ui/activities/deals/az;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/deals/az;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x409

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->startActivityForResult(Landroid/content/Intent;I)V

    .line 932
    return-void
.end method
