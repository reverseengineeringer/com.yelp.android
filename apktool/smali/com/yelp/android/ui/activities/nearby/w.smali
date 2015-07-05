.class Lcom/yelp/android/ui/activities/nearby/w;
.super Landroid/content/BroadcastReceiver;
.source "NearbyPageFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/w;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 153
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    .line 154
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/w;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Event;->updateEventObjectInList(Ljava/util/List;)V

    .line 155
    return-void
.end method
