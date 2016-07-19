.class Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$1;
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
        "Lcom/yelp/android/appdata/webrequests/by$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$1;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/by$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/by$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 438
    check-cast p1, Lcom/yelp/android/appdata/webrequests/by;

    .line 439
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/by$a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$1;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->hideLoadingDialog()V

    .line 441
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$1;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->a(Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->ao()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/CallNumberDialog;->a(Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/CallNumberDialog;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$1;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->b(Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/CallNumberDialog;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 444
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$1;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "call_number_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/CallNumberDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/by;->b()Ljava/util/Date;

    move-result-object v0

    .line 449
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$1;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-virtual {v1, v0, p2}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->a(Ljava/util/Date;Lcom/yelp/android/appdata/webrequests/by$a;)Z

    move-result v0

    .line 450
    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$1;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->hideLoadingDialog()V

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 4
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
    const/4 v3, 0x0

    .line 458
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$1;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->hideLoadingDialog()V

    .line 459
    instance-of v0, p2, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-nez v0, :cond_1

    .line 460
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 461
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$1;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->finish()V

    .line 471
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p2

    .line 465
    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiException;

    .line 466
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$1;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$1;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->c(Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 467
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$1;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 469
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$1;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->finish()V

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 434
    check-cast p2, Lcom/yelp/android/appdata/webrequests/by$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/by$a;)V

    return-void
.end method
