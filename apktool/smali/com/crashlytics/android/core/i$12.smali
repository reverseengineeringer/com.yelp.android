.class Lcom/crashlytics/android/core/i$12;
.super Landroid/content/BroadcastReceiver;
.source "CrashlyticsUncaughtExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/i;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/crashlytics/android/core/g;Lcom/crashlytics/android/core/f;Lio/fabric/sdk/android/services/common/IdManager;Lcom/crashlytics/android/core/w;Lcom/crashlytics/android/core/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/core/i;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/i;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/crashlytics/android/core/i$12;->a:Lcom/crashlytics/android/core/i;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/crashlytics/android/core/i$12;->a:Lcom/crashlytics/android/core/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/crashlytics/android/core/i;->a(Lcom/crashlytics/android/core/i;Z)Z

    .line 233
    return-void
.end method
