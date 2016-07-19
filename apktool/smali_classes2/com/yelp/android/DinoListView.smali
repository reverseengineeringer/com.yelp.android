.class public Lcom/yelp/android/DinoListView;
.super Landroid/widget/ListView;
.source "DinoListView.java"


# instance fields
.field private final a:I

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Paint;

.field private d:F

.field private e:F

.field private f:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/DinoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/DinoListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    sget v0, Lcom/yelp/android/appdata/n;->j:I

    iput v0, p0, Lcom/yelp/android/DinoListView;->a:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/yelp/android/DinoListView;->c:Landroid/graphics/Paint;

    .line 52
    iget-object v1, p0, Lcom/yelp/android/DinoListView;->c:Landroid/graphics/Paint;

    const v2, 0x7f0e003d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v1, p0, Lcom/yelp/android/DinoListView;->c:Landroid/graphics/Paint;

    iget v2, p0, Lcom/yelp/android/DinoListView;->a:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    const v1, 0x7f020214

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/DinoListView;->b:Landroid/graphics/Bitmap;

    .line 57
    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, Lcom/yelp/android/DinoListView;->d:F

    .line 94
    iput p2, p0, Lcom/yelp/android/DinoListView;->e:F

    .line 95
    invoke-virtual {p0}, Lcom/yelp/android/DinoListView;->invalidate()V

    .line 96
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 67
    iget-object v0, p0, Lcom/yelp/android/DinoListView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 68
    invoke-virtual {p0}, Lcom/yelp/android/DinoListView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    .line 70
    iget-object v1, p0, Lcom/yelp/android/DinoListView;->b:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    iget v2, p0, Lcom/yelp/android/DinoListView;->d:F

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 72
    invoke-virtual {p0}, Lcom/yelp/android/DinoListView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    iget v2, p0, Lcom/yelp/android/DinoListView;->e:F

    invoke-virtual {p0}, Lcom/yelp/android/DinoListView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    iget v4, p0, Lcom/yelp/android/DinoListView;->d:F

    iget-object v5, p0, Lcom/yelp/android/DinoListView;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 78
    return-void
.end method

.method public getOnScrollListener()Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yelp/android/DinoListView;->f:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 83
    iput-object p1, p0, Lcom/yelp/android/DinoListView;->f:Landroid/widget/AbsListView$OnScrollListener;

    .line 84
    return-void
.end method
