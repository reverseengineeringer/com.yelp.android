.class Lcom/yelp/android/ui/activities/nearby/c;
.super Lcom/yelp/android/ui/util/ab;
.source "ActivityNearby.java"


# instance fields
.field a:F

.field b:F

.field c:F

.field final synthetic d:Landroid/content/res/Resources;

.field final synthetic e:Landroid/view/View;

.field final synthetic f:Landroid/widget/ImageView;

.field final synthetic g:Landroid/graphics/drawable/Drawable;

.field final synthetic h:Landroid/graphics/drawable/Drawable;

.field final synthetic i:Lcom/yelp/android/ui/activities/nearby/ActivityNearby;


# direct methods
.method varargs constructor <init>(Lcom/yelp/android/ui/activities/nearby/ActivityNearby;Landroid/view/View;Landroid/view/View;[Landroid/view/View;Landroid/content/res/Resources;Landroid/view/View;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 209
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/c;->i:Lcom/yelp/android/ui/activities/nearby/ActivityNearby;

    iput-object p5, p0, Lcom/yelp/android/ui/activities/nearby/c;->d:Landroid/content/res/Resources;

    iput-object p6, p0, Lcom/yelp/android/ui/activities/nearby/c;->e:Landroid/view/View;

    iput-object p7, p0, Lcom/yelp/android/ui/activities/nearby/c;->f:Landroid/widget/ImageView;

    iput-object p8, p0, Lcom/yelp/android/ui/activities/nearby/c;->g:Landroid/graphics/drawable/Drawable;

    iput-object p9, p0, Lcom/yelp/android/ui/activities/nearby/c;->h:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p2, p3, p4}, Lcom/yelp/android/ui/util/ab;-><init>(Landroid/view/View;Landroid/view/View;[Landroid/view/View;)V

    .line 211
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/c;->d:Landroid/content/res/Resources;

    const v1, 0x7f0b00a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/nearby/c;->a:F

    .line 213
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/c;->a:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/yelp/android/ui/activities/nearby/c;->b:F

    .line 214
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/c;->i:Lcom/yelp/android/ui/activities/nearby/ActivityNearby;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/nearby/c;->c:F

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Lcom/yelp/android/ui/util/ab;->a()V

    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/c;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/c;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/c;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/yelp/android/ui/activities/nearby/d;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/nearby/d;-><init>(Lcom/yelp/android/ui/activities/nearby/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    return-void
.end method

.method protected a(F)V
    .locals 5

    .prologue
    .line 218
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/ab;->a(F)V

    .line 219
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/c;->c:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/yelp/android/ui/activities/nearby/c;->c:F

    div-float/2addr v0, v1

    .line 221
    iget v1, p0, Lcom/yelp/android/ui/activities/nearby/c;->b:F

    iget v2, p0, Lcom/yelp/android/ui/activities/nearby/c;->b:F

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    .line 222
    iget v1, p0, Lcom/yelp/android/ui/activities/nearby/c;->a:F

    sub-float/2addr v1, v0

    .line 223
    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/c;->e:Landroid/view/View;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/nearby/c;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    float-to-int v0, v0

    iget-object v4, p0, Lcom/yelp/android/ui/activities/nearby/c;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    float-to-int v1, v1

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 229
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/c;->c:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/c;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/c;->g:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/c;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/c;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/c;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    :cond_0
    return-void
.end method
