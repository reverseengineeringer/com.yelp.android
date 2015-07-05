.class Lcom/yelp/android/ui/activities/deals/ap;
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
    .line 824
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ap;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 828
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ap;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->m(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    .line 829
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ap;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    const/16 v2, 0x40c

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->startActivityForResult(Landroid/content/Intent;I)V

    .line 830
    return-void
.end method
