.class Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2;
.super Ljava/lang/Object;
.source "ActivityReservationFlow.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;
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
        "Lcom/yelp/android/serializable/ReservationLeaseResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/ReservationLeaseResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/ReservationLeaseResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->hideLoadingDialog()V

    .line 481
    invoke-virtual {p2}, Lcom/yelp/android/serializable/ReservationLeaseResponse;->d()Lcom/yelp/android/serializable/Reservation;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/ReservationLeaseResponse;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/serializable/ReservationLeaseResponse;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/yelp/android/serializable/ReservationLeaseResponse;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->a(Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->a(Lcom/yelp/android/serializable/Reservation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;

    move-result-object v0

    .line 488
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v1

    const v2, 0x7f0f020d

    const-string/jumbo v3, "confirm_reservation"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 493
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->ReservationConfirmation:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->a(Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;Lcom/yelp/android/analytics/iris/ViewIri;)Lcom/yelp/android/analytics/iris/ViewIri;

    .line 494
    return-void
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
    .line 498
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->hideLoadingDialog()V

    .line 499
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    new-instance v1, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2$1;-><init>(Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 510
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)Z

    .line 511
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 475
    check-cast p2, Lcom/yelp/android/serializable/ReservationLeaseResponse;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/ReservationLeaseResponse;)V

    return-void
.end method
