.class Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;
.super Lcom/yelp/android/ui/util/r;
.source "ActivityNearby.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field final synthetic d:Landroid/content/res/Resources;

.field final synthetic e:Landroid/view/View;

.field final synthetic f:Landroid/widget/ImageView;

.field final synthetic g:Landroid/graphics/drawable/Drawable;

.field final synthetic h:Lcom/yelp/android/cm/c;

.field final synthetic i:Lcom/yelp/android/ui/activities/nearby/ActivityNearby;


# direct methods
.method varargs constructor <init>(Lcom/yelp/android/ui/activities/nearby/ActivityNearby;Landroid/view/View;Landroid/view/View;[Landroid/view/View;Landroid/content/res/Resources;Landroid/view/View;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/yelp/android/cm/c;)V
    .locals 2

    .prologue
    .line 235
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->i:Lcom/yelp/android/ui/activities/nearby/ActivityNearby;

    iput-object p5, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->d:Landroid/content/res/Resources;

    iput-object p6, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->e:Landroid/view/View;

    iput-object p7, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->f:Landroid/widget/ImageView;

    iput-object p8, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->g:Landroid/graphics/drawable/Drawable;

    iput-object p9, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->h:Lcom/yelp/android/cm/c;

    invoke-direct {p0, p2, p3, p4}, Lcom/yelp/android/ui/util/r;-><init>(Landroid/view/View;Landroid/view/View;[Landroid/view/View;)V

    .line 237
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->d:Landroid/content/res/Resources;

    const v1, 0x7f0a0116

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->a:F

    .line 239
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->a:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->b:F

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->i:Lcom/yelp/android/ui/activities/nearby/ActivityNearby;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->c:F

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 268
    invoke-super {p0}, Lcom/yelp/android/ui/util/r;->a()V

    .line 269
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->h:Lcom/yelp/android/cm/c;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2$1;-><init>(Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    return-void
.end method

.method protected a(F)V
    .locals 5

    .prologue
    .line 245
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/r;->a(F)V

    .line 246
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->c:F

    sub-float/2addr v0, p1

    iget v1, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->c:F

    div-float/2addr v0, v1

    .line 248
    iget v1, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->b:F

    iget v2, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->b:F

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    .line 249
    iget v1, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->a:F

    sub-float/2addr v1, v0

    .line 250
    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->e:Landroid/view/View;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    float-to-int v0, v0

    iget-object v4, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    float-to-int v1, v1

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 259
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->c:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->g:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    :cond_0
    return-void
.end method
