.class Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "NearbyPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$1;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 214
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    .line 215
    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$1;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Event;->a(Ljava/util/List;)V

    .line 216
    return-void
.end method
