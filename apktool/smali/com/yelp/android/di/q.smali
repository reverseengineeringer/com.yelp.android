.class abstract Lcom/yelp/android/di/q;
.super Lcom/yelp/android/di/o;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/di/o",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private volatile f:J


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/yelp/android/di/o;-><init>(I)V

    .line 89
    return-void
.end method


# virtual methods
.method protected final c()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/yelp/android/di/q;->f:J

    return-wide v0
.end method

.method protected final e(J)V
    .locals 1

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/yelp/android/di/q;->f:J

    .line 97
    return-void
.end method
