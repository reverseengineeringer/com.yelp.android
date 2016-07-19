.class public Lcom/yelp/android/ag/d;
.super Lcom/yelp/android/ae/a;
.source "GifDrawableResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ae/a",
        "<",
        "Lcom/yelp/android/ag/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/yelp/android/ag/b;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/yelp/android/ae/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 12
    return-void
.end method


# virtual methods
.method public c()I
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/yelp/android/ag/d;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/yelp/android/ag/b;

    invoke-virtual {v0}, Lcom/yelp/android/ag/b;->d()[B

    move-result-object v0

    array-length v1, v0

    iget-object v0, p0, Lcom/yelp/android/ag/d;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/yelp/android/ag/b;

    invoke-virtual {v0}, Lcom/yelp/android/ag/b;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ao/h;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yelp/android/ag/d;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/yelp/android/ag/b;

    invoke-virtual {v0}, Lcom/yelp/android/ag/b;->stop()V

    .line 22
    iget-object v0, p0, Lcom/yelp/android/ag/d;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/yelp/android/ag/b;

    invoke-virtual {v0}, Lcom/yelp/android/ag/b;->f()V

    .line 23
    return-void
.end method
