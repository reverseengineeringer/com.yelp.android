.class public final Lcom/yelp/android/dl/f;
.super Lrx/d;
.source "TrampolineScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/dl/f$b;,
        Lcom/yelp/android/dl/f$a;
    }
.end annotation


# static fields
.field private static final b:Lcom/yelp/android/dl/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/yelp/android/dl/f;

    invoke-direct {v0}, Lcom/yelp/android/dl/f;-><init>()V

    sput-object v0, Lcom/yelp/android/dl/f;->b:Lcom/yelp/android/dl/f;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lrx/d;-><init>()V

    .line 45
    return-void
.end method

.method static a(II)I
    .locals 1

    .prologue
    .line 132
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Lrx/d$a;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/yelp/android/dl/f$a;

    invoke-direct {v0}, Lcom/yelp/android/dl/f$a;-><init>()V

    return-object v0
.end method
