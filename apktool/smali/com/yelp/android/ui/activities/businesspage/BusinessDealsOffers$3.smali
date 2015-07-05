.class final enum Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers$3;
.super Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;
.source "BusinessDealsOffers.java"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;-><init>(Ljava/lang/String;IILcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers$1;)V

    return-void
.end method


# virtual methods
.method public getSubtitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getCallToAction()Lcom/yelp/android/serializable/CallToAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/CallToAction;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getCallToAction()Lcom/yelp/android/serializable/CallToAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/CallToAction;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleColor()I
    .locals 1

    .prologue
    .line 102
    const v0, 0x7f0a009c

    return v0
.end method

.method public shouldShow(Lcom/yelp/android/serializable/YelpBusiness;)Z
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getCallToAction()Lcom/yelp/android/serializable/CallToAction;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    .line 83
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 84
    const-string/jumbo v1, "business_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string/jumbo v1, "call_to_action_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getCallToAction()Lcom/yelp/android/serializable/CallToAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/CallToAction;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->CallToActionBusinessShown:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 87
    const/4 v0, 0x1

    goto :goto_0
.end method
