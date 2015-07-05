.class Landroid/support/v7/internal/widget/be;
.super Lcom/yelp/android/e/f;
.source "TintManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/e/f",
        "<",
        "Ljava/lang/Integer;",
        "Landroid/graphics/PorterDuffColorFilter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/yelp/android/e/f;-><init>(I)V

    .line 388
    return-void
.end method

.method private static b(ILandroid/graphics/PorterDuff$Mode;)I
    .locals 2

    .prologue
    .line 399
    .line 400
    add-int/lit8 v0, p0, 0x1f

    .line 401
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 402
    return v0
.end method


# virtual methods
.method a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    .prologue
    .line 391
    invoke-static {p1, p2}, Landroid/support/v7/internal/widget/be;->b(ILandroid/graphics/PorterDuff$Mode;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/be;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    return-object v0
.end method

.method a(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    .prologue
    .line 395
    invoke-static {p1, p2}, Landroid/support/v7/internal/widget/be;->b(ILandroid/graphics/PorterDuff$Mode;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroid/support/v7/internal/widget/be;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    return-object v0
.end method
