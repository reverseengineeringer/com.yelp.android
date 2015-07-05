.class final enum Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers$1;
.super Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;
.source "BusinessDealsOffers.java"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;-><init>(Ljava/lang/String;IILcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers$1;)V

    return-void
.end method


# virtual methods
.method public getSubtitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getDeal()Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleColor()I
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f0a008b

    return v0
.end method

.method public shouldShow(Lcom/yelp/android/serializable/YelpBusiness;)Z
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getDeal()Lcom/yelp/android/serializable/YelpDeal;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
