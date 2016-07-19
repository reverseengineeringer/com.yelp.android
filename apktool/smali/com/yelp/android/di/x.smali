.class abstract Lcom/yelp/android/di/x;
.super Lcom/yelp/android/di/u;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/di/u",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final f:J


# instance fields
.field protected producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-class v0, Lcom/yelp/android/di/x;

    const-string/jumbo v1, "producerIndex"

    invoke-static {v0, v1}, Lcom/yelp/android/di/y;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/yelp/android/di/x;->f:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/yelp/android/di/u;-><init>(I)V

    .line 45
    return-void
.end method
