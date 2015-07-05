.class Lcom/yelp/android/ui/activities/reservations/a;
.super Ljava/lang/Object;
.source "ChooseReservation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reservations/ChooseReservation;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reservations/ChooseReservation;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/a;->a:Lcom/yelp/android/ui/activities/reservations/ChooseReservation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 101
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/a;->a:Lcom/yelp/android/ui/activities/reservations/ChooseReservation;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->a(Lcom/yelp/android/ui/activities/reservations/ChooseReservation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/a;->a:Lcom/yelp/android/ui/activities/reservations/ChooseReservation;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reservations/ChooseReservation;->finish()V

    .line 105
    :cond_0
    return-void
.end method
