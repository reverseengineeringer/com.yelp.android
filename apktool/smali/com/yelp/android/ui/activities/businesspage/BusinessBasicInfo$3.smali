.class final enum Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$3;
.super Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;
.source "BusinessBasicInfo.java"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;-><init>(Ljava/lang/String;IILcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo$1;)V

    return-void
.end method


# virtual methods
.method public getSubtitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 80
    const v0, 0x7f07036e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldShow(Lcom/yelp/android/serializable/YelpBusiness;)Z
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getReservationProvider()Lcom/yelp/android/serializable/Reservation$Provider;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Reservation$Provider;->NONE:Lcom/yelp/android/serializable/Reservation$Provider;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getReservation()Lcom/yelp/android/serializable/Reservation;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
