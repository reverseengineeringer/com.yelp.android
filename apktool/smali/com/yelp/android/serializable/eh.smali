.class final Lcom/yelp/android/serializable/eh;
.super Ljava/lang/Object;
.source "YelpDeal.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/yelp/android/serializable/YelpDeal;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/serializable/YelpDeal;)I
    .locals 3

    .prologue
    .line 318
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpDeal;->getFirstUsablePurchase()Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v0

    .line 319
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpDeal;->getFirstUsablePurchase()Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v1

    .line 321
    sget-object v2, Lcom/yelp/android/serializable/DealPurchase;->COMPARATOR_TIME_EXPIRED:Ljava/util/Comparator;

    invoke-interface {v2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 315
    check-cast p1, Lcom/yelp/android/serializable/YelpDeal;

    check-cast p2, Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/serializable/eh;->a(Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/serializable/YelpDeal;)I

    move-result v0

    return v0
.end method
