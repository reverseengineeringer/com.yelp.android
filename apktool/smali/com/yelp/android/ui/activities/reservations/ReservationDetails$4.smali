.class Lcom/yelp/android/ui/activities/reservations/ReservationDetails$4;
.super Ljava/lang/Object;
.source "ReservationDetails.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reservations/ReservationDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$4;->a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 298
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$4;->a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;

    .line 299
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$4;->a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->b(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aF()Lcom/yelp/android/serializable/Reservation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$4;->a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$4;->a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$4;->a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->b(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->startActivity(Landroid/content/Intent;)V

    .line 317
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$4;->a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->finish()V

    .line 318
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$4;->a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)V

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$4;->a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;

    invoke-static {p2}, Lcom/yelp/android/util/ErrorType;->getTypeFromException(Lcom/yelp/android/appdata/webrequests/YelpException;)Lcom/yelp/android/util/ErrorType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/util/ErrorType;->getTextId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 286
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$4;->a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->finish()V

    .line 287
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 279
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$4;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method
