.class Lcom/yelp/android/analytics/adjust/AdjustManager$1;
.super Ljava/lang/Object;
.source "AdjustManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/analytics/adjust/AdjustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/analytics/adjust/AdjustManager;


# direct methods
.method constructor <init>(Lcom/yelp/android/analytics/adjust/AdjustManager;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/yelp/android/analytics/adjust/AdjustManager$1;->a:Lcom/yelp/android/analytics/adjust/AdjustManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 138
    invoke-static {}, Lcom/adjust/sdk/Adjust;->onPause()V

    .line 139
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 133
    invoke-static {}, Lcom/adjust/sdk/Adjust;->onResume()V

    .line 134
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 144
    return-void
.end method
