.class public Lcom/yelp/android/services/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->s()Lcom/yelp/android/services/backgroundlocation/a;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/yelp/android/services/backgroundlocation/a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {v0}, Lcom/yelp/android/services/backgroundlocation/a;->a()V

    .line 25
    :cond_0
    return-void
.end method
