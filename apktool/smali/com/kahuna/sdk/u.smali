.class Lcom/kahuna/sdk/u;
.super Ljava/util/Timer;
.source "KahunaAnalytics.java"


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/h;

.field private b:J


# direct methods
.method private constructor <init>(Lcom/kahuna/sdk/h;)V
    .locals 2

    .prologue
    .line 1719
    iput-object p1, p0, Lcom/kahuna/sdk/u;->a:Lcom/kahuna/sdk/h;

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    .line 1721
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kahuna/sdk/u;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/kahuna/sdk/h;Lcom/kahuna/sdk/i;)V
    .locals 0

    .prologue
    .line 1719
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/u;-><init>(Lcom/kahuna/sdk/h;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 1730
    iget-wide v0, p0, Lcom/kahuna/sdk/u;->b:J

    return-wide v0
.end method

.method public schedule(Ljava/util/TimerTask;J)V
    .locals 2

    .prologue
    .line 1725
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/kahuna/sdk/u;->b:J

    .line 1726
    invoke-super {p0, p1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1727
    return-void
.end method
