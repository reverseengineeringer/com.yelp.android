.class final Lcom/yelp/android/serializable/YelpDeal$2;
.super Ljava/lang/Object;
.source "YelpDeal.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/YelpDeal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

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
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/serializable/YelpDeal;)I
    .locals 3

    .prologue
    .line 331
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpDeal;->a()Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v0

    .line 332
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpDeal;->a()Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v1

    .line 334
    sget-object v2, Lcom/yelp/android/serializable/DealPurchase;->a:Ljava/util/Comparator;

    invoke-interface {v2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 328
    check-cast p1, Lcom/yelp/android/serializable/YelpDeal;

    check-cast p2, Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/serializable/YelpDeal$2;->a(Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/serializable/YelpDeal;)I

    move-result v0

    return v0
.end method
