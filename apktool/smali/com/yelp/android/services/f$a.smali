.class public Lcom/yelp/android/services/f$a;
.super Ljava/lang/Object;
.source "UtilDates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/services/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


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
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1

    .prologue
    .line 547
    iput-wide p1, p0, Lcom/yelp/android/services/f$a;->e:J

    .line 548
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/yelp/android/services/f$a;->b:Ljava/lang/String;

    .line 516
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 507
    iput-boolean p1, p0, Lcom/yelp/android/services/f$a;->a:Z

    .line 508
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/yelp/android/services/f$a;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/yelp/android/services/f$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 563
    iput-wide p1, p0, Lcom/yelp/android/services/f$a;->g:J

    .line 564
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 523
    iput-boolean p1, p0, Lcom/yelp/android/services/f$a;->c:Z

    .line 524
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 527
    iput-boolean p1, p0, Lcom/yelp/android/services/f$a;->d:Z

    .line 528
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/yelp/android/services/f$a;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/yelp/android/services/f$a;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/services/f$a;->d:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/services/f$a;->f:Z

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
    .line 531
    iput-boolean p1, p0, Lcom/yelp/android/services/f$a;->f:Z

    .line 532
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/yelp/android/services/f$a;->d:Z

    return v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 551
    iget-wide v0, p0, Lcom/yelp/android/services/f$a;->e:J

    return-wide v0
.end method

.method public e(Z)V
    .locals 0

    .prologue
    .line 567
    iput-boolean p1, p0, Lcom/yelp/android/services/f$a;->h:Z

    .line 568
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/yelp/android/services/f$a;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/services/f$a;->h:Z

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
    .line 559
    iget-wide v0, p0, Lcom/yelp/android/services/f$a;->g:J

    return-wide v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/yelp/android/services/f$a;->h:Z

    return v0
.end method
