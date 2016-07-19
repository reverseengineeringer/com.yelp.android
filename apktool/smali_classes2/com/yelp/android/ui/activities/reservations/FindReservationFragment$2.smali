.class Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$2;
.super Ljava/lang/Object;
.source "FindReservationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->g()V
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
    .line 177
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$2;->a:Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$2;->a:Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->b(Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;->a(Ljava/util/Calendar;)Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$2;->a:Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->c(Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;)Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;->a(Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment$a;)V

    .line 183
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$2;->a:Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "datePicker"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 184
    return-void
.end method
