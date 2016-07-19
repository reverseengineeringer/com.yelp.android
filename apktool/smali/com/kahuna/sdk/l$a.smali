.class Lcom/kahuna/sdk/l$a;
.super Ljava/util/Timer;
.source "KahunaCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kahuna/sdk/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/kahuna/sdk/l;

.field private b:J


# direct methods
.method private constructor <init>(Lcom/kahuna/sdk/l;)V
    .locals 2

    .prologue
    .line 1657
    iput-object p1, p0, Lcom/kahuna/sdk/l$a;->a:Lcom/kahuna/sdk/l;

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    .line 1659
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/kahuna/sdk/l$a;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/kahuna/sdk/l;Lcom/kahuna/sdk/l$1;)V
    .locals 0

    .prologue
    .line 1657
    invoke-direct {p0, p1}, Lcom/kahuna/sdk/l$a;-><init>(Lcom/kahuna/sdk/l;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 1668
    iget-wide v0, p0, Lcom/kahuna/sdk/l$a;->b:J

    return-wide v0
.end method

.method public schedule(Ljava/util/TimerTask;J)V
    .locals 2

    .prologue
    .line 1663
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/kahuna/sdk/l$a;->b:J

    .line 1664
    invoke-super {p0, p1, p2, p3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1665
    return-void
.end method
