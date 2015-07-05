.class Lcom/yelp/android/ui/activities/businesspage/an;
.super Landroid/content/BroadcastReceiver;
.source "BusinessPageFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 2161
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/an;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 2164
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReservationChangeEvent;

    .line 2165
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReservationChangeEvent;->getReservation()Lcom/yelp/android/serializable/Reservation;

    move-result-object v1

    .line 2166
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReservationChangeEvent;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    .line 2171
    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpBusiness;->setReservation(Lcom/yelp/android/serializable/Reservation;)V

    .line 2172
    invoke-static {p1, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 2174
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2175
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2176
    return-void
.end method
