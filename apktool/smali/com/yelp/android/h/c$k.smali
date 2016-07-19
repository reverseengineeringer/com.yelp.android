.class public Lcom/yelp/android/h/c$k;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput-object p1, p0, Lcom/yelp/android/h/c$k;->a:Ljava/lang/Object;

    .line 397
    return-void
.end method

.method public static a(IIZI)Lcom/yelp/android/h/c$k;
    .locals 2

    .prologue
    .line 391
    new-instance v0, Lcom/yelp/android/h/c$k;

    invoke-static {}, Lcom/yelp/android/h/c;->v()Lcom/yelp/android/h/c$e;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/yelp/android/h/c$e;->a(IIZI)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/h/c$k;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
