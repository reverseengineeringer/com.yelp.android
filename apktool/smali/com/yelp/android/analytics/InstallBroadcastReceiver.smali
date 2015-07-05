.class public Lcom/yelp/android/analytics/InstallBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/adjust/sdk/ReferrerReceiver;

    invoke-direct {v0}, Lcom/adjust/sdk/ReferrerReceiver;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/adjust/sdk/ReferrerReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 23
    new-instance v0, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 24
    return-void
.end method
