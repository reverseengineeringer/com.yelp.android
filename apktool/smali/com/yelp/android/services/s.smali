.class public Lcom/yelp/android/services/s;
.super Ljava/lang/Object;
.source "UtilDates.java"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:J

.field private f:Z

.field private g:J

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 457
    iput-wide p1, p0, Lcom/yelp/android/services/s;->e:J

    .line 458
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/yelp/android/services/s;->b:Ljava/lang/String;

    .line 426
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 417
    iput-boolean p1, p0, Lcom/yelp/android/services/s;->a:Z

    .line 418
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/yelp/android/services/s;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/yelp/android/services/s;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 473
    iput-wide p1, p0, Lcom/yelp/android/services/s;->g:J

    .line 474
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 433
    iput-boolean p1, p0, Lcom/yelp/android/services/s;->c:Z

    .line 434
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 437
    iput-boolean p1, p0, Lcom/yelp/android/services/s;->d:Z

    .line 438
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/yelp/android/services/s;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/yelp/android/services/s;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/services/s;->d:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/services/s;->f:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Z)V
    .locals 0

    .prologue
    .line 441
    iput-boolean p1, p0, Lcom/yelp/android/services/s;->f:Z

    .line 442
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/yelp/android/services/s;->d:Z

    return v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 461
    iget-wide v0, p0, Lcom/yelp/android/services/s;->e:J

    return-wide v0
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 477
    iput-boolean p1, p0, Lcom/yelp/android/services/s;->h:Z

    .line 478
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/yelp/android/services/s;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/services/s;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()J
    .locals 2

    .prologue
    .line 469
    iget-wide v0, p0, Lcom/yelp/android/services/s;->g:J

    return-wide v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 481
    iget-boolean v0, p0, Lcom/yelp/android/services/s;->h:Z

    return v0
.end method
