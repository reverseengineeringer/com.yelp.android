.class Lcom/yelp/android/ui/activities/reservations/d;
.super Ljava/lang/Object;
.source "FindReservation.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reservations/FindReservation;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reservations/FindReservation;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/d;->a:Lcom/yelp/android/ui/activities/reservations/FindReservation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/d;->a:Lcom/yelp/android/ui/activities/reservations/FindReservation;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reservations/FindReservation;->b(Lcom/yelp/android/ui/activities/reservations/FindReservation;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 356
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 361
    return-void
.end method
