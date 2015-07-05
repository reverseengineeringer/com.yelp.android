.class public abstract Lcom/yelp/android/ag/e;
.super Lcom/yelp/android/ag/k;
.source "ImageViewTarget.java"

# interfaces
.implements Lcom/yelp/android/af/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/ag/k",
        "<",
        "Landroid/widget/ImageView;",
        "TZ;>;",
        "Lcom/yelp/android/af/f;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/yelp/android/ag/k;-><init>(Landroid/view/View;)V

    .line 18
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yelp/android/ag/e;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    return-void
.end method

.method public a(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ag/e;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    return-void
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;)V"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;Lcom/yelp/android/af/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TZ;",
            "Lcom/yelp/android/af/e",
            "<-TZ;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    if-eqz p2, :cond_0

    invoke-interface {p2, p1, p0}, Lcom/yelp/android/af/e;->a(Ljava/lang/Object;Lcom/yelp/android/af/f;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/ag/e;->a(Ljava/lang/Object;)V

    .line 78
    :cond_1
    return-void
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ag/e;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ag/e;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ag/e;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    return-void
.end method
