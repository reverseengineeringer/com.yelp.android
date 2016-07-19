.class public final Lcom/yelp/android/dl/c;
.super Lrx/d;
.source "NewThreadScheduler.java"


# static fields
.field private static final b:Lrx/internal/util/RxThreadFactory;

.field private static final c:Lcom/yelp/android/dl/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lrx/internal/util/RxThreadFactory;

    const-string/jumbo v1, "RxNewThreadScheduler-"

    invoke-direct {v0, v1}, Lrx/internal/util/RxThreadFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yelp/android/dl/c;->b:Lrx/internal/util/RxThreadFactory;

    .line 29
    new-instance v0, Lcom/yelp/android/dl/c;

    invoke-direct {v0}, Lcom/yelp/android/dl/c;-><init>()V

    sput-object v0, Lcom/yelp/android/dl/c;->c:Lcom/yelp/android/dl/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lrx/d;-><init>()V

    .line 37
    return-void
.end method

.method static c()Lcom/yelp/android/dl/c;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/yelp/android/dl/c;->c:Lcom/yelp/android/dl/c;

    return-object v0
.end method


# virtual methods
.method public a()Lrx/d$a;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lrx/internal/schedulers/b;

    sget-object v1, Lcom/yelp/android/dl/c;->b:Lrx/internal/util/RxThreadFactory;

    invoke-direct {v0, v1}, Lrx/internal/schedulers/b;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method
