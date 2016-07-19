.class Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$5;
.super Ljava/lang/Object;
.source "ActivityReservationFlow.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/support/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$5;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 537
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$5;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->d(Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$5;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->finish()V

    .line 540
    :cond_0
    return-void
.end method
