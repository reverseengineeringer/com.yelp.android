.class abstract Lcom/yelp/android/di/h;
.super Lcom/yelp/android/di/f;
.source "MpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/di/f",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final e:J


# instance fields
.field private volatile producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-class v0, Lcom/yelp/android/di/h;

    const-string/jumbo v1, "producerIndex"

    invoke-static {v0, v1}, Lcom/yelp/android/di/y;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/yelp/android/di/h;->e:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/yelp/android/di/f;-><init>(I)V

    .line 36
    return-void
.end method


# virtual methods
.method protected final b()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/yelp/android/di/h;->producerIndex:J

    return-wide v0
.end method

.method protected final c(JJ)Z
    .locals 9

    .prologue
    .line 43
    sget-object v0, Lcom/yelp/android/di/y;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/yelp/android/di/h;->e:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method
