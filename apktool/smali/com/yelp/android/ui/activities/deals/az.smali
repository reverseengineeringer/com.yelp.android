.class Lcom/yelp/android/ui/activities/deals/az;
.super Ljava/lang/Object;
.source "PurchaseDealsForm.java"

# interfaces
.implements Lcom/yelp/android/ui/widgets/s;


# instance fields
.field protected final a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V
    .locals 0

    .prologue
    .line 911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 912
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/az;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    .line 913
    return-void
.end method


# virtual methods
.method public a(ILcom/yelp/android/ui/widgets/QuantityDropDownView;)V
    .locals 4

    .prologue
    .line 919
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/az;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->o(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Landroid/util/Pair;

    move-result-object v1

    .line 923
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/az;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->p(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/ui/activities/deals/ad;

    move-result-object v2

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v3, v0

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/yelp/android/ui/activities/deals/ad;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/az;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->q(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/ui/panels/ButtonWithIcon;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/deals/ba;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/ba;-><init>(Lcom/yelp/android/ui/activities/deals/az;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/ButtonWithIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 949
    :goto_0
    return-void

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/az;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->q(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/ui/panels/ButtonWithIcon;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/deals/bb;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/bb;-><init>(Lcom/yelp/android/ui/activities/deals/az;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/ButtonWithIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
