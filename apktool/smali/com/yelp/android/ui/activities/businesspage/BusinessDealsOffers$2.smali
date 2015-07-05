.class final enum Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers$2;
.super Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;
.source "BusinessDealsOffers.java"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;-><init>(Ljava/lang/String;IILcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers$1;)V

    return-void
.end method


# virtual methods
.method public getSubtitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getCheckInOffer()Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    const v1, 0x7f0e0009

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->getCheckInsRemaining()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    const v1, 0x7f0e0007

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->getCheckInsRemaining()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getCheckInOffer()Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->getSpan()Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public getTitleColor()I
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f0a0019

    return v0
.end method

.method public shouldShow(Lcom/yelp/android/serializable/YelpBusiness;)Z
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getCheckInOffer()Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->isAwarded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
