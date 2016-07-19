.class public final Lcom/yelp/android/dl/d;
.super Ljava/lang/Object;
.source "Schedulers.java"


# static fields
.field private static final d:Lcom/yelp/android/dl/d;


# instance fields
.field private final a:Lrx/d;

.field private final b:Lrx/d;

.field private final c:Lrx/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/yelp/android/dl/d;

    invoke-direct {v0}, Lcom/yelp/android/dl/d;-><init>()V

    sput-object v0, Lcom/yelp/android/dl/d;->d:Lcom/yelp/android/dl/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/yelp/android/dk/d;->a()Lcom/yelp/android/dk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dk/d;->d()Lcom/yelp/android/dk/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dk/e;->a()Lrx/d;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    iput-object v0, p0, Lcom/yelp/android/dl/d;->a:Lrx/d;

    .line 44
    :goto_0
    invoke-static {}, Lcom/yelp/android/dk/d;->a()Lcom/yelp/android/dk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dk/d;->d()Lcom/yelp/android/dk/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dk/e;->b()Lrx/d;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    iput-object v0, p0, Lcom/yelp/android/dl/d;->b:Lrx/d;

    .line 51
    :goto_1
    invoke-static {}, Lcom/yelp/android/dk/d;->a()Lcom/yelp/android/dk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dk/d;->d()Lcom/yelp/android/dk/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dk/e;->c()Lrx/d;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    iput-object v0, p0, Lcom/yelp/android/dl/d;->c:Lrx/d;

    .line 57
    :goto_2
    return-void

    .line 41
    :cond_0
    new-instance v0, Lrx/internal/schedulers/a;

    invoke-direct {v0}, Lrx/internal/schedulers/a;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/dl/d;->a:Lrx/d;

    goto :goto_0

    .line 48
    :cond_1
    new-instance v0, Lcom/yelp/android/dl/a;

    invoke-direct {v0}, Lcom/yelp/android/dl/a;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/dl/d;->b:Lrx/d;

    goto :goto_1

    .line 55
    :cond_2
    invoke-static {}, Lcom/yelp/android/dl/c;->c()Lcom/yelp/android/dl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/dl/d;->c:Lrx/d;

    goto :goto_2
.end method

.method public static a()Lrx/d;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/yelp/android/dl/d;->d:Lcom/yelp/android/dl/d;

    iget-object v0, v0, Lcom/yelp/android/dl/d;->a:Lrx/d;

    return-object v0
.end method

.method public static b()Lrx/d;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/yelp/android/dl/d;->d:Lcom/yelp/android/dl/d;

    iget-object v0, v0, Lcom/yelp/android/dl/d;->b:Lrx/d;

    return-object v0
.end method
