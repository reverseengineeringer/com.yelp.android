.class Lcom/path/android/jobqueue/d;
.super Ljava/lang/Object;
.source "JobManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/path/android/jobqueue/c;


# direct methods
.method constructor <init>(Lcom/path/android/jobqueue/c;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/path/android/jobqueue/d;->a:Lcom/path/android/jobqueue/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/path/android/jobqueue/d;->a:Lcom/path/android/jobqueue/c;

    invoke-static {v0}, Lcom/path/android/jobqueue/c;->a(Lcom/path/android/jobqueue/c;)V

    .line 250
    return-void
.end method
