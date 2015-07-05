.class final Lcom/yelp/android/ui/activities/reservations/f;
.super Ljava/lang/Object;
.source "FindReservation.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final a:Lcom/yelp/android/ui/activities/reservations/FindReservation;

.field b:Ljava/util/Calendar;

.field final c:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/reservations/FindReservation;Ljava/util/Calendar;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/f;->a:Lcom/yelp/android/ui/activities/reservations/FindReservation;

    .line 474
    iput-object p2, p0, Lcom/yelp/android/ui/activities/reservations/f;->b:Ljava/util/Calendar;

    .line 476
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string/jumbo v1, "EE, MMM d"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/Reservation;->getDatestampForDisplay(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/f;->c:Ljava/text/DateFormat;

    .line 484
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/f;->a:Lcom/yelp/android/ui/activities/reservations/FindReservation;

    const v1, 0x7f0701eb

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/Reservation;->getDatestampForDisplay(Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/f;->c:Ljava/text/DateFormat;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 504
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/f;->b:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/f;->a:Lcom/yelp/android/ui/activities/reservations/FindReservation;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->e(Lcom/yelp/android/ui/activities/reservations/FindReservation;)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/f;->c:Ljava/text/DateFormat;

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 506
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/f;->a:Lcom/yelp/android/ui/activities/reservations/FindReservation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->showDialog(I)V

    .line 490
    return-void
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/f;->b:Ljava/util/Calendar;

    .line 496
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 497
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 498
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 500
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/f;->a()V

    .line 501
    return-void
.end method
