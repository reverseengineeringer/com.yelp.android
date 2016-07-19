.class final enum Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton$2;
.super Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;
.source "BusinessRedeemButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 9

    .prologue
    .line 34
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
    .line 48
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aJ()Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public passesRequirements(Lcom/yelp/android/serializable/YelpBusiness;)Z
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aJ()Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
