.class Lcom/yelp/android/ui/activities/businesspage/ap;
.super Landroid/content/BroadcastReceiver;
.source "BusinessPageFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 2197
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ap;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 2200
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    .line 2201
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ap;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->h(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/activities/reviewpage/aw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/aw;->a(Lcom/yelp/android/serializable/Tip;)V

    .line 2202
    return-void
.end method
