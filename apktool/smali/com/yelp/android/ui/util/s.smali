.class public Lcom/yelp/android/ui/util/s;
.super Landroid/widget/BaseAdapter;
.source "DealPurchaseAdapter.java"


# instance fields
.field private a:Lcom/yelp/android/serializable/YelpDeal;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/DealPurchase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public a(I)Lcom/yelp/android/serializable/DealPurchase;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yelp/android/ui/util/s;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DealPurchase;

    return-object v0
.end method

.method public a()Lcom/yelp/android/serializable/YelpDeal;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/util/s;->a:Lcom/yelp/android/serializable/YelpDeal;

    return-object v0
.end method

.method public a(Lcom/yelp/android/serializable/YelpDeal;Z)V
    .locals 1

    .prologue
    .line 45
    iput-object p1, p0, Lcom/yelp/android/ui/util/s;->a:Lcom/yelp/android/serializable/YelpDeal;

    .line 46
    if-nez p2, :cond_1

    .line 47
    sget-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->REDEEMED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/YelpDeal;->getPurchasesByStatus(Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/s;->b:Ljava/util/List;

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/util/s;->a:Lcom/yelp/android/serializable/YelpDeal;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpDeal;->getUsablePurchases()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/s;->b:Ljava/util/List;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/util/s;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/s;->a(I)Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 75
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 55
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 56
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03013b

    invoke-virtual {v0, v1, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 58
    new-instance v0, Lcom/yelp/android/ui/util/t;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/util/t;-><init>(Landroid/view/View;)V

    .line 59
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/t;

    .line 62
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/s;->a(I)Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v1

    .line 64
    iget-object v2, v0, Lcom/yelp/android/ui/util/t;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0704c5

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/DealPurchase;->getRedemptionCode()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v2, v0, Lcom/yelp/android/ui/util/t;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0701e8

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/DealPurchase;->getCustomerName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, v0, Lcom/yelp/android/ui/util/t;->c:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/util/s;->a:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/serializable/DealPurchase;->getRedemptionTitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpDeal;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method
