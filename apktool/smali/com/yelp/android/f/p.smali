.class public Lcom/yelp/android/f/p;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/yelp/android/f/p;->a:Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public static a(IIZI)Lcom/yelp/android/f/p;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/yelp/android/f/p;

    invoke-static {}, Lcom/yelp/android/f/g;->v()Lcom/yelp/android/f/k;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/yelp/android/f/k;->a(IIZI)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/f/p;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
