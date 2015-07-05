.class public Lcom/yelp/android/services/push/AppUpdatedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppUpdatedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Lcom/yelp/android/services/push/d;->b()Lcom/yelp/android/services/push/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/services/push/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-static {}, Lcom/yelp/android/services/push/d;->b()Lcom/yelp/android/services/push/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/services/push/d;->c()V

    .line 14
    :cond_0
    return-void
.end method
