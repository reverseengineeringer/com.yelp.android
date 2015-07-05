.class Lcom/yelp/android/s/i;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"

# interfaces
.implements Lcom/yelp/android/s/j;


# instance fields
.field private final a:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Landroid/util/DisplayMetrics;)V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/yelp/android/s/i;->a:Landroid/util/DisplayMetrics;

    .line 99
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yelp/android/s/i;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yelp/android/s/i;->a:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method
