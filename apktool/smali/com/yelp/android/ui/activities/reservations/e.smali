.class Lcom/yelp/android/ui/activities/reservations/e;
.super Ljava/lang/Object;
.source "FindReservation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reservations/FindReservation;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reservations/FindReservation;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/e;->a:Lcom/yelp/android/ui/activities/reservations/FindReservation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/e;->a:Lcom/yelp/android/ui/activities/reservations/FindReservation;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->c(Lcom/yelp/android/ui/activities/reservations/FindReservation;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 369
    return-void
.end method