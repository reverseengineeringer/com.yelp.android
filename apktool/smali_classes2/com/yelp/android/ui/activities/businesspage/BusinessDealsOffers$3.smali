.class final enum Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers$3;
.super Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;
.source "BusinessDealsOffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;-><init>(Ljava/lang/String;IILcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getSubtitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers$3;->getSubtitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->bb()Lcom/yelp/android/serializable/CallToAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/CallToAction;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTintColor()I
    .locals 3

    .prologue
    .line 116
    const/16 v0, 0xfb

    const/16 v1, 0x90

    const/16 v2, 0x37

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public getTitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->bb()Lcom/yelp/android/serializable/CallToAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/CallToAction;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitleColor()I
    .locals 1

    .prologue
    .line 110
    const v0, 0x7f0e00e2

    return v0
.end method

.method public shouldShow(Lcom/yelp/android/serializable/YelpBusiness;)Z
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->bb()Lcom/yelp/android/serializable/CallToAction;

    move-result-object v0

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    .line 91
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 92
    const-string/jumbo v1, "business_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string/jumbo v1, "call_to_action_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->bb()Lcom/yelp/android/serializable/CallToAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/CallToAction;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->CallToActionBusinessShown:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 95
    const/4 v0, 0x1

    goto :goto_0
.end method
