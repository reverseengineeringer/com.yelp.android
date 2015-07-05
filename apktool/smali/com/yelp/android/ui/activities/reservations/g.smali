.class final Lcom/yelp/android/ui/activities/reservations/g;
.super Ljava/lang/Object;
.source "FindReservation.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Ljava/util/Calendar;

.field final b:Ljava/text/DateFormat;

.field private final c:Lcom/yelp/android/ui/activities/reservations/FindReservation;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/reservations/FindReservation;Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/g;->c:Lcom/yelp/android/ui/activities/reservations/FindReservation;

    .line 441
    iput-object p2, p0, Lcom/yelp/android/ui/activities/reservations/g;->a:Ljava/util/Calendar;

    .line 442
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/text/SimpleDateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/serializable/Reservation;->getDatestampForDisplay(Ljava/text/DateFormat;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reservations/g;->b:Ljava/text/DateFormat;

    .line 444
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 460
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/g;->c:Lcom/yelp/android/ui/activities/reservations/FindReservation;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->d(Lcom/yelp/android/ui/activities/reservations/FindReservation;)Landroid/widget/Button;

    move-result-object v0

    .line 461
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reservations/g;->b:Ljava/text/DateFormat;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reservations/g;->a:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 462
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/g;->c:Lcom/yelp/android/ui/activities/reservations/FindReservation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->showDialog(I)V

    .line 450
    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/g;->a:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 455
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/g;->a:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 456
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reservations/g;->a()V

    .line 457
    return-void
.end method
