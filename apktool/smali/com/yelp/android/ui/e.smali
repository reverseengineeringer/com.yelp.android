.class Lcom/yelp/android/ui/e;
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

    sput v0, Lcom/yelp/android/ui/e;->a:I

    .line 28
    const/16 v0, 0x96

    const/16 v1, 0x96

    const/16 v2, 0x96

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/yelp/android/ui/e;->b:I

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

    sput-object v0, Lcom/yelp/android/ui/e;->c:[I

    .line 33
    new-array v0, v8, [I

    aput v4, v0, v6

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v7

    sput-object v0, Lcom/yelp/android/ui/e;->d:[I

    .line 36
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

    sput-object v0, Lcom/yelp/android/ui/e;->e:[I

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [I

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v0, v6

    aput v4, v0, v7

    aput v4, v0, v8

    sput-object v0, Lcom/yelp/android/ui/e;->f:[I

    .line 44
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yelp/android/ui/e;->g:[F

    .line 47
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/yelp/android/ui/e;->h:[F

    .line 50
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/yelp/android/ui/e;->i:[F

    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/yelp/android/ui/e;->j:[F

    return-void

    .line 44
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

    .line 47
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

    .line 50
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

    .line 53
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

    .line 82
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 61
    iput v1, p0, Lcom/yelp/android/ui/e;->o:F

    .line 62
    iput v8, p0, Lcom/yelp/android/ui/e;->p:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/e;->q:I

    .line 64
    iput v8, p0, Lcom/yelp/android/ui/e;->r:I

    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/e;->s:Landroid/graphics/Paint;

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/e;->t:Landroid/graphics/Paint;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/e;->u:Landroid/graphics/Paint;

    .line 68
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/e;->v:Landroid/graphics/drawable/shapes/RectShape;

    .line 69
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/e;->w:Landroid/graphics/drawable/shapes/RectShape;

    .line 70
    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v5, Lcom/yelp/android/ui/e;->c:[I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/yelp/android/ui/e;->x:Landroid/graphics/Shader;

    .line 72
    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v5, Lcom/yelp/android/ui/e;->d:[I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/yelp/android/ui/e;->y:Landroid/graphics/Shader;

    .line 74
    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v5, Lcom/yelp/android/ui/e;->f:[I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/yelp/android/ui/e;->z:Landroid/graphics/Shader;

    .line 76
    new-instance v0, Landroid/graphics/LinearGradient;

    sget-object v5, Lcom/yelp/android/ui/e;->e:[I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/yelp/android/ui/e;->A:Landroid/graphics/Shader;

    .line 79
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    sget-object v1, Lcom/yelp/android/ui/e;->j:[F

    invoke-direct {v0, v1, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    iput-object v0, p0, Lcom/yelp/android/ui/e;->B:Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 83
    iput-object p2, p0, Lcom/yelp/android/ui/e;->m:[Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lcom/yelp/android/ui/e;->n:[Ljava/lang/Runnable;

    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/e;->s:Landroid/graphics/Paint;

    const/16 v1, 0x37

    invoke-static {v8, v8, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/yelp/android/ui/e;->p:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 228
    iput p1, p0, Lcom/yelp/android/ui/e;->p:I

    .line 229
    invoke-virtual {p0}, Lcom/yelp/android/ui/e;->invalidate()V

    .line 230
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

    .line 102
    iget v0, p0, Lcom/yelp/android/ui/e;->l:I

    int-to-float v0, v0

    const v1, 0x44558000    # 854.0f

    div-float v1, v0, v1

    .line 103
    iget v0, p0, Lcom/yelp/android/ui/e;->q:I

    int-to-float v0, v0

    iget v2, p0, Lcom/yelp/android/ui/e;->p:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/yelp/android/ui/e;->r:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/yelp/android/ui/e;->o:F

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/e;->v:Landroid/graphics/drawable/shapes/RectShape;

    mul-float v2, v5, v1

    iget v3, p0, Lcom/yelp/android/ui/e;->k:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/shapes/RectShape;->resize(FF)V

    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/e;->t:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/yelp/android/ui/e;->x:Landroid/graphics/Shader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 112
    iget v0, p0, Lcom/yelp/android/ui/e;->l:I

    int-to-float v0, v0

    mul-float v2, v5, v1

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/e;->v:Landroid/graphics/drawable/shapes/RectShape;

    iget-object v2, p0, Lcom/yelp/android/ui/e;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/shapes/RectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 117
    iget-object v0, p0, Lcom/yelp/android/ui/e;->v:Landroid/graphics/drawable/shapes/RectShape;

    iget v2, p0, Lcom/yelp/android/ui/e;->k:I

    int-to-float v2, v2

    invoke-virtual {v0, v9, v2}, Landroid/graphics/drawable/shapes/RectShape;->resize(FF)V

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 120
    iget v0, p0, Lcom/yelp/android/ui/e;->l:I

    int-to-float v0, v0

    mul-float v2, v5, v1

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/e;->v:Landroid/graphics/drawable/shapes/RectShape;

    iget-object v2, p0, Lcom/yelp/android/ui/e;->s:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/shapes/RectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/e;->B:Landroid/graphics/drawable/shapes/RoundRectShape;

    const/high16 v2, 0x42800000    # 64.0f

    mul-float/2addr v2, v1

    iget v3, p0, Lcom/yelp/android/ui/e;->k:I

    int-to-float v3, v3

    const/high16 v4, 0x41800000    # 16.0f

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;->resize(FF)V

    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/e;->t:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/yelp/android/ui/e;->y:Landroid/graphics/Shader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 130
    iget v0, p0, Lcom/yelp/android/ui/e;->l:I

    int-to-float v0, v0

    mul-float v2, v5, v1

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 131
    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/e;->B:Landroid/graphics/drawable/shapes/RoundRectShape;

    iget-object v2, p0, Lcom/yelp/android/ui/e;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 135
    iget v0, p0, Lcom/yelp/android/ui/e;->k:I

    add-int/lit8 v0, v0, -0x14

    iput v0, p0, Lcom/yelp/android/ui/e;->q:I

    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/e;->m:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/yelp/android/ui/e;->r:I

    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/e;->B:Landroid/graphics/drawable/shapes/RoundRectShape;

    mul-float v2, v8, v1

    iget v3, p0, Lcom/yelp/android/ui/e;->k:I

    int-to-float v3, v3

    const/high16 v4, 0x41a00000    # 20.0f

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;->resize(FF)V

    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/e;->t:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/yelp/android/ui/e;->z:Landroid/graphics/Shader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 144
    iget v0, p0, Lcom/yelp/android/ui/e;->l:I

    int-to-float v0, v0

    mul-float v2, v5, v1

    sub-float/2addr v0, v2

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 145
    mul-float v0, v6, v1

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 146
    iget-object v0, p0, Lcom/yelp/android/ui/e;->B:Landroid/graphics/drawable/shapes/RoundRectShape;

    iget-object v2, p0, Lcom/yelp/android/ui/e;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 150
    new-instance v2, Landroid/graphics/drawable/shapes/RoundRectShape;

    iget v0, p0, Lcom/yelp/android/ui/e;->p:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/yelp/android/ui/e;->h:[F

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 154
    mul-float v0, v8, v1

    iget v3, p0, Lcom/yelp/android/ui/e;->q:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/yelp/android/ui/e;->r:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;->resize(FF)V

    .line 156
    iget-object v0, p0, Lcom/yelp/android/ui/e;->t:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/yelp/android/ui/e;->A:Landroid/graphics/Shader;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 159
    iget v0, p0, Lcom/yelp/android/ui/e;->l:I

    int-to-float v0, v0

    mul-float v3, v5, v1

    sub-float/2addr v0, v3

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 160
    mul-float v0, v6, v1

    iget v3, p0, Lcom/yelp/android/ui/e;->o:F

    add-float/2addr v3, v6

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/e;->t:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v0}, Landroid/graphics/drawable/shapes/RoundRectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 165
    iget-object v0, p0, Lcom/yelp/android/ui/e;->w:Landroid/graphics/drawable/shapes/RectShape;

    mul-float v2, v8, v1

    invoke-virtual {v0, v2, v9}, Landroid/graphics/drawable/shapes/RectShape;->resize(FF)V

    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/e;->t:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/yelp/android/ui/e;->y:Landroid/graphics/Shader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 169
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/yelp/android/ui/e;->r:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 171
    iget v2, p0, Lcom/yelp/android/ui/e;->l:I

    int-to-float v2, v2

    mul-float v3, v5, v1

    sub-float/2addr v2, v3

    mul-float v3, v6, v1

    add-float/2addr v2, v3

    iget v3, p0, Lcom/yelp/android/ui/e;->q:I

    add-int/lit8 v4, v0, 0x1

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/yelp/android/ui/e;->r:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 173
    iget-object v2, p0, Lcom/yelp/android/ui/e;->w:Landroid/graphics/drawable/shapes/RectShape;

    iget-object v3, p0, Lcom/yelp/android/ui/e;->t:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v3}, Landroid/graphics/drawable/shapes/RectShape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 150
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/e;->p:I

    iget v3, p0, Lcom/yelp/android/ui/e;->r:I

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_1

    sget-object v0, Lcom/yelp/android/ui/e;->i:[F

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/yelp/android/ui/e;->g:[F

    goto :goto_0

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/e;->u:Landroid/graphics/Paint;

    const/high16 v2, 0x41980000    # 19.0f

    iget v3, p0, Lcom/yelp/android/ui/e;->k:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x43f00000    # 480.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 179
    iget-object v0, p0, Lcom/yelp/android/ui/e;->u:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setSubpixelText(Z)V

    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/e;->u:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 181
    iget-object v0, p0, Lcom/yelp/android/ui/e;->u:Landroid/graphics/Paint;

    const/16 v2, 0x181

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/e;->u:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 185
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 186
    iget v0, p0, Lcom/yelp/android/ui/e;->k:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v2, p0, Lcom/yelp/android/ui/e;->l:I

    int-to-float v2, v2

    mul-float v3, v5, v1

    sub-float/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 188
    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Lcom/yelp/android/ui/e;->r:I

    if-ge v0, v2, :cond_4

    .line 190
    iget v2, p0, Lcom/yelp/android/ui/e;->r:I

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/yelp/android/ui/e;->p:I

    if-ne v2, v3, :cond_3

    .line 191
    iget-object v2, p0, Lcom/yelp/android/ui/e;->u:Landroid/graphics/Paint;

    sget v3, Lcom/yelp/android/ui/e;->a:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 194
    :goto_3
    iget-object v2, p0, Lcom/yelp/android/ui/e;->m:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget v3, p0, Lcom/yelp/android/ui/e;->q:I

    int-to-float v3, v3

    int-to-float v4, v0

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/yelp/android/ui/e;->r:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v3, v6

    const/high16 v4, 0x42400000    # 48.0f

    mul-float/2addr v4, v1

    iget-object v5, p0, Lcom/yelp/android/ui/e;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 193
    :cond_3
    iget-object v2, p0, Lcom/yelp/android/ui/e;->u:Landroid/graphics/Paint;

    sget v3, Lcom/yelp/android/ui/e;->b:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 197
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 91
    invoke-virtual {p0}, Lcom/yelp/android/ui/e;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/e;->l:I

    .line 92
    invoke-virtual {p0}, Lcom/yelp/android/ui/e;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/e;->k:I

    .line 93
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v7, 0x41200000    # 10.0f

    .line 203
    iget v0, p0, Lcom/yelp/android/ui/e;->l:I

    int-to-float v0, v0

    const v3, 0x44558000    # 854.0f

    div-float v3, v0, v3

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v4, p0, Lcom/yelp/android/ui/e;->l:I

    int-to-float v4, v4

    const/high16 v5, 0x42a80000    # 84.0f

    mul-float/2addr v5, v3

    mul-float v6, v7, v3

    sub-float/2addr v5, v6

    sub-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/yelp/android/ui/e;->l:I

    int-to-float v5, v5

    mul-float/2addr v3, v7

    sub-float v3, v5, v3

    cmpg-float v3, v4, v3

    if-gez v3, :cond_2

    move v3, v1

    :goto_1
    and-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_3

    move v0, v1

    :goto_2
    and-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v4, p0, Lcom/yelp/android/ui/e;->k:I

    int-to-float v4, v4

    sub-float/2addr v4, v7

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    move v0, v1

    :goto_3
    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr v0, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v2, v7

    iget v3, p0, Lcom/yelp/android/ui/e;->q:I

    iget v4, p0, Lcom/yelp/android/ui/e;->r:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    rem-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/yelp/android/ui/e;->q:I

    iget v3, p0, Lcom/yelp/android/ui/e;->r:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 211
    iget v2, p0, Lcom/yelp/android/ui/e;->p:I

    if-eq v2, v0, :cond_0

    .line 212
    iput v0, p0, Lcom/yelp/android/ui/e;->p:I

    .line 213
    iget v0, p0, Lcom/yelp/android/ui/e;->q:I

    int-to-float v0, v0

    iget v2, p0, Lcom/yelp/android/ui/e;->p:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/yelp/android/ui/e;->r:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/yelp/android/ui/e;->o:F

    .line 214
    invoke-virtual {p0}, Lcom/yelp/android/ui/e;->invalidate()V

    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/e;->n:[Ljava/lang/Runnable;

    iget v2, p0, Lcom/yelp/android/ui/e;->r:I

    iget v3, p0, Lcom/yelp/android/ui/e;->p:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 220
    :cond_0
    :goto_4
    return v1

    :cond_1
    move v0, v2

    .line 205
    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v1, v2

    .line 220
    goto :goto_4
.end method
