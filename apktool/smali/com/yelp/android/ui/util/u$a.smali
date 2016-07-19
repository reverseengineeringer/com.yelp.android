.class public Lcom/yelp/android/ui/util/u$a;
.super Ljava/lang/Object;
.source "ImageLoaderRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/util/t;

.field private b:Landroid/net/Uri;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/yelp/android/ui/util/t$c;

.field private i:Lcom/yelp/android/ui/util/t$b;

.field private j:Landroid/widget/ImageView;

.field private k:Z


# direct methods
.method protected constructor <init>(Lcom/yelp/android/ui/util/t;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/util/u$a;->k:Z

    .line 114
    if-nez p2, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "URI cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ui/util/u$a;->a:Lcom/yelp/android/ui/util/t;

    .line 118
    iput-object p2, p0, Lcom/yelp/android/ui/util/u$a;->b:Landroid/net/Uri;

    .line 119
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/u$a;)Lcom/yelp/android/ui/util/t;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/util/u$a;->a:Lcom/yelp/android/ui/util/t;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/util/u$a;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/util/u$a;->b:Landroid/net/Uri;

    return-object v0
.end method

.method private b(II)Z
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 208
    if-gtz p1, :cond_0

    if-ne p1, v0, :cond_2

    :cond_0
    if-gtz p2, :cond_1

    if-ne p2, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/ui/util/u$a;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/yelp/android/ui/util/u$a;->c:I

    return v0
.end method

.method private c(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/yelp/android/ui/util/u$a;->a:Lcom/yelp/android/ui/util/t;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/t;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/content/d;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 202
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/yelp/android/ui/util/u$a;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/yelp/android/ui/util/u$a;->d:I

    return v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/util/u$a;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/yelp/android/ui/util/u$a;->e:I

    return v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/util/u$a;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/yelp/android/ui/util/u$a;->f:I

    return v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/util/u$a;)I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/yelp/android/ui/util/u$a;->g:I

    return v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/util/u$a;)Lcom/yelp/android/ui/util/t$c;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/util/u$a;->h:Lcom/yelp/android/ui/util/t$c;

    return-object v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/util/u$a;)Lcom/yelp/android/ui/util/t$b;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/util/u$a;->i:Lcom/yelp/android/ui/util/t$b;

    return-object v0
.end method

.method static synthetic j(Lcom/yelp/android/ui/util/u$a;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/util/u$a;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/util/u$a;)Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/u$a;->k:Z

    return v0
.end method


# virtual methods
.method public a(I)Lcom/yelp/android/ui/util/u$a;
    .locals 2

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/u$a;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Drawable res ID must be valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iput p1, p0, Lcom/yelp/android/ui/util/u$a;->e:I

    .line 136
    return-object p0
.end method

.method public a(II)Lcom/yelp/android/ui/util/u$a;
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/util/u$a;->b(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Width and height must be > 0 or SIZE_ORIGINAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iput p1, p0, Lcom/yelp/android/ui/util/u$a;->c:I

    .line 127
    iput p2, p0, Lcom/yelp/android/ui/util/u$a;->d:I

    .line 128
    return-object p0
.end method

.method public a(Lcom/yelp/android/ui/util/t$c;)Lcom/yelp/android/ui/util/u$a;
    .locals 2

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "OnImageLoadedListener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ui/util/u$a;->h:Lcom/yelp/android/ui/util/t$c;

    .line 160
    return-object p0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/util/u$a;->k:Z

    .line 196
    new-instance v0, Lcom/yelp/android/ui/util/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/util/u;-><init>(Lcom/yelp/android/ui/util/u$a;Lcom/yelp/android/ui/util/u$1;)V

    invoke-static {v0}, Lcom/yelp/android/ui/util/u;->a(Lcom/yelp/android/ui/util/u;)V

    .line 197
    return-void
.end method

.method public a(Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 169
    if-nez p1, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "View cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ui/util/u$a;->j:Landroid/widget/ImageView;

    .line 173
    new-instance v0, Lcom/yelp/android/ui/util/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/util/u;-><init>(Lcom/yelp/android/ui/util/u$a;Lcom/yelp/android/ui/util/u$1;)V

    invoke-static {v0}, Lcom/yelp/android/ui/util/u;->a(Lcom/yelp/android/ui/util/u;)V

    .line 174
    return-void
.end method

.method public a(Lcom/yelp/android/ui/util/t$b;)V
    .locals 2

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ImageLoaderTarget cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/util/u$a;->c:I

    iget v1, p0, Lcom/yelp/android/ui/util/u$a;->d:I

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/util/u$a;->b(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Width and height must be > 0 or SIZE_ORIGINAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1
    iput-object p1, p0, Lcom/yelp/android/ui/util/u$a;->i:Lcom/yelp/android/ui/util/t$b;

    .line 191
    new-instance v0, Lcom/yelp/android/ui/util/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/util/u;-><init>(Lcom/yelp/android/ui/util/u$a;Lcom/yelp/android/ui/util/u$1;)V

    invoke-static {v0}, Lcom/yelp/android/ui/util/u;->a(Lcom/yelp/android/ui/util/u;)V

    .line 192
    return-void
.end method

.method public b(I)Lcom/yelp/android/ui/util/u$a;
    .locals 2

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/u$a;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Drawable res ID must be valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    iput p1, p0, Lcom/yelp/android/ui/util/u$a;->f:I

    .line 144
    return-object p0
.end method
