.class public final Lcom/yelp/android/dm/a;
.super Ljava/lang/Object;
.source "BooleanSubscription.java"

# interfaces
.implements Lrx/f;


# static fields
.field static final b:Lcom/yelp/android/dg/a;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/yelp/android/dg/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/yelp/android/dm/a$1;

    invoke-direct {v0}, Lcom/yelp/android/dm/a$1;-><init>()V

    sput-object v0, Lcom/yelp/android/dm/a;->b:Lcom/yelp/android/dg/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/dm/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    return-void
.end method

.method private constructor <init>(Lcom/yelp/android/dg/a;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/dm/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 38
    return-void
.end method

.method public static a()Lcom/yelp/android/dm/a;
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/yelp/android/dm/a;

    invoke-direct {v0}, Lcom/yelp/android/dm/a;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/yelp/android/dg/a;)Lcom/yelp/android/dm/a;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/yelp/android/dm/a;

    invoke-direct {v0, p0}, Lcom/yelp/android/dm/a;-><init>(Lcom/yelp/android/dg/a;)V

    return-object v0
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/dm/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/dm/a;->b:Lcom/yelp/android/dg/a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final unsubscribe()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/dm/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/dg/a;

    .line 68
    sget-object v1, Lcom/yelp/android/dm/a;->b:Lcom/yelp/android/dg/a;

    if-eq v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/yelp/android/dm/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/yelp/android/dm/a;->b:Lcom/yelp/android/dg/a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/dg/a;

    .line 70
    if-eqz v0, :cond_0

    sget-object v1, Lcom/yelp/android/dm/a;->b:Lcom/yelp/android/dg/a;

    if-eq v0, v1, :cond_0

    .line 71
    invoke-interface {v0}, Lcom/yelp/android/dg/a;->call()V

    .line 74
    :cond_0
    return-void
.end method
