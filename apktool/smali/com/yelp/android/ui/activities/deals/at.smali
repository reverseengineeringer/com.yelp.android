.class Lcom/yelp/android/ui/activities/deals/at;
.super Ljava/lang/Object;
.source "PurchaseDealsForm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/at;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/at;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a:Ljava/lang/String;

    .line 333
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/at;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    .line 334
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/at;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->c(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDeal;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealDetail;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 336
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 337
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 338
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 339
    return-void
.end method
