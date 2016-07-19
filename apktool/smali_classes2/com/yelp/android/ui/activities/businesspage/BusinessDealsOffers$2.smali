.class final enum Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers$2;
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
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;-><init>(Ljava/lang/String;IILcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getSubtitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers$2;->getSubtitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->aJ()Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    const v1, 0x7f080009

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->g()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    const v1, 0x7f080007

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->g()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTintColor()I
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x0

    const/16 v1, 0x60

    const/16 v2, 0xb4

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public getTitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->aJ()Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->a()Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public getTitleColor()I
    .locals 1

    .prologue
    .line 75
    const v0, 0x7f0e0035

    return v0
.end method

.method public shouldShow(Lcom/yelp/android/serializable/YelpBusiness;)Z
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aJ()Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
