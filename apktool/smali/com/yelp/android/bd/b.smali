.class public Lcom/yelp/android/bd/b;
.super Landroid/graphics/drawable/StateListDrawable;
.source "BadgeableFeedIcon.java"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    .prologue
    const v5, 0x7f0202b1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 25
    iput p2, p0, Lcom/yelp/android/bd/b;->b:I

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/yelp/android/bd/c;

    const v2, 0x7f020084

    invoke-direct {v1, p1, v2, p2}, Lcom/yelp/android/bd/c;-><init>(Landroid/content/Context;II)V

    iput-object v1, p0, Lcom/yelp/android/bd/b;->a:Landroid/graphics/drawable/Drawable;

    .line 28
    new-array v1, v4, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/bd/b;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 30
    new-array v1, v4, [I

    const v2, 0x10100a1

    aput v2, v1, v3

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/bd/b;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 32
    sget-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    const v2, 0x7f0202b0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/bd/b;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 34
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 41
    iget v0, p0, Lcom/yelp/android/bd/b;->b:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/bd/b;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/yelp/android/bd/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/yelp/android/bd/b;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v2, v2, v1}, Lcom/yelp/android/bd/a;->a(Landroid/graphics/drawable/Drawable;FFF)V

    .line 43
    iget-object v0, p0, Lcom/yelp/android/bd/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 45
    :cond_0
    return-void
.end method
