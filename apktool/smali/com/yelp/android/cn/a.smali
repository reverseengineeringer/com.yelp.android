.class public Lcom/yelp/android/cn/a;
.super Ljava/lang/Object;
.source "BaseTimer.java"


# instance fields
.field protected a:J

.field protected b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/cn/a;->a:J

    .line 16
    iget-wide v0, p0, Lcom/yelp/android/cn/a;->a:J

    return-wide v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/yelp/android/cn/a;->a:J

    .line 21
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/cn/a;->b:J

    .line 25
    iget-wide v0, p0, Lcom/yelp/android/cn/a;->b:J

    return-wide v0
.end method

.method protected c()J
    .locals 4

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/yelp/android/cn/a;->b:J

    iget-wide v2, p0, Lcom/yelp/android/cn/a;->a:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
