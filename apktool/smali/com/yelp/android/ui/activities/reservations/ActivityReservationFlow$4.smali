.class Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$4;
.super Ljava/lang/Object;
.source "ActivityReservationFlow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$4;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$4;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->d(Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$4;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->finish()V

    .line 530
    :cond_0
    return-void
.end method
