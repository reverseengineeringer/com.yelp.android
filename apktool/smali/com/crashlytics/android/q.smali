.class final Lcom/crashlytics/android/q;
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
.field private synthetic a:Ljava/util/Date;

.field private synthetic b:Ljava/lang/Thread;

.field private synthetic c:Ljava/lang/Throwable;

.field private synthetic d:Lcom/crashlytics/android/bb;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/bb;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/crashlytics/android/q;->d:Lcom/crashlytics/android/bb;

    iput-object p2, p0, Lcom/crashlytics/android/q;->a:Ljava/util/Date;

    iput-object p3, p0, Lcom/crashlytics/android/q;->b:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/crashlytics/android/q;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 307
    iget-object v0, p0, Lcom/crashlytics/android/q;->d:Lcom/crashlytics/android/bb;

    iget-object v1, p0, Lcom/crashlytics/android/q;->a:Ljava/util/Date;

    iget-object v2, p0, Lcom/crashlytics/android/q;->b:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/crashlytics/android/q;->c:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lcom/crashlytics/android/bb;->a(Lcom/crashlytics/android/bb;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
