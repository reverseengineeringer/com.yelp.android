.class public Lcom/yelp/android/cm/c;
.super Landroid/graphics/drawable/StateListDrawable;
.source "BadgeableHamburgerIcon.java"


# instance fields
.field private a:Lcom/yelp/android/cm/d;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 24
    iput p2, p0, Lcom/yelp/android/cm/c;->b:I

    .line 25
    new-instance v0, Lcom/yelp/android/cm/d;

    const v1, 0x7f0200a9

    invoke-direct {v0, p1, v1, p2}, Lcom/yelp/android/cm/d;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/yelp/android/cm/c;->a:Lcom/yelp/android/cm/d;

    .line 26
    sget-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0203bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/cm/c;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 27
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 33
    iget v0, p0, Lcom/yelp/android/cm/c;->b:I

    if-lez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/yelp/android/cm/c;->a:Lcom/yelp/android/cm/d;

    invoke-virtual {p0}, Lcom/yelp/android/cm/c;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v2, v2, v1}, Lcom/yelp/android/cm/a;->a(Landroid/graphics/drawable/Drawable;FFF)V

    .line 35
    iget-object v0, p0, Lcom/yelp/android/cm/c;->a:Lcom/yelp/android/cm/d;

    invoke-virtual {v0, p1}, Lcom/yelp/android/cm/d;->draw(Landroid/graphics/Canvas;)V

    .line 37
    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, -0x3

    return v0
.end method
