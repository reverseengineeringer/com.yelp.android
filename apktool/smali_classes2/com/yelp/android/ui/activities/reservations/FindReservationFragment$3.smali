.class Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$3;
.super Ljava/lang/Object;
.source "FindReservationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->h()V
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
    .line 192
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$3;->a:Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 195
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$3;->a:Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->b(Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->a(ILjava/util/Calendar;)Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$3;->a:Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->d(Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;)Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->a(Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment$a;)V

    .line 198
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$3;->a:Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "timePicker"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 199
    return-void
.end method
