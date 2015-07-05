.class public abstract Lcom/path/android/jobqueue/Job;
.super Lcom/path/android/jobqueue/BaseJob;
.source "Job.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient a:I

.field private transient b:J


# direct methods
.method protected constructor <init>(Lcom/path/android/jobqueue/h;)V
    .locals 3

    .prologue
    .line 16
    invoke-virtual {p1}, Lcom/path/android/jobqueue/h;->c()Z

    move-result v0

    invoke-virtual {p1}, Lcom/path/android/jobqueue/h;->e()Z

    move-result v1

    invoke-virtual {p1}, Lcom/path/android/jobqueue/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/path/android/jobqueue/BaseJob;-><init>(ZZLjava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/path/android/jobqueue/h;->f()I

    move-result v0

    iput v0, p0, Lcom/path/android/jobqueue/Job;->a:I

    .line 18
    invoke-virtual {p1}, Lcom/path/android/jobqueue/h;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/path/android/jobqueue/Job;->b:J

    .line 19
    return-void
.end method


# virtual methods
.method public final getDelayInMs()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/path/android/jobqueue/Job;->b:J

    return-wide v0
.end method

.method public final getPriority()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/path/android/jobqueue/Job;->a:I

    return v0
.end method
