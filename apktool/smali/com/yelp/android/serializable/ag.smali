.class final Lcom/yelp/android/serializable/ag;
.super Ljava/lang/Object;
.source "DealPurchase.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/yelp/android/serializable/DealPurchase;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/DealPurchase;Lcom/yelp/android/serializable/DealPurchase;)I
    .locals 4

    .prologue
    .line 154
    iget-wide v0, p1, Lcom/yelp/android/serializable/DealPurchase;->mTimeRedeemed:J

    iget-wide v2, p2, Lcom/yelp/android/serializable/DealPurchase;->mTimeRedeemed:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 155
    const/4 v0, -0x1

    .line 159
    :goto_0
    return v0

    .line 156
    :cond_0
    iget-wide v0, p1, Lcom/yelp/android/serializable/DealPurchase;->mTimeRedeemed:J

    iget-wide v2, p2, Lcom/yelp/android/serializable/DealPurchase;->mTimeRedeemed:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 157
    const/4 v0, 0x1

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/DealPurchase;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/DealPurchase;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 150
    check-cast p1, Lcom/yelp/android/serializable/DealPurchase;

    check-cast p2, Lcom/yelp/android/serializable/DealPurchase;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/serializable/ag;->a(Lcom/yelp/android/serializable/DealPurchase;Lcom/yelp/android/serializable/DealPurchase;)I

    move-result v0

    return v0
.end method
