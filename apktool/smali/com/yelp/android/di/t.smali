.class abstract Lcom/yelp/android/di/t;
.super Lcom/yelp/android/di/v;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/di/v",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final e:J


# instance fields
.field protected consumerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    const-class v0, Lcom/yelp/android/di/t;

    const-string/jumbo v1, "consumerIndex"

    invoke-static {v0, v1}, Lcom/yelp/android/di/y;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/yelp/android/di/t;->e:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/yelp/android/di/v;-><init>(I)V

    .line 62
    return-void
.end method
