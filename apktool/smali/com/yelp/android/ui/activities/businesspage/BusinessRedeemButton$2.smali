.class final enum Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton$2;
.super Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;
.source "BusinessRedeemButton.java"


# direct methods
.method constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 9

    .prologue
    .line 35
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;-><init>(Ljava/lang/String;IIIIIZLcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton$1;)V

    return-void
.end method


# virtual methods
.method public getSubtitle(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getCheckInOffer()Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->getOfferText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public passesRequirements(Lcom/yelp/android/serializable/YelpBusiness;)Z
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getCheckInOffer()Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->isAwarded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
