.class Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2$1;
.super Ljava/lang/Object;
.source "ActivityReservationFlow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2$1;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2$1;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->d(Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2$1;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$2;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->finish()V

    .line 508
    :goto_0
    return-void

    .line 506
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
