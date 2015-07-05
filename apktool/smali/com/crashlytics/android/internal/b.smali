.class public final Lcom/crashlytics/android/internal/b;
.super Lcom/crashlytics/android/internal/by;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/internal/ce;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/crashlytics/android/internal/by;-><init>(Lcom/crashlytics/android/internal/ce;)V

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/crashlytics/android/internal/b;->a:Landroid/os/Handler;

    .line 18
    return-void
.end method
