.class Lcom/yelp/android/ui/activities/reservations/ReservationDetails$2;
.super Ljava/lang/Object;
.source "ReservationDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
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
    .line 198
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$2;->a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 202
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 203
    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$2;->a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->b(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string/jumbo v1, "provider"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$2;->a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->b(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->ae()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->ReservationCancelConfirm:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 209
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$2;->a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/aj;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$2;->a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->b(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$2;->a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->c(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)Lcom/yelp/android/appdata/webrequests/core/c$a;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/aj;-><init>(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->a(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;Lcom/yelp/android/appdata/webrequests/core/c;)Lcom/yelp/android/appdata/webrequests/core/c;

    .line 212
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$2;->a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$2;->a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->d(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)Lcom/yelp/android/appdata/webrequests/core/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 213
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ReservationDetails$2;->a:Lcom/yelp/android/ui/activities/reservations/ReservationDetails;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reservations/ReservationDetails;->d(Lcom/yelp/android/ui/activities/reservations/ReservationDetails;)Lcom/yelp/android/appdata/webrequests/core/c;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/c;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 214
    return-void
.end method
