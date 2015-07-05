.class public Lcom/yelp/android/ab/b;
.super Lcom/yelp/android/z/b;
.source "GifDrawable.java"

# interfaces
.implements Lcom/yelp/android/ab/j;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Rect;

.field private final c:Lcom/yelp/android/ab/g;

.field private final d:Lcom/yelp/android/ab/c;

.field private final e:Lcom/yelp/android/p/a;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/p/b;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/bumptech/glide/load/f;IILcom/yelp/android/p/d;[BLandroid/graphics/Bitmap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/p/b;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/e;",
            "Lcom/bumptech/glide/load/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Lcom/yelp/android/p/d;",
            "[B",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/yelp/android/ab/c;

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object v3, p1

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/ab/c;-><init>(Lcom/yelp/android/p/d;[BLandroid/content/Context;Lcom/bumptech/glide/load/f;IILcom/yelp/android/p/b;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/yelp/android/ab/b;-><init>(Lcom/yelp/android/ab/c;)V

    .line 75
    return-void
.end method

.method constructor <init>(Lcom/yelp/android/ab/c;)V
    .locals 5

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/yelp/android/z/b;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ab/b;->a:Landroid/graphics/Paint;

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ab/b;->b:Landroid/graphics/Rect;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ab/b;->i:Z

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/ab/b;->k:I

    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "GifState must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ab/b;->d:Lcom/yelp/android/ab/c;

    .line 83
    new-instance v0, Lcom/yelp/android/p/a;

    iget-object v1, p1, Lcom/yelp/android/ab/c;->g:Lcom/yelp/android/p/b;

    invoke-direct {v0, v1}, Lcom/yelp/android/p/a;-><init>(Lcom/yelp/android/p/b;)V

    iput-object v0, p0, Lcom/yelp/android/ab/b;->e:Lcom/yelp/android/p/a;

    .line 84
    iget-object v0, p0, Lcom/yelp/android/ab/b;->e:Lcom/yelp/android/p/a;

    iget-object v1, p1, Lcom/yelp/android/ab/c;->a:Lcom/yelp/android/p/d;

    iget-object v2, p1, Lcom/yelp/android/ab/c;->b:[B

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/p/a;->a(Lcom/yelp/android/p/d;[B)V

    .line 85
    new-instance v0, Lcom/yelp/android/ab/g;

    iget-object v1, p1, Lcom/yelp/android/ab/c;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ab/b;->e:Lcom/yelp/android/p/a;

    iget v3, p1, Lcom/yelp/android/ab/c;->e:I

    iget v4, p1, Lcom/yelp/android/ab/c;->f:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/ab/g;-><init>(Landroid/content/Context;Lcom/yelp/android/p/a;II)V

    iput-object v0, p0, Lcom/yelp/android/ab/b;->c:Lcom/yelp/android/ab/g;

    .line 86
    iget-object v0, p0, Lcom/yelp/android/ab/b;->c:Lcom/yelp/android/ab/g;

    iget-object v1, p1, Lcom/yelp/android/ab/c;->d:Lcom/bumptech/glide/load/f;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ab/g;->a(Lcom/bumptech/glide/load/f;)V

    .line 87
    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ab/b;->j:I

    .line 132
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/yelp/android/ab/b;->c:Lcom/yelp/android/ab/g;

    invoke-virtual {v0}, Lcom/yelp/android/ab/g;->b()V

    .line 162
    invoke-virtual {p0}, Lcom/yelp/android/ab/b;->invalidateSelf()V

    .line 163
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 167
    iget-object v0, p0, Lcom/yelp/android/ab/b;->e:Lcom/yelp/android/p/a;

    invoke-virtual {v0}, Lcom/yelp/android/p/a;->c()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/yelp/android/ab/b;->invalidateSelf()V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ab/b;->f:Z

    if-nez v0, :cond_0

    .line 170
    iput-boolean v1, p0, Lcom/yelp/android/ab/b;->f:Z

    .line 171
    iget-object v0, p0, Lcom/yelp/android/ab/b;->c:Lcom/yelp/android/ab/g;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ab/g;->a(Lcom/yelp/android/ab/j;)V

    .line 172
    invoke-virtual {p0}, Lcom/yelp/android/ab/b;->invalidateSelf()V

    goto :goto_0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ab/b;->f:Z

    .line 178
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 300
    if-gtz p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    if-nez p1, :cond_1

    .line 306
    iget-object v0, p0, Lcom/yelp/android/ab/b;->e:Lcom/yelp/android/p/a;

    invoke-virtual {v0}, Lcom/yelp/android/p/a;->f()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ab/b;->k:I

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_1
    iput p1, p0, Lcom/yelp/android/ab/b;->k:I

    goto :goto_0
.end method

.method public a(Lcom/bumptech/glide/load/f;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    if-nez p2, :cond_0

    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The first frame of the GIF must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    if-nez p1, :cond_1

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The frame transformation must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ab/b;->d:Lcom/yelp/android/ab/c;

    iput-object p1, v0, Lcom/yelp/android/ab/c;->d:Lcom/bumptech/glide/load/f;

    .line 110
    iget-object v0, p0, Lcom/yelp/android/ab/b;->d:Lcom/yelp/android/ab/c;

    iput-object p2, v0, Lcom/yelp/android/ab/c;->i:Landroid/graphics/Bitmap;

    .line 111
    iget-object v0, p0, Lcom/yelp/android/ab/b;->c:Lcom/yelp/android/ab/g;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ab/g;->a(Lcom/bumptech/glide/load/f;)V

    .line 112
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/yelp/android/ab/b;->d:Lcom/yelp/android/ab/c;

    iget-object v0, v0, Lcom/yelp/android/ab/c;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b(I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 252
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/ab/b;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/yelp/android/ab/b;->stop()V

    .line 254
    invoke-direct {p0}, Lcom/yelp/android/ab/b;->h()V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ab/b;->f:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/yelp/android/ab/b;->invalidateSelf()V

    .line 263
    iget-object v0, p0, Lcom/yelp/android/ab/b;->e:Lcom/yelp/android/p/a;

    invoke-virtual {v0}, Lcom/yelp/android/p/a;->c()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    .line 264
    iget v0, p0, Lcom/yelp/android/ab/b;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/ab/b;->j:I

    .line 267
    :cond_2
    iget v0, p0, Lcom/yelp/android/ab/b;->k:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/yelp/android/ab/b;->j:I

    iget v1, p0, Lcom/yelp/android/ab/b;->k:I

    if-lt v0, v1, :cond_3

    .line 268
    invoke-virtual {p0}, Lcom/yelp/android/ab/b;->stop()V

    goto :goto_0

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ab/b;->c:Lcom/yelp/android/ab/g;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ab/g;->a(Lcom/yelp/android/ab/j;)V

    goto :goto_0
.end method

.method public c()Lcom/bumptech/glide/load/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/yelp/android/ab/b;->d:Lcom/yelp/android/ab/c;

    iget-object v0, v0, Lcom/yelp/android/ab/c;->d:Lcom/bumptech/glide/load/f;

    return-object v0
.end method

.method public d()[B
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yelp/android/ab/b;->d:Lcom/yelp/android/ab/c;

    iget-object v0, v0, Lcom/yelp/android/ab/c;->b:[B

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/yelp/android/ab/b;->h:Z

    if-eqz v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ab/b;->l:Z

    if-eqz v0, :cond_1

    .line 224
    const/16 v0, 0x77

    invoke-virtual {p0}, Lcom/yelp/android/ab/b;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/yelp/android/ab/b;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/yelp/android/ab/b;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ab/b;->b:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ab/b;->l:Z

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ab/b;->c:Lcom/yelp/android/ab/g;

    invoke-virtual {v0}, Lcom/yelp/android/ab/g;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 229
    if-eqz v0, :cond_2

    .line 230
    :goto_1
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/ab/b;->b:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/yelp/android/ab/b;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ab/b;->d:Lcom/yelp/android/ab/c;

    iget-object v0, v0, Lcom/yelp/android/ab/c;->i:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method public e()I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yelp/android/ab/b;->e:Lcom/yelp/android/p/a;

    invoke-virtual {v0}, Lcom/yelp/android/p/a;->c()I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 2

    .prologue
    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ab/b;->h:Z

    .line 284
    iget-object v0, p0, Lcom/yelp/android/ab/b;->d:Lcom/yelp/android/ab/c;

    iget-object v0, v0, Lcom/yelp/android/ab/c;->h:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    iget-object v1, p0, Lcom/yelp/android/ab/b;->d:Lcom/yelp/android/ab/c;

    iget-object v1, v1, Lcom/yelp/android/ab/c;->i:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/e;->a(Landroid/graphics/Bitmap;)Z

    .line 285
    iget-object v0, p0, Lcom/yelp/android/ab/b;->c:Lcom/yelp/android/ab/g;

    invoke-virtual {v0}, Lcom/yelp/android/ab/g;->b()V

    .line 286
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/yelp/android/ab/b;->d:Lcom/yelp/android/ab/c;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/yelp/android/ab/b;->d:Lcom/yelp/android/ab/c;

    iget-object v0, v0, Lcom/yelp/android/ab/c;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/yelp/android/ab/b;->d:Lcom/yelp/android/ab/c;

    iget-object v0, v0, Lcom/yelp/android/ab/c;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 246
    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/yelp/android/ab/b;->f:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/yelp/android/z/b;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ab/b;->l:Z

    .line 215
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/yelp/android/ab/b;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 236
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/yelp/android/ab/b;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 241
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/yelp/android/ab/b;->i:Z

    .line 183
    if-nez p1, :cond_1

    .line 184
    invoke-direct {p0}, Lcom/yelp/android/ab/b;->j()V

    .line 188
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/yelp/android/z/b;->setVisible(ZZ)Z

    move-result v0

    return v0

    .line 185
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ab/b;->g:Z

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/yelp/android/ab/b;->i()V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ab/b;->g:Z

    .line 137
    invoke-direct {p0}, Lcom/yelp/android/ab/b;->g()V

    .line 138
    iget-boolean v0, p0, Lcom/yelp/android/ab/b;->i:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/yelp/android/ab/b;->i()V

    .line 141
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ab/b;->g:Z

    .line 146
    invoke-direct {p0}, Lcom/yelp/android/ab/b;->j()V

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/yelp/android/ab/b;->h()V

    .line 155
    :cond_0
    return-void
.end method
