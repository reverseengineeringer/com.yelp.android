.class public Lcom/yelp/android/ag/c;
.super Lcom/yelp/android/ag/e;
.source "DrawableImageViewTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ag/e",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/yelp/android/ag/e;-><init>(Landroid/widget/ImageView;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 9
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ag/c;->d(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected d(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/yelp/android/ag/c;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    return-void
.end method
