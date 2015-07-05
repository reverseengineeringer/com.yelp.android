.class Lcom/yelp/android/ui/activities/businesspage/av;
.super Landroid/content/BroadcastReceiver;
.source "BusinessPageFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 2304
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/av;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 2307
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/av;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->p(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ax;->f()V

    .line 2308
    return-void
.end method
