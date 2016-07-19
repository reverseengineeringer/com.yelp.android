.class Lcom/yelp/android/ui/activities/reservations/ReservationDetails$3;
.super Ljava/lang/Object;
.source "ReservationDetails.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reservations/ReservationDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$3;->a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$3;->a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->e(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)V

    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$3;->a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->finish()V

    .line 275
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
    .line 266
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$3;->a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->hideLoadingDialog()V

    .line 267
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$3;->a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->finish()V

    .line 269
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 262
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$3;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
