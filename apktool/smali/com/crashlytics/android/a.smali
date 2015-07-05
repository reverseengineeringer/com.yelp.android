.class final Lcom/crashlytics/android/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
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
.field private synthetic a:Lcom/crashlytics/android/bb;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/bb;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/crashlytics/android/a;->a:Lcom/crashlytics/android/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 448
    iget-object v0, p0, Lcom/crashlytics/android/a;->a:Lcom/crashlytics/android/bb;

    invoke-static {v0}, Lcom/crashlytics/android/bb;->f(Lcom/crashlytics/android/bb;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    invoke-static {}, Lcom/crashlytics/android/internal/cl;->a()Lcom/crashlytics/android/internal/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/cl;->b()Lcom/crashlytics/android/internal/ci;

    move-result-object v0

    const-string/jumbo v1, "Crashlytics"

    const-string/jumbo v2, "Initialization marker file created."

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/internal/ci;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method
