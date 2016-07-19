.class Lcom/yelp/android/ui/activities/events/EventFragment$9;
.super Ljava/lang/Object;
.source "EventFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/c$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/events/EventFragment;->b(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/EventFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V
    .locals 0

    .prologue
    .line 553
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventFragment$9;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment$9;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->b(Lcom/yelp/android/ui/activities/events/EventFragment;)Lcom/google/android/gms/maps/c$e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/c$e;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 557
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment$9;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->c(Lcom/yelp/android/ui/activities/events/EventFragment;)Lcom/yelp/android/ui/map/YelpMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/map/YelpMap;->getLastMarker()Lcom/google/android/gms/maps/model/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/c;->c()V

    .line 558
    return-void
.end method
