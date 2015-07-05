.class Lcom/yelp/android/a/e;
.super Lcom/yelp/android/a/d;
.source "DrawableCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/yelp/android/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .prologue
    .line 110
    invoke-static {p1, p2}, Lcom/yelp/android/a/k;->a(Landroid/graphics/drawable/Drawable;Z)V

    .line 111
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 115
    invoke-static {p1}, Lcom/yelp/android/a/k;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 120
    invoke-static {p1}, Lcom/yelp/android/a/k;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
