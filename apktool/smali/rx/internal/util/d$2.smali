.class final Lrx/internal/util/d$2;
.super Lrx/internal/util/a;
.source "RxRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/internal/util/a",
        "<",
        "Ljava/util/Queue",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Lrx/internal/util/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lrx/internal/util/d$2;->c()Lcom/yelp/android/di/j;

    move-result-object v0

    return-object v0
.end method

.method protected c()Lcom/yelp/android/di/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/di/j",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    new-instance v0, Lcom/yelp/android/di/j;

    sget v1, Lrx/internal/util/d;->b:I

    invoke-direct {v0, v1}, Lcom/yelp/android/di/j;-><init>(I)V

    return-object v0
.end method
