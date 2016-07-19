.class public final Lcom/yelp/android/de/a;
.super Ljava/lang/Object;
.source "RxAndroidPlugins.java"


# static fields
.field private static final a:Lcom/yelp/android/de/a;


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/yelp/android/de/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/yelp/android/de/a;

    invoke-direct {v0}, Lcom/yelp/android/de/a;-><init>()V

    sput-object v0, Lcom/yelp/android/de/a;->a:Lcom/yelp/android/de/a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/de/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 38
    return-void
.end method

.method public static a()Lcom/yelp/android/de/a;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/yelp/android/de/a;->a:Lcom/yelp/android/de/a;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/yelp/android/de/b;
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/de/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/yelp/android/de/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {}, Lcom/yelp/android/de/b;->a()Lcom/yelp/android/de/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/de/a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/de/b;

    return-object v0
.end method
