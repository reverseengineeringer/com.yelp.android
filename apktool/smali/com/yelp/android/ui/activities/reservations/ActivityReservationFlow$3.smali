.class Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$3;
.super Ljava/lang/Object;
.source "ActivityReservationFlow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 515
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$3;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 518
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 519
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow$3;->a:Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reservations/ActivityReservationFlow;->finish()V

    .line 520
    return-void
.end method
