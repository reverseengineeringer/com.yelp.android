.class public abstract Lcom/path/android/jobqueue/BaseJob;
.super Ljava/lang/Object;
.source "BaseJob.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_RETRY_LIMIT:I = 0x14


# instance fields
.field private transient a:I

.field private groupId:Ljava/lang/String;

.field private persistent:Z

.field private requiresNetwork:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0, v0, p1}, Lcom/path/android/jobqueue/BaseJob;-><init>(ZZLjava/lang/String;)V

    .line 29
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/path/android/jobqueue/BaseJob;-><init>(ZZLjava/lang/String;)V

    .line 25
    return-void
.end method

.method protected constructor <init>(ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/path/android/jobqueue/BaseJob;-><init>(ZZLjava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/path/android/jobqueue/BaseJob;-><init>(ZZLjava/lang/String;)V

    .line 37
    return-void
.end method

.method protected constructor <init>(ZZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean p1, p0, Lcom/path/android/jobqueue/BaseJob;->requiresNetwork:Z

    .line 41
    iput-boolean p2, p0, Lcom/path/android/jobqueue/BaseJob;->persistent:Z

    .line 42
    iput-object p3, p0, Lcom/path/android/jobqueue/BaseJob;->groupId:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/path/android/jobqueue/BaseJob;->requiresNetwork:Z

    .line 54
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/path/android/jobqueue/BaseJob;->groupId:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/path/android/jobqueue/BaseJob;->persistent:Z

    .line 56
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/path/android/jobqueue/BaseJob;->requiresNetwork:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 47
    iget-object v0, p0, Lcom/path/android/jobqueue/BaseJob;->groupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 48
    iget-boolean v0, p0, Lcom/path/android/jobqueue/BaseJob;->persistent:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 49
    return-void
.end method


# virtual methods
.method protected getCurrentRunCount()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/path/android/jobqueue/BaseJob;->a:I

    return v0
.end method

.method protected getRetryLimit()I
    .locals 1

    .prologue
    .line 171
    const/16 v0, 0x14

    return v0
.end method

.method public final getRunGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/path/android/jobqueue/BaseJob;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public final isPersistent()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/path/android/jobqueue/BaseJob;->persistent:Z

    return v0
.end method

.method public abstract onAdded()V
.end method

.method protected abstract onCancel()V
.end method

.method public abstract onRun()V
.end method

.method public final requiresNetwork()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/path/android/jobqueue/BaseJob;->requiresNetwork:Z

    return v0
.end method

.method public final safeRun(I)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 101
    iput p1, p0, Lcom/path/android/jobqueue/BaseJob;->a:I

    .line 102
    invoke-static {}, Lcom/yelp/android/at/b;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    const-string/jumbo v2, "running job %s"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/yelp/android/at/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/path/android/jobqueue/BaseJob;->onRun()V

    .line 109
    invoke-static {}, Lcom/yelp/android/at/b;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    const-string/jumbo v2, "finished job %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/yelp/android/at/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 133
    :cond_1
    :goto_0
    return v0

    .line 112
    :catch_0
    move-exception v2

    .line 114
    :try_start_1
    const-string/jumbo v3, "error while executing job"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/yelp/android/at/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0}, Lcom/path/android/jobqueue/BaseJob;->getRetryLimit()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v3

    if-ge p1, v3, :cond_3

    move v3, v0

    .line 116
    :goto_1
    if-eqz v3, :cond_2

    .line 118
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/path/android/jobqueue/BaseJob;->shouldReRunOnThrowable(Ljava/lang/Throwable;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    .line 124
    :cond_2
    :goto_2
    if-eqz v3, :cond_4

    move v0, v1

    .line 125
    goto :goto_0

    :cond_3
    move v3, v1

    .line 115
    goto :goto_1

    .line 119
    :catch_1
    move-exception v2

    .line 120
    :try_start_3
    const-string/jumbo v4, "shouldReRunOnThrowable did throw an exception"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/yelp/android/at/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 124
    :catchall_0
    move-exception v2

    move-object v6, v2

    move v2, v0

    move-object v0, v6

    :goto_3
    if-eqz v3, :cond_5

    move v0, v1

    .line 125
    goto :goto_0

    .line 128
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lcom/path/android/jobqueue/BaseJob;->onCancel()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 129
    :catch_2
    move-exception v1

    goto :goto_0

    .line 126
    :cond_5
    if-eqz v2, :cond_6

    .line 128
    :try_start_5
    invoke-virtual {p0}, Lcom/path/android/jobqueue/BaseJob;->onCancel()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 130
    :cond_6
    :goto_4
    throw v0

    .line 129
    :catch_3
    move-exception v1

    goto :goto_4

    .line 124
    :catchall_1
    move-exception v0

    move v2, v1

    move v3, v1

    goto :goto_3

    :catchall_2
    move-exception v2

    move v3, v1

    move v6, v0

    move-object v0, v2

    move v2, v6

    goto :goto_3
.end method

.method protected abstract shouldReRunOnThrowable(Ljava/lang/Throwable;)Z
.end method
