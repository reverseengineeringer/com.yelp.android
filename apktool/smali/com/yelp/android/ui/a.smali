.class Lcom/yelp/android/ui/a;
.super Landroid/view/View;
.source "ActivityMonocleButtonView.java"


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I

.field private static final g:[F

.field private static final h:[F

.field private static final i:[F

.field private static final j:[F


# instance fields
.field private A:Landroid/graphics/Shader;

.field private B:Landroid/graphics/drawable/shapes/RoundRectShape;

.field private k:I

.field private l:I

.field private m:[Ljava/lang/String;

.field private n:[Ljava/lang/Runnable;

.field private o:F

.field private p:I

.field private q:I

.field private r:I

.field private s:Landroid/graphics/Paint;

.field private t:Landroid/graphics/Paint;

.field private u:Landroid/graphics/Paint;

.field private v:Landroid/graphics/drawable/shapes/RectShape;

.field private w:Landroid/graphics/drawable/shapes/RectShape;

.field private x:Landroid/graphics/Shader;

.field private y:Landroid/graphics/Shader;

.field private z:Landroid/graphics/Shader;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x6a

    const/high16 v4, -0x1000000

    .line 27
    const/16 v0, 0xdc

    const/16 v1, 0xdc

    const/16 v2, 0xdc

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/yelp/android/ui/a;->a:I

    .line 28
    const/16 v0, 0x96

    const/16 v1, 0x96

    const/16 v2, 0x96

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/yelp/android/ui/a;->b:I

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/16 v1, 0x2f

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v6

    aput v4, v0, v7

    aput v4, v0, v8

    sput-object v0, Lcom/yelp/android/ui/a;->c:[I

    .line 33
    new-array v0, v8, [I

    aput v4, v0, v6

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v7

    sput-object v0, Lcom/yelp/android/ui/a;->d:[I

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/16 v1, 0x32

    const/16 v2, 0x32

    const/16 v3, 0x32

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v6

    aput v4, v0, v7

    aput v4, v0, v8

    sput-object v0, Lcom/yelp/android/ui/a;->e:[I

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [I

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v6

    aput v4, v0, v7

    aput v4, v0, v8

    sput-object v0, Lcom/yelp/android/ui/a;->f:[I

    .line 40
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yelp/android/ui/a;->g:[F

    .line 41
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/yelp/android/ui/a;->h:[F

    .line 42
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/yelp/android/ui/a;->i:[F

    .line 43
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/yelp/android/ui/a;->j:[F

    return-void

    .line 40
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 41
    :array_1
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 42
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data

    .line 43
    :array_3
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Runnable;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v3, 0x42a80000    # 84.0f

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 49
    iput v1, p0, Lcom/yelp/android/ui/a;->o:F

    .line 50
    iput v8, p0, Lcom/yelp/android/ui/a;->p:I

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/a;->q:I

    .line 52
    iput v8, p0, Lcom/yelp/android/ui/a;->r:I

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/a;->s:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/a;->t:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/a;->u:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/a;->v:Landroid/graphics/drawable/shapes/RectShape;

    .line 57
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/a;->w:Landroid/graphics/drawable/shapes/RectShape;

    .line 58
    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v5, Lcom/yelp/android/ui/a;->c:[I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/yelp/android/ui/a;->x:Landroid/graphics/Shader;

    .line 61
    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v5, Lcom/yelp/android/ui/a;->d:[I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/yelp/android/ui/a;->y:Landroid/graphics/Shader;

    .line 64
    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v5, Lcom/yelp/android/ui/a;->f:[I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/yelp/android/ui/a;->z:Landroid/graphics/Shader;

    .line 66
    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v5, Lcom/yelp/android/ui/a;->e:[I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/yelp/android/ui/a;->A:Landroid/graphics/Shader;

    .line 69
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    sget-object v1, Lcom/yelp/android/ui/a;->j:[F

    invoke-direct {v0, v1, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    iput-object v0, p0, Lcom/yelp/android/ui/a;->B:Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 73
    iput-object p2, p0, Lcom/yelp/android/ui/a;->m:[Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/yelp/android/ui/a;->n:[Ljava/lang/Runnable;

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/a;->s:Landroid/graphics/Paint;

    const/16 v1, 0x37

    invoke-static {v8, v8, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/yelp/android/ui/a;->p:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 229
    iput p1, p0, Lcom/yelp/android/ui/a;->p:I

    .line 230
    invoke-virtual {p0}, Lcom/yelp/android/ui/a;->invalidate()V

    .line 231
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x42700000    # 60.0f

    const/4 v7, 0x0

    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v5, 0x42a80000    # 84.0f

    .line 92
    iget v0, p0, Lcom/yelp/android/ui/a;->l:I

    int-to-float v0, v0

    const v1, 0x44558000    # 854.0f

    div-float v1, v0, v1

    .line 93
    iget v0, p0, Lcom/yelp/android/ui/a;->q:I

    int-to-float v0, v0

    iget v2, p0, Lcom/yelp/android/ui/a;->p:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/yelp/android/ui/a;->r:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/yelp/android/ui/a;->o:F

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/a;->v:Landroid/graphics/drawable/shapes/RectShape;

    mul-float v2, v5, v1

    iget v3, p0, Lcom/yelp/android/ui/a;->k:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/shapes/RectShape;->resize(FF)V

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/a;->t:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/yelp/android/ui/a;->x:Landroid/graphics/Shader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 101
    iget v0, p0, Lcom/yelp/android/ui/a;->l:I

    int-to-float v0, v0

    mul-float v2, v5, v1

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/a;->v:Landroid/graphics/drawable/shapes/RectShape;

    iget-object v2, p0, Lcom/yelp/android/ui/a;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/shapes/RectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/a;->v:Landroid/graphics/drawable/shapes/RectShape;

    iget v2, p0, Lcom/yelp/android/ui/a;->k:I

    int-to-float v2, v2

    invoke-virtual {v0, v9, v2}, Landroid/graphics/drawable/shapes/RectShape;->resize(FF)V

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 109
    iget v0, p0, Lcom/yelp/android/ui/a;->l:I

    int-to-float v0, v0

    mul-float v2, v5, v1

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/a;->v:Landroid/graphics/drawable/shapes/RectShape;

    iget-object v2, p0, Lcom/yelp/android/ui/a;->s:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/shapes/RectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/a;->B:Landroid/graphics/drawable/shapes/RoundRectShape;

    const/high16 v2, 0x42800000    # 64.0f

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/yelp/android/ui/a;->k:I

    int-to-float v3, v3

    const/high16 v4, 0x41800000    # 16.0f

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;->resize(FF)V

    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/a;->t:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/yelp/android/ui/a;->y:Landroid/graphics/Shader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 119
    iget v0, p0, Lcom/yelp/android/ui/a;->l:I

    int-to-float v0, v0

    mul-float v2, v5, v1

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 120
    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/a;->B:Landroid/graphics/drawable/shapes/RoundRectShape;

    iget-object v2, p0, Lcom/yelp/android/ui/a;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 124
    iget v0, p0, Lcom/yelp/android/ui/a;->k:I

    add-int/lit8 v0, v0, -0x14

    iput v0, p0, Lcom/yelp/android/ui/a;->q:I

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/a;->m:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/yelp/android/ui/a;->r:I

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/a;->B:Landroid/graphics/drawable/shapes/RoundRectShape;

    mul-float v2, v8, v1

    iget v3, p0, Lcom/yelp/android/ui/a;->k:I

    int-to-float v3, v3

    const/high16 v4, 0x41a00000    # 20.0f

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;->resize(FF)V

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/a;->t:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/yelp/android/ui/a;->z:Landroid/graphics/Shader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 133
    iget v0, p0, Lcom/yelp/android/ui/a;->l:I

    int-to-float v0, v0

    mul-float v2, v5, v1

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 134
    mul-float v0, v6, v1

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 135
    iget-object v0, p0, Lcom/yelp/android/ui/a;->B:Landroid/graphics/drawable/shapes/RoundRectShape;

    iget-object v2, p0, Lcom/yelp/android/ui/a;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 139
    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    iget v0, p0, Lcom/yelp/android/ui/a;->p:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/yelp/android/ui/a;->h:[F

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 146
    mul-float v0, v8, v1

    iget v3, p0, Lcom/yelp/android/ui/a;->q:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/yelp/android/ui/a;->r:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;->resize(FF)V

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/a;->t:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/yelp/android/ui/a;->A:Landroid/graphics/Shader;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 150
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 151
    iget v0, p0, Lcom/yelp/android/ui/a;->l:I

    int-to-float v0, v0

    mul-float v3, v5, v1

    sub-float/2addr v0, v3

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 152
    mul-float v0, v6, v1

    iget v3, p0, Lcom/yelp/android/ui/a;->o:F

    add-float/2addr v3, v6

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 153
    iget-object v0, p0, Lcom/yelp/android/ui/a;->t:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/drawable/shapes/RoundRectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 157
    iget-object v0, p0, Lcom/yelp/android/ui/a;->w:Landroid/graphics/drawable/shapes/RectShape;

    mul-float v2, v8, v1

    invoke-virtual {v0, v2, v9}, Landroid/graphics/drawable/shapes/RectShape;->resize(FF)V

    .line 159
    iget-object v0, p0, Lcom/yelp/android/ui/a;->t:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/yelp/android/ui/a;->y:Landroid/graphics/Shader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 161
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/yelp/android/ui/a;->r:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 163
    iget v2, p0, Lcom/yelp/android/ui/a;->l:I

    int-to-float v2, v2

    mul-float v3, v5, v1

    sub-float/2addr v2, v3

    mul-float v3, v6, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/yelp/android/ui/a;->q:I

    add-int/lit8 v4, v0, 0x1

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/yelp/android/ui/a;->r:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 166
    iget-object v2, p0, Lcom/yelp/android/ui/a;->w:Landroid/graphics/drawable/shapes/RectShape;

    iget-object v3, p0, Lcom/yelp/android/ui/a;->t:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v3}, Landroid/graphics/drawable/shapes/RectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 167
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/a;->p:I

    iget v3, p0, Lcom/yelp/android/ui/a;->r:I

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_1

    sget-object v0, Lcom/yelp/android/ui/a;->i:[F

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/yelp/android/ui/a;->g:[F

    goto :goto_0

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/a;->u:Landroid/graphics/Paint;

    const/high16 v2, 0x41980000    # 19.0f

    iget v3, p0, Lcom/yelp/android/ui/a;->k:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x43f00000    # 480.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/a;->u:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/a;->u:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 174
    iget-object v0, p0, Lcom/yelp/android/ui/a;->u:Landroid/graphics/Paint;

    const/16 v2, 0x181

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/a;->u:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 178
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 179
    iget v0, p0, Lcom/yelp/android/ui/a;->k:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/yelp/android/ui/a;->l:I

    int-to-float v2, v2

    mul-float v3, v5, v1

    sub-float/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 181
    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Lcom/yelp/android/ui/a;->r:I

    if-ge v0, v2, :cond_4

    .line 183
    iget v2, p0, Lcom/yelp/android/ui/a;->r:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/yelp/android/ui/a;->p:I

    if-ne v2, v3, :cond_3

    .line 184
    iget-object v2, p0, Lcom/yelp/android/ui/a;->u:Landroid/graphics/Paint;

    sget v3, Lcom/yelp/android/ui/a;->a:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    :goto_3
    iget-object v2, p0, Lcom/yelp/android/ui/a;->m:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget v3, p0, Lcom/yelp/android/ui/a;->q:I

    int-to-float v3, v3

    int-to-float v4, v0

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/yelp/android/ui/a;->r:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v3, v6

    const/high16 v4, 0x42400000    # 48.0f

    mul-float/2addr v4, v1

    iget-object v5, p0, Lcom/yelp/android/ui/a;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 186
    :cond_3
    iget-object v2, p0, Lcom/yelp/android/ui/a;->u:Landroid/graphics/Paint;

    sget v3, Lcom/yelp/android/ui/a;->b:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 194
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 81
    invoke-virtual {p0}, Lcom/yelp/android/ui/a;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/a;->l:I

    .line 82
    invoke-virtual {p0}, Lcom/yelp/android/ui/a;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/a;->k:I

    .line 83
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/high16 v5, 0x41200000    # 10.0f

    .line 200
    iget v0, p0, Lcom/yelp/android/ui/a;->l:I

    int-to-float v0, v0

    const v1, 0x44558000    # 854.0f

    div-float/2addr v0, v1

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 202
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/yelp/android/ui/a;->l:I

    int-to-float v2, v2

    const/high16 v3, 0x42a80000    # 84.0f

    mul-float/2addr v3, v0

    mul-float v4, v5, v0

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/yelp/android/ui/a;->l:I

    int-to-float v2, v2

    mul-float/2addr v0, v5

    sub-float v0, v2, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/yelp/android/ui/a;->k:I

    int-to-float v1, v1

    sub-float/2addr v1, v5

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr v0, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v1, v5

    iget v2, p0, Lcom/yelp/android/ui/a;->q:I

    iget v3, p0, Lcom/yelp/android/ui/a;->r:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    rem-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/yelp/android/ui/a;->q:I

    iget v2, p0, Lcom/yelp/android/ui/a;->r:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 212
    iget v1, p0, Lcom/yelp/android/ui/a;->p:I

    if-eq v1, v0, :cond_0

    .line 213
    iput v0, p0, Lcom/yelp/android/ui/a;->p:I

    .line 214
    iget v0, p0, Lcom/yelp/android/ui/a;->q:I

    int-to-float v0, v0

    iget v1, p0, Lcom/yelp/android/ui/a;->p:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/yelp/android/ui/a;->r:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/yelp/android/ui/a;->o:F

    .line 215
    invoke-virtual {p0}, Lcom/yelp/android/ui/a;->invalidate()V

    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/a;->n:[Ljava/lang/Runnable;

    iget v1, p0, Lcom/yelp/android/ui/a;->r:I

    iget v2, p0, Lcom/yelp/android/ui/a;->p:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 218
    :cond_0
    const/4 v0, 0x1

    .line 221
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
