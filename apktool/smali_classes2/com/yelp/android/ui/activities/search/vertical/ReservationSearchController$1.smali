.class Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController$1;
.super Ljava/lang/Object;
.source "ReservationSearchController.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController$1;->a:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 198
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController$1;->a:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->a(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->a(ILjava/util/Calendar;)Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController$1;->a:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->b(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;)Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->a(Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment$a;)V

    .line 202
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController$1;->a:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "TimePickerDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/TimePickerDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 207
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController$1;->a:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->c(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x14

    const v3, 0x7f08001e

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->a(IIII)Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController$1;->a:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->d(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;)Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$NumberPickerChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->a(Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment$NumberPickerChangedListener;)V

    .line 214
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController$1;->a:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "NumberPickerDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/NumberPickerDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController$1;->a:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->a(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;->a(Ljava/util/Calendar;)Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController$1;->a:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->e(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;)Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;->a(Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment$a;)V

    .line 223
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController$1;->a:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchController;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "DatePickerDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/DatePickerDialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 224
    return-void
.end method
