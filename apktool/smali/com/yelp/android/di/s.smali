.class abstract Lcom/yelp/android/di/s;
.super Lcom/yelp/android/di/a;
.source "SpscArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/di/a",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/Integer;


# instance fields
.field protected final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-string/jumbo v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/di/s;->e:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/yelp/android/di/a;-><init>(I)V

    .line 26
    div-int/lit8 v0, p1, 0x4

    sget-object v1, Lcom/yelp/android/di/s;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/di/s;->d:I

    .line 27
    return-void
.end method
