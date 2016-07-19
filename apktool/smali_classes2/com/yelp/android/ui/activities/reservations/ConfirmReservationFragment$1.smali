.class Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment$1;
.super Ljava/lang/Object;
.source "ConfirmReservationFragment.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;
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
        "Lcom/yelp/android/serializable/Reservation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment$1;->a:Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Reservation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/Reservation;",
            ")V"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment$1;->a:Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->a(Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;)V

    .line 336
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment$1;->a:Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->b(Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;)Lcom/yelp/android/ui/activities/reservations/b;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/yelp/android/ui/activities/reservations/b;->b(Lcom/yelp/android/serializable/Reservation;)V

    .line 337
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1
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
    .line 341
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment$1;->a:Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)Z

    .line 342
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment$1;->a:Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;->c(Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment;)V

    .line 343
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 332
    check-cast p2, Lcom/yelp/android/serializable/Reservation;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reservations/ConfirmReservationFragment$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Reservation;)V

    return-void
.end method
