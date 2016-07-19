.class Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$5;
.super Ljava/lang/Object;
.source "FindReservationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 240
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$5;->a:Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment$5;->a:Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;->f(Lcom/yelp/android/ui/activities/reservations/FindReservationFragment;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 245
    return-void
.end method
