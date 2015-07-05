.class Lcom/yelp/android/ui/i;
.super Landroid/widget/ImageView;
.source "DinoAnimationAdapter.java"


# instance fields
.field private a:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 209
    iput-object p2, p0, Lcom/yelp/android/ui/i;->a:Landroid/graphics/Paint;

    .line 210
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 214
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 215
    invoke-virtual {p0}, Lcom/yelp/android/ui/i;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/ui/i;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/i;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/yelp/android/ui/i;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 216
    return-void
.end method
