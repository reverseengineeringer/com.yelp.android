.class public Lcom/path/android/jobqueue/a;
.super Ljava/lang/Object;
.source "JobHolder.java"


# instance fields
.field protected a:Ljava/lang/Long;

.field protected b:I

.field protected c:Ljava/lang/String;

.field protected d:I

.field protected e:J

.field protected f:J

.field protected g:J

.field protected h:Z

.field transient i:Lcom/path/android/jobqueue/Job;

.field protected final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(ILcom/path/android/jobqueue/Job;JJ)V
    .locals 13

    .prologue
    .line 82
    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/path/android/jobqueue/Job;->getRunGroupId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    move-object v0, p0

    move v2, p1

    move-object v5, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Lcom/path/android/jobqueue/a;-><init>(Ljava/lang/Long;ILjava/lang/String;ILcom/path/android/jobqueue/Job;JJJ)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;ILjava/lang/String;ILcom/path/android/jobqueue/Job;JJJ)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/path/android/jobqueue/a;->a:Ljava/lang/Long;

    .line 65
    iput p2, p0, Lcom/path/android/jobqueue/a;->b:I

    .line 66
    iput-object p3, p0, Lcom/path/android/jobqueue/a;->c:Ljava/lang/String;

    .line 67
    iput p4, p0, Lcom/path/android/jobqueue/a;->d:I

    .line 68
    iput-wide p6, p0, Lcom/path/android/jobqueue/a;->f:J

    .line 69
    iput-wide p8, p0, Lcom/path/android/jobqueue/a;->e:J

    .line 70
    iput-object p5, p0, Lcom/path/android/jobqueue/a;->i:Lcom/path/android/jobqueue/Job;

    .line 71
    iput p2, p5, Lcom/path/android/jobqueue/Job;->priority:I

    .line 72
    iput-wide p10, p0, Lcom/path/android/jobqueue/a;->g:J

    .line 73
    invoke-virtual {p5}, Lcom/path/android/jobqueue/Job;->requiresNetwork()Z

    move-result v0

    iput-boolean v0, p0, Lcom/path/android/jobqueue/a;->h:Z

    .line 74
    invoke-virtual {p5}, Lcom/path/android/jobqueue/Job;->getTags()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/path/android/jobqueue/a;->j:Ljava/util/Set;

    .line 75
    return-void

    .line 74
    :cond_0
    invoke-virtual {p5}, Lcom/path/android/jobqueue/Job;->getTags()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/path/android/jobqueue/a;->i:Lcom/path/android/jobqueue/Job;

    invoke-virtual {v0, p0, p1}, Lcom/path/android/jobqueue/Job;->safeRun(Lcom/path/android/jobqueue/a;I)I

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/path/android/jobqueue/a;->a:Ljava/lang/Long;

    return-object v0
.end method

.method a(J)V
    .locals 1

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/path/android/jobqueue/a;->e:J

    .line 117
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/path/android/jobqueue/a;->a:Ljava/lang/Long;

    .line 100
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 111
    iput p1, p0, Lcom/path/android/jobqueue/a;->b:I

    .line 112
    iget-object v0, p0, Lcom/path/android/jobqueue/a;->i:Lcom/path/android/jobqueue/Job;

    iget v1, p0, Lcom/path/android/jobqueue/a;->b:I

    iput v1, v0, Lcom/path/android/jobqueue/Job;->priority:I

    .line 113
    return-void
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 140
    iput-wide p1, p0, Lcom/path/android/jobqueue/a;->g:J

    .line 141
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/path/android/jobqueue/a;->h:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/path/android/jobqueue/a;->b:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 124
    iput p1, p0, Lcom/path/android/jobqueue/a;->d:I

    .line 125
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/path/android/jobqueue/a;->d:I

    return v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/path/android/jobqueue/a;->f:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 183
    instance-of v1, p1, Lcom/path/android/jobqueue/a;

    if-nez v1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v0

    .line 186
    :cond_1
    check-cast p1, Lcom/path/android/jobqueue/a;

    .line 187
    iget-object v1, p0, Lcom/path/android/jobqueue/a;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/path/android/jobqueue/a;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/path/android/jobqueue/a;->a:Ljava/lang/Long;

    iget-object v1, p1, Lcom/path/android/jobqueue/a;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/path/android/jobqueue/a;->g:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/path/android/jobqueue/a;->e:J

    return-wide v0
.end method

.method public h()Lcom/path/android/jobqueue/Job;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/path/android/jobqueue/a;->i:Lcom/path/android/jobqueue/Job;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/path/android/jobqueue/a;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 176
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 178
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/path/android/jobqueue/a;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/path/android/jobqueue/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/util/Set;
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
    .line 160
    iget-object v0, p0, Lcom/path/android/jobqueue/a;->j:Ljava/util/Set;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/path/android/jobqueue/a;->k:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/path/android/jobqueue/a;->j:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/path/android/jobqueue/a;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized m()V
    .locals 1

    .prologue
    .line 198
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/path/android/jobqueue/a;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
