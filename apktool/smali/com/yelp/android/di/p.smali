.class abstract Lcom/yelp/android/di/p;
.super Lcom/yelp/android/di/l;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/di/l",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final e:J


# instance fields
.field private volatile producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-class v0, Lcom/yelp/android/di/p;

    const-string/jumbo v1, "producerIndex"

    invoke-static {v0, v1}, Lcom/yelp/android/di/y;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/yelp/android/di/p;->e:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/yelp/android/di/l;-><init>(I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected final b()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/yelp/android/di/p;->producerIndex:J

    return-wide v0
.end method

.method protected final d(J)V
    .locals 7

    .prologue
    .line 39
    sget-object v0, Lcom/yelp/android/di/y;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/yelp/android/di/p;->e:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 40
    return-void
.end method
