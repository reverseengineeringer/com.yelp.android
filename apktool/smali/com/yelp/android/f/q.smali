.class public Lcom/yelp/android/f/q;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/yelp/android/f/q;->a:Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public static a(IIIIZZ)Lcom/yelp/android/f/q;
    .locals 8

    .prologue
    .line 124
    new-instance v7, Lcom/yelp/android/f/q;

    invoke-static {}, Lcom/yelp/android/f/g;->v()Lcom/yelp/android/f/k;

    move-result-object v0

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/yelp/android/f/k;->a(IIIIZZ)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/yelp/android/f/q;-><init>(Ljava/lang/Object;)V

    return-object v7
.end method

.method static synthetic a(Lcom/yelp/android/f/q;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yelp/android/f/q;->a:Ljava/lang/Object;

    return-object v0
.end method
