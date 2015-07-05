.class final Lcom/crashlytics/android/internal/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private synthetic a:Lcom/crashlytics/android/internal/cm;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/internal/cm;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/crashlytics/android/internal/cn;->a:Lcom/crashlytics/android/internal/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/crashlytics/android/internal/cn;->a:Lcom/crashlytics/android/internal/cm;

    iget-object v0, v0, Lcom/crashlytics/android/internal/cm;->a:Lcom/crashlytics/android/internal/cl;

    invoke-static {v0, p1}, Lcom/crashlytics/android/internal/cl;->a(Lcom/crashlytics/android/internal/cl;Landroid/app/Activity;)Lcom/crashlytics/android/internal/cl;

    .line 310
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/crashlytics/android/internal/cn;->a:Lcom/crashlytics/android/internal/cm;

    iget-object v0, v0, Lcom/crashlytics/android/internal/cm;->a:Lcom/crashlytics/android/internal/cl;

    invoke-static {v0, p1}, Lcom/crashlytics/android/internal/cl;->a(Lcom/crashlytics/android/internal/cl;Landroid/app/Activity;)Lcom/crashlytics/android/internal/cl;

    .line 320
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/crashlytics/android/internal/cn;->a:Lcom/crashlytics/android/internal/cm;

    iget-object v0, v0, Lcom/crashlytics/android/internal/cm;->a:Lcom/crashlytics/android/internal/cl;

    invoke-static {v0, p1}, Lcom/crashlytics/android/internal/cl;->a(Lcom/crashlytics/android/internal/cl;Landroid/app/Activity;)Lcom/crashlytics/android/internal/cl;

    .line 315
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 326
    return-void
.end method
