.class public abstract Lcom/path/android/jobqueue/Job;
.super Ljava/lang/Object;
.source "Job.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_RETRY_LIMIT:I = 0x14

.field private static final serialVersionUID:J = 0x3L


# instance fields
.field private transient a:I

.field private transient b:J

.field private transient c:Landroid/content/Context;

.field transient cancelled:Z

.field private groupId:Ljava/lang/String;

.field private persistent:Z

.field transient priority:I

.field private readonlyTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requiresNetwork:Z

.field transient retryConstraint:Lcom/path/android/jobqueue/f;


# direct methods
.method protected constructor <init>(Lcom/path/android/jobqueue/d;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, Lcom/path/android/jobqueue/d;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/path/android/jobqueue/Job;->requiresNetwork:Z

    .line 43
    invoke-virtual {p1}, Lcom/path/android/jobqueue/d;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/path/android/jobqueue/Job;->persistent:Z

    .line 44
    invoke-virtual {p1}, Lcom/path/android/jobqueue/d;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/path/android/jobqueue/Job;->groupId:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lcom/path/android/jobqueue/d;->f()I

    move-result v0

    iput v0, p0, Lcom/path/android/jobqueue/Job;->priority:I

    .line 46
    invoke-virtual {p1}, Lcom/path/android/jobqueue/d;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/path/android/jobqueue/Job;->b:J

    .line 47
    invoke-virtual {p1}, Lcom/path/android/jobqueue/d;->h()Ljava/util/HashSet;

    move-result-object v0

    .line 48
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/path/android/jobqueue/Job;->readonlyTags:Ljava/util/Set;

    .line 49
    return-void

    .line 48
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/path/android/jobqueue/Job;->requiresNetwork:Z

    .line 92
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/path/android/jobqueue/Job;->groupId:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/path/android/jobqueue/Job;->persistent:Z

    .line 94
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 95
    if-lez v1, :cond_0

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/path/android/jobqueue/Job;->readonlyTags:Ljava/util/Set;

    .line 97
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 98
    iget-object v2, p0, Lcom/path/android/jobqueue/Job;->readonlyTags:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/path/android/jobqueue/Job;->requiresNetwork:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 78
    iget-object v0, p0, Lcom/path/android/jobqueue/Job;->groupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 79
    iget-boolean v0, p0, Lcom/path/android/jobqueue/Job;->persistent:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 80
    iget-object v0, p0, Lcom/path/android/jobqueue/Job;->readonlyTags:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 81
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 82
    if-lez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/path/android/jobqueue/Job;->readonlyTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/path/android/jobqueue/Job;->readonlyTags:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0

    .line 87
    :cond_1
    return-void
.end method


# virtual methods
.method public assertNotCancelled()V
    .locals 2

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/path/android/jobqueue/Job;->cancelled:Z

    if-eqz v0, :cond_0

    .line 290
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "job is cancelled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    return-void
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/path/android/jobqueue/Job;->c:Landroid/content/Context;

    return-object v0
.end method

.method protected getCurrentRunCount()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/path/android/jobqueue/Job;->a:I

    return v0
.end method

.method public final getDelayInMs()J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/path/android/jobqueue/Job;->b:J

    return-wide v0
.end method

.method public final getPriority()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/path/android/jobqueue/Job;->priority:I

    return v0
.end method

.method protected getRetryLimit()I
    .locals 1

    .prologue
    .line 263
    const/16 v0, 0x14

    return v0
.end method

.method public final getRunGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/path/android/jobqueue/Job;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/path/android/jobqueue/Job;->readonlyTags:Ljava/util/Set;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/path/android/jobqueue/Job;->cancelled:Z

    return v0
.end method

.method public final isPersistent()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/path/android/jobqueue/Job;->persistent:Z

    return v0
.end method

.method public abstract onAdded()V
.end method

.method protected abstract onCancel()V
.end method

.method public abstract onRun()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public final requiresNetwork()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/path/android/jobqueue/Job;->requiresNetwork:Z

    return v0
.end method

.method final safeRun(Lcom/path/android/jobqueue/a;I)I
    .locals 9

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 182
    iput p2, p0, Lcom/path/android/jobqueue/Job;->a:I

    .line 183
    invoke-static {}, Lcom/yelp/android/bp/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const-string/jumbo v0, "running job %s"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v1

    invoke-static {v0, v3}, Lcom/yelp/android/bp/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/path/android/jobqueue/Job;->onRun()V

    .line 190
    invoke-static {}, Lcom/yelp/android/bp/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    const-string/jumbo v0, "finished job %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v3, v7

    invoke-static {v0, v3}, Lcom/yelp/android/bp/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v1

    move v3, v1

    .line 211
    :goto_0
    const-string/jumbo v7, "safeRunResult for %s : %s. re run:%s. cancelled: %s"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object p0, v8, v1

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v6

    iget-boolean v1, p0, Lcom/path/android/jobqueue/Job;->cancelled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v4

    invoke-static {v7, v8}, Lcom/yelp/android/bp/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    if-nez v0, :cond_6

    .line 226
    :goto_1
    return v2

    .line 193
    :catch_0
    move-exception v0

    move-object v3, v0

    .line 195
    const-string/jumbo v0, "error while executing job %s"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object p0, v7, v1

    invoke-static {v3, v0, v7}, Lcom/yelp/android/bp/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    invoke-virtual {p0}, Lcom/path/android/jobqueue/Job;->getRetryLimit()I

    move-result v0

    if-ge p2, v0, :cond_4

    move v0, v2

    .line 197
    :goto_2
    if-eqz v0, :cond_5

    iget-boolean v7, p0, Lcom/path/android/jobqueue/Job;->cancelled:Z

    if-nez v7, :cond_5

    .line 199
    :try_start_1
    invoke-virtual {p0}, Lcom/path/android/jobqueue/Job;->getRetryLimit()I

    move-result v7

    invoke-virtual {p0, v3, p2, v7}, Lcom/path/android/jobqueue/Job;->shouldReRunOnThrowable(Ljava/lang/Throwable;II)Lcom/path/android/jobqueue/f;

    move-result-object v3

    .line 201
    if-nez v3, :cond_3

    .line 202
    sget-object v3, Lcom/path/android/jobqueue/f;->a:Lcom/path/android/jobqueue/f;

    .line 204
    :cond_3
    iput-object v3, p0, Lcom/path/android/jobqueue/Job;->retryConstraint:Lcom/path/android/jobqueue/f;

    .line 205
    invoke-virtual {v3}, Lcom/path/android/jobqueue/f;->a()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    move v3, v0

    move v0, v2

    .line 208
    goto :goto_0

    :cond_4
    move v0, v1

    .line 196
    goto :goto_2

    .line 206
    :catch_1
    move-exception v3

    .line 207
    const-string/jumbo v7, "shouldReRunOnThrowable did throw an exception"

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v3, v7, v8}, Lcom/yelp/android/bp/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move v3, v0

    move v0, v2

    goto :goto_0

    .line 215
    :cond_6
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    move v2, v4

    .line 216
    goto :goto_1

    .line 218
    :cond_7
    if-eqz v3, :cond_8

    move v2, v5

    .line 219
    goto :goto_1

    .line 223
    :cond_8
    :try_start_2
    invoke-virtual {p0}, Lcom/path/android/jobqueue/Job;->onCancel()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    move v2, v6

    .line 226
    goto :goto_1

    .line 224
    :catch_2
    move-exception v0

    goto :goto_3
.end method

.method setApplicationContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/path/android/jobqueue/Job;->c:Landroid/content/Context;

    .line 296
    return-void
.end method

.method protected shouldReRunOnThrowable(Ljava/lang/Throwable;II)Lcom/path/android/jobqueue/f;
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/path/android/jobqueue/Job;->shouldReRunOnThrowable(Ljava/lang/Throwable;)Z

    move-result v0

    .line 173
    if-eqz v0, :cond_0

    sget-object v0, Lcom/path/android/jobqueue/f;->a:Lcom/path/android/jobqueue/f;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/path/android/jobqueue/f;->b:Lcom/path/android/jobqueue/f;

    goto :goto_0
.end method

.method protected shouldReRunOnThrowable(Ljava/lang/Throwable;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x1

    return v0
.end method
