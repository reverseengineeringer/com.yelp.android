.class final Lcom/yelp/android/ui/activities/deals/u;
.super Ljava/lang/Object;
.source "ActivityUsedDealsAndOffers.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/deals/t;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/u;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 161
    instance-of v0, p1, Lcom/yelp/android/serializable/YelpDeal;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/yelp/android/serializable/Offer;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/Object;)J
    .locals 2

    .prologue
    .line 165
    instance-of v0, p1, Lcom/yelp/android/serializable/YelpDeal;

    if-eqz v0, :cond_0

    .line 166
    check-cast p1, Lcom/yelp/android/serializable/YelpDeal;

    sget-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->REDEEMED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/YelpDeal;->getFirstPurchaseByStatus(Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;)Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DealPurchase;->getRedeemedTimeMillis()J

    move-result-wide v0

    .line 169
    :goto_0
    return-wide v0

    :cond_0
    check-cast p1, Lcom/yelp/android/serializable/Offer;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Offer;->getRedemption()Lcom/yelp/android/serializable/OfferRedemption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/OfferRedemption;->getDateRedeemed()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method private d(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    instance-of v0, p1, Lcom/yelp/android/serializable/YelpDeal;

    if-eqz v0, :cond_0

    .line 175
    check-cast p1, Lcom/yelp/android/serializable/YelpDeal;

    .line 176
    sget-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->REDEEMED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/YelpDeal;->getFirstPurchaseByStatus(Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;)Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DealPurchase;->getRedemptionTitle()Ljava/lang/String;

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    :cond_0
    check-cast p1, Lcom/yelp/android/serializable/Offer;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Offer;->getPromoText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    instance-of v0, p1, Lcom/yelp/android/serializable/YelpDeal;

    if-eqz v0, :cond_0

    .line 184
    check-cast p1, Lcom/yelp/android/serializable/YelpDeal;

    .line 185
    sget-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->REDEEMED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/YelpDeal;->getFirstPurchaseByStatus(Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;)Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DealPurchase;->getId()Ljava/lang/String;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    check-cast p1, Lcom/yelp/android/serializable/Offer;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Offer;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 147
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/deals/u;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/deals/u;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Only YelpDeals and Offers can be compared here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/deals/u;->c(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/deals/u;->c(Ljava/lang/Object;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 151
    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    .line 152
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/deals/u;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/deals/u;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 154
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    .line 155
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/deals/u;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/deals/u;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 157
    :cond_3
    long-to-int v0, v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
