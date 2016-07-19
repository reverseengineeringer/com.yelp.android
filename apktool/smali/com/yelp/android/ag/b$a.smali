.class Lcom/yelp/android/ag/b$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "GifDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ag/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/yelp/android/u/c;

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

.field g:Lcom/yelp/android/u/a$a;

.field h:Lcom/yelp/android/x/c;

.field i:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/yelp/android/u/c;[BLandroid/content/Context;Lcom/bumptech/glide/load/f;IILcom/yelp/android/u/a$a;Lcom/yelp/android/x/c;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/u/c;",
            "[B",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Lcom/yelp/android/u/a$a;",
            "Lcom/yelp/android/x/c;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 332
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 333
    if-nez p9, :cond_0

    .line 334
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "The first frame of the GIF must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ag/b$a;->a:Lcom/yelp/android/u/c;

    .line 337
    iput-object p2, p0, Lcom/yelp/android/ag/b$a;->b:[B

    .line 338
    iput-object p8, p0, Lcom/yelp/android/ag/b$a;->h:Lcom/yelp/android/x/c;

    .line 339
    iput-object p9, p0, Lcom/yelp/android/ag/b$a;->i:Landroid/graphics/Bitmap;

    .line 340
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ag/b$a;->c:Landroid/content/Context;

    .line 341
    iput-object p4, p0, Lcom/yelp/android/ag/b$a;->d:Lcom/bumptech/glide/load/f;

    .line 342
    iput p5, p0, Lcom/yelp/android/ag/b$a;->e:I

    .line 343
    iput p6, p0, Lcom/yelp/android/ag/b$a;->f:I

    .line 344
    iput-object p7, p0, Lcom/yelp/android/ag/b$a;->g:Lcom/yelp/android/u/a$a;

    .line 345
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 368
    new-instance v0, Lcom/yelp/android/ag/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/ag/b;-><init>(Lcom/yelp/android/ag/b$a;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/yelp/android/ag/b$a;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
