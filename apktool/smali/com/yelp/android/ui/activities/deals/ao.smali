.class Lcom/yelp/android/ui/activities/deals/ao;
.super Ljava/lang/Object;
.source "PurchaseDealsForm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V
    .locals 0

    .prologue
    .line 807
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ao;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 811
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ao;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ao;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x40c

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->startActivityForResult(Landroid/content/Intent;I)V

    .line 814
    return-void
.end method
