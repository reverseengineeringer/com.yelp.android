.class Lcom/yelp/android/ui/activities/events/i;
.super Ljava/lang/Object;
.source "EventFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/EventFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V
    .locals 0

    .prologue
    .line 932
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/i;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 3

    .prologue
    .line 936
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/i;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/ui/activities/events/EventFragment;)Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->hasBusiness()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/i;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/i;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/i;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/ui/activities/events/EventFragment;)Lcom/yelp/android/serializable/Event;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/ActivityMapSingleBusiness;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->startActivity(Landroid/content/Intent;)V

    .line 942
    :goto_0
    return-void

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/i;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/i;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/i;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/ui/activities/events/EventFragment;)Lcom/yelp/android/serializable/Event;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/events/ActivityMapForEvent;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Event;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
