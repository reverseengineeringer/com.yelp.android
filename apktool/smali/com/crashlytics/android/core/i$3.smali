.class Lcom/crashlytics/android/core/i$3;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/i;->a(Ljava/util/Map;)V
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
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/crashlytics/android/core/i;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/i;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/crashlytics/android/core/i$3;->b:Lcom/crashlytics/android/core/i;

    iput-object p2, p0, Lcom/crashlytics/android/core/i$3;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 484
    iget-object v0, p0, Lcom/crashlytics/android/core/i$3;->b:Lcom/crashlytics/android/core/i;

    invoke-static {v0}, Lcom/crashlytics/android/core/i;->c(Lcom/crashlytics/android/core/i;)Ljava/lang/String;

    move-result-object v0

    .line 485
    new-instance v1, Lcom/crashlytics/android/core/q;

    iget-object v2, p0, Lcom/crashlytics/android/core/i$3;->b:Lcom/crashlytics/android/core/i;

    invoke-static {v2}, Lcom/crashlytics/android/core/i;->d(Lcom/crashlytics/android/core/i;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/crashlytics/android/core/q;-><init>(Ljava/io/File;)V

    iget-object v2, p0, Lcom/crashlytics/android/core/i$3;->a:Ljava/util/Map;

    invoke-virtual {v1, v0, v2}, Lcom/crashlytics/android/core/q;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 487
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/crashlytics/android/core/i$3;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
