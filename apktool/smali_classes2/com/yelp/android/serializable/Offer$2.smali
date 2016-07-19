.class final Lcom/yelp/android/serializable/Offer$2;
.super Ljava/lang/Object;
.source "Offer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Offer;
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
        "Lcom/yelp/android/serializable/Offer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Offer;Lcom/yelp/android/serializable/Offer;)I
    .locals 2

    .prologue
    .line 215
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Offer;->m()Lcom/yelp/android/serializable/OfferRedemption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/OfferRedemption;->i()Ljava/util/Date;

    move-result-object v0

    .line 216
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Offer;->m()Lcom/yelp/android/serializable/OfferRedemption;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/OfferRedemption;->i()Ljava/util/Date;

    move-result-object v1

    .line 218
    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    .line 219
    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Offer;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Offer;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 222
    :cond_0
    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 211
    check-cast p1, Lcom/yelp/android/serializable/Offer;

    check-cast p2, Lcom/yelp/android/serializable/Offer;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/serializable/Offer$2;->a(Lcom/yelp/android/serializable/Offer;Lcom/yelp/android/serializable/Offer;)I

    move-result v0

    return v0
.end method
