.class Lcom/yelp/android/serializable/ReservationSearchAction$1;
.super Lcom/yelp/android/ui/activities/businesspage/h;
.source "ReservationSearchAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/serializable/ReservationSearchAction;->d()Lcom/yelp/android/ui/activities/businesspage/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/ReservationSearchAction;


# direct methods
.method constructor <init>(Lcom/yelp/android/serializable/ReservationSearchAction;Lcom/yelp/android/serializable/ReservationSearchAction;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/yelp/android/serializable/ReservationSearchAction$1;->a:Lcom/yelp/android/serializable/ReservationSearchAction;

    invoke-direct {p0, p2}, Lcom/yelp/android/ui/activities/businesspage/h;-><init>(Lcom/yelp/android/serializable/ReservationSearchAction;)V

    return-void
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)I
    .locals 1

    .prologue
    .line 82
    const v0, 0x7f020458

    return v0
.end method

.method public shouldShow(Lcom/yelp/android/serializable/YelpBusiness;)Z
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->x()Lcom/yelp/android/serializable/Reservation$Provider;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Reservation$Provider;->NONE:Lcom/yelp/android/serializable/Reservation$Provider;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aF()Lcom/yelp/android/serializable/Reservation;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
