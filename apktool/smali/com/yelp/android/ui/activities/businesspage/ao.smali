.class Lcom/yelp/android/ui/activities/businesspage/ao;
.super Landroid/content/BroadcastReceiver;
.source "BusinessPageFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 2182
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ao;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 2185
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    .line 2186
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ao;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->h(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/activities/reviewpage/aw;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/aw;->c(Ljava/util/List;)V

    .line 2187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ao;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->h(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/activities/reviewpage/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/aw;->notifyDataSetChanged()V

    .line 2188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ao;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->i(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/h;->clear()V

    .line 2189
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ao;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->incrementTipCount()V

    .line 2190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ao;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->j(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    .line 2191
    return-void
.end method
