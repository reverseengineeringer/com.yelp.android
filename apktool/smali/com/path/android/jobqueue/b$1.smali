.class Lcom/path/android/jobqueue/b$1;
.super Ljava/lang/Object;
.source "JobManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/path/android/jobqueue/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/path/android/jobqueue/b;


# direct methods
.method constructor <init>(Lcom/path/android/jobqueue/b;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/path/android/jobqueue/b$1;->a:Lcom/path/android/jobqueue/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/path/android/jobqueue/b$1;->a:Lcom/path/android/jobqueue/b;

    invoke-static {v0}, Lcom/path/android/jobqueue/b;->a(Lcom/path/android/jobqueue/b;)V

    .line 499
    return-void
.end method
