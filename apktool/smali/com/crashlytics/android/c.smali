.class final Lcom/crashlytics/android/c;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/crashlytics/android/bb;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/bb;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/crashlytics/android/c;->a:Lcom/crashlytics/android/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/crashlytics/android/c;->a:Lcom/crashlytics/android/bb;

    invoke-static {v0}, Lcom/crashlytics/android/bb;->f(Lcom/crashlytics/android/bb;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
