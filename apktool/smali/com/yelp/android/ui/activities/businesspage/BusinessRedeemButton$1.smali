.class final enum Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton$1;
.super Lcom/yelp/android/ui/activities/businesspage/BusinessRedeemButton;
.source "BusinessRedeemButton.java"


# direct methods
.method constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 9

    .prologue
    .line 19
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
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getUserDeals()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public passesRequirements(Lcom/yelp/android/serializable/YelpBusiness;)Z
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getUserDeals()Ljava/util/List;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
