.class Lcom/yelp/android/ui/activities/deals/ay;
.super Lcom/yelp/android/ui/activities/deals/az;
.source "PurchaseDealsForm.java"

# interfaces
.implements Lcom/yelp/android/ui/widgets/s;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V
    .locals 0

    .prologue
    .line 957
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/deals/az;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    .line 958
    return-void
.end method


# virtual methods
.method public a(ILcom/yelp/android/ui/widgets/QuantityDropDownView;)V
    .locals 4

    .prologue
    .line 963
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/deals/az;->a(ILcom/yelp/android/ui/widgets/QuantityDropDownView;)V

    .line 964
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ay;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    move-result-object v2

    .line 965
    const/4 v0, 0x0

    .line 966
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ay;->a:Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->r(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/be;

    .line 967
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/be;->getQuantity()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 968
    goto :goto_0

    .line 969
    :cond_0
    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setQuantity(I)V

    .line 970
    return-void
.end method
