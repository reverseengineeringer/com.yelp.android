.class Lcom/yelp/android/serializable/cl;
.super Lcom/yelp/android/ui/activities/businesspage/cf;
.source "ReservationSearchAction.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/ReservationSearchAction;


# direct methods
.method constructor <init>(Lcom/yelp/android/serializable/ReservationSearchAction;Lcom/yelp/android/serializable/SearchAction;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/yelp/android/serializable/cl;->a:Lcom/yelp/android/serializable/ReservationSearchAction;

    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/businesspage/cf;-><init>(Lcom/yelp/android/serializable/SearchAction;)V

    return-void
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)I
    .locals 1

    .prologue
    .line 48
    const v0, 0x7f02031e

    return v0
.end method

.method public getTitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 53
    const v0, 0x7f07036e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldShow(Lcom/yelp/android/serializable/YelpBusiness;)Z
    .locals 2

    .prologue
    .line 42
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
