.class Lcom/yelp/android/ab/c;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "GifDrawable.java"


# instance fields
.field a:Lcom/yelp/android/p/d;

.field b:[B

.field c:Landroid/content/Context;

.field d:Lcom/bumptech/glide/load/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field f:I

.field g:Lcom/yelp/android/p/b;

.field h:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

.field i:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/yelp/android/p/d;[BLandroid/content/Context;Lcom/bumptech/glide/load/f;IILcom/yelp/android/p/b;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/p/d;",
            "[B",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Lcom/yelp/android/p/b;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/e;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 326
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 327
    if-nez p9, :cond_0

    .line 328
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The first frame of the GIF must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ab/c;->a:Lcom/yelp/android/p/d;

    .line 331
    iput-object p2, p0, Lcom/yelp/android/ab/c;->b:[B

    .line 332
    iput-object p8, p0, Lcom/yelp/android/ab/c;->h:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    .line 333
    iput-object p9, p0, Lcom/yelp/android/ab/c;->i:Landroid/graphics/Bitmap;

    .line 334
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ab/c;->c:Landroid/content/Context;

    .line 335
    iput-object p4, p0, Lcom/yelp/android/ab/c;->d:Lcom/bumptech/glide/load/f;

    .line 336
    iput p5, p0, Lcom/yelp/android/ab/c;->e:I

    .line 337
    iput p6, p0, Lcom/yelp/android/ab/c;->f:I

    .line 338
    iput-object p7, p0, Lcom/yelp/android/ab/c;->g:Lcom/yelp/android/p/b;

    .line 339
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 362
    new-instance v0, Lcom/yelp/android/ab/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/ab/b;-><init>(Lcom/yelp/android/ab/c;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/yelp/android/ab/c;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
