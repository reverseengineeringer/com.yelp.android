.class Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$22;
.super Landroid/content/BroadcastReceiver;
.source "BusinessPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 3179
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$22;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 3182
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReservationChangeEvent;

    .line 3183
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReservationChangeEvent;->b()Lcom/yelp/android/serializable/Reservation;

    move-result-object v1

    .line 3184
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReservationChangeEvent;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    .line 3189
    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpBusiness;->a(Lcom/yelp/android/serializable/Reservation;)V

    .line 3190
    invoke-static {p1, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 3192
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3193
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3194
    return-void
.end method
