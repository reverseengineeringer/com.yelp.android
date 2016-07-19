.class Lcom/crashlytics/android/core/i$4;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/i;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/core/i;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/i;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/crashlytics/android/core/i$4;->a:Lcom/crashlytics/android/core/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 503
    iget-object v0, p0, Lcom/crashlytics/android/core/i$4;->a:Lcom/crashlytics/android/core/i;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/i;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/crashlytics/android/core/i$4;->a:Lcom/crashlytics/android/core/i;

    invoke-static {v0}, Lcom/crashlytics/android/core/i;->e(Lcom/crashlytics/android/core/i;)V

    .line 508
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/core/i$4;->a:Lcom/crashlytics/android/core/i;

    invoke-static {v0}, Lcom/crashlytics/android/core/i;->b(Lcom/crashlytics/android/core/i;)Lcom/crashlytics/android/core/p;

    move-result-object v0

    iget-object v1, p0, Lcom/crashlytics/android/core/i$4;->a:Lcom/crashlytics/android/core/i;

    invoke-static {v1}, Lcom/crashlytics/android/core/i;->c(Lcom/crashlytics/android/core/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/p;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/crashlytics/android/core/i$4;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
