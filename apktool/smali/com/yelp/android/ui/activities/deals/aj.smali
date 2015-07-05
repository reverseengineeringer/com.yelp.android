.class Lcom/yelp/android/ui/activities/deals/aj;
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
    .line 257
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/aj;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/aj;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->requestFocusFromTouch()Z

    .line 262
    return-void
.end method
