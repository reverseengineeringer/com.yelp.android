.class Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$4;
.super Ljava/lang/Object;
.source "FindReservationFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->i()V
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
    .line 224
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$4;->a:Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;

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
    .line 229
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$4;->a:Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->e(Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$4;->a:Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->a(Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;I)I

    .line 231
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
    .line 236
    return-void
.end method
