.class public Lcom/path/android/jobqueue/b;
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

.field transient i:Lcom/path/android/jobqueue/BaseJob;


# direct methods
.method public constructor <init>(ILcom/path/android/jobqueue/BaseJob;JJ)V
    .locals 13

    .prologue
    .line 51
    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/path/android/jobqueue/BaseJob;->getRunGroupId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    move-object v0, p0

    move v2, p1

    move-object v5, p2

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Lcom/path/android/jobqueue/b;-><init>(Ljava/lang/Long;ILjava/lang/String;ILcom/path/android/jobqueue/BaseJob;JJJ)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;ILjava/lang/String;ILcom/path/android/jobqueue/BaseJob;JJJ)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/path/android/jobqueue/b;->a:Ljava/lang/Long;

    .line 36
    iput p2, p0, Lcom/path/android/jobqueue/b;->b:I

    .line 37
    iput-object p3, p0, Lcom/path/android/jobqueue/b;->c:Ljava/lang/String;

    .line 38
    iput p4, p0, Lcom/path/android/jobqueue/b;->d:I

    .line 39
    iput-wide p6, p0, Lcom/path/android/jobqueue/b;->f:J

    .line 40
    iput-wide p8, p0, Lcom/path/android/jobqueue/b;->e:J

    .line 41
    iput-object p5, p0, Lcom/path/android/jobqueue/b;->i:Lcom/path/android/jobqueue/BaseJob;

    .line 42
    iput-wide p10, p0, Lcom/path/android/jobqueue/b;->g:J

    .line 43
    invoke-virtual {p5}, Lcom/path/android/jobqueue/BaseJob;->requiresNetwork()Z

    move-result v0

    iput-boolean v0, p0, Lcom/path/android/jobqueue/b;->h:Z

    .line 44
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/path/android/jobqueue/b;->g:J

    .line 105
    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/path/android/jobqueue/b;->a:Ljava/lang/Long;

    .line 69
    return-void
.end method

.method public final a(I)Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->i:Lcom/path/android/jobqueue/BaseJob;

    invoke-virtual {v0, p1}, Lcom/path/android/jobqueue/BaseJob;->safeRun(I)Z

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/path/android/jobqueue/b;->d:I

    .line 89
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/path/android/jobqueue/b;->h:Z

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/path/android/jobqueue/b;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/path/android/jobqueue/b;->d:I

    return v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/path/android/jobqueue/b;->f:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 134
    instance-of v1, p1, Lcom/path/android/jobqueue/b;

    if-nez v1, :cond_1

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 137
    :cond_1
    check-cast p1, Lcom/path/android/jobqueue/b;

    .line 138
    iget-object v1, p0, Lcom/path/android/jobqueue/b;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/path/android/jobqueue/b;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->a:Ljava/lang/Long;

    iget-object v1, p1, Lcom/path/android/jobqueue/b;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/path/android/jobqueue/b;->g:J

    return-wide v0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/path/android/jobqueue/b;->e:J

    return-wide v0
.end method

.method public h()Lcom/path/android/jobqueue/BaseJob;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->i:Lcom/path/android/jobqueue/BaseJob;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 127
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 129
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/path/android/jobqueue/b;->c:Ljava/lang/String;

    return-object v0
.end method
