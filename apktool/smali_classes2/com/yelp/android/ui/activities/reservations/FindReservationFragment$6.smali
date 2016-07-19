.class Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$6;
.super Ljava/lang/Object;
.source "FindReservationFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$6;->a:Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Calendar;)V
    .locals 4

    .prologue
    .line 285
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 286
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 287
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 288
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$6;->a:Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->b(Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 289
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$6;->a:Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->b()V

    .line 290
    return-void
.end method
