.class public Lcom/yelp/android/ui/util/cp;
.super Ljava/lang/Object;
.source "UtilUI.java"


# direct methods
.method public static a(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 616
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 618
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 619
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 620
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 621
    iget v0, v1, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 256
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput p1, v0, v2

    .line 259
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 260
    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 261
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 262
    return v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 235
    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const-string/jumbo v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 238
    :cond_0
    const-string/jumbo v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    const-string/jumbo v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 241
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;II)Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 336
    invoke-static {p0, v0, v0}, Lcom/yelp/android/ui/util/cp;->c(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;I)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 362
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 363
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 364
    new-instance v1, Landroid/util/Pair;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static a(Landroid/view/View;II)Landroid/view/View;
    .locals 2

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 279
    if-nez v1, :cond_1

    .line 280
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 281
    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 284
    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    .line 288
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static a()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 479
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public static a(Landroid/view/View;)Lcom/yelp/android/ui/util/cq;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/yelp/android/ui/util/cq;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/cq;-><init>()V

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iput v1, v0, Lcom/yelp/android/ui/util/cq;->a:I

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, v0, Lcom/yelp/android/ui/util/cq;->b:I

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    iput v1, v0, Lcom/yelp/android/ui/util/cq;->c:I

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iput v1, v0, Lcom/yelp/android/ui/util/cq;->d:I

    .line 85
    return-object v0
.end method

.method private static a(Landroid/content/Context;F)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 166
    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    float-to-double v6, p1

    cmpl-double v1, v4, v6

    if-nez v1, :cond_0

    .line 167
    float-to-int v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 173
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 174
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    move v1, v2

    .line 177
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/yelp/android/bf/j;->star_rating:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 500
    if-eqz p0, :cond_0

    .line 501
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 502
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 503
    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 504
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 296
    const-string/jumbo v0, ""

    invoke-static {p0, v0, p1}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 297
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 292
    invoke-static {p0, p1, p2}, Lcom/yelp/android/ui/util/cp;->b(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 293
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    .line 453
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 454
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-static {v0, p1, v1}, Lcom/yelp/android/ui/util/cp;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method public static a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 106
    invoke-static {p0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/view/View;)Lcom/yelp/android/ui/util/cq;

    move-result-object v0

    .line 107
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    invoke-static {p0, v0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/view/View;Lcom/yelp/android/ui/util/cq;)V

    .line 109
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 652
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 653
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 657
    :goto_0
    return-void

    .line 655
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public static a(Landroid/view/View;Lcom/yelp/android/ui/util/cq;)V
    .locals 4

    .prologue
    .line 96
    iget v0, p1, Lcom/yelp/android/ui/util/cq;->a:I

    iget v1, p1, Lcom/yelp/android/ui/util/cq;->b:I

    iget v2, p1, Lcom/yelp/android/ui/util/cq;->c:I

    iget v3, p1, Lcom/yelp/android/ui/util/cq;->d:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 97
    return-void
.end method

.method public static a(Landroid/widget/ImageView;F)V
    .locals 1

    .prologue
    .line 131
    const/high16 v0, 0x41200000    # 10.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 132
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 133
    invoke-static {v0, p1}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method public static a(Landroid/widget/LinearLayout;)V
    .locals 2

    .prologue
    .line 515
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 517
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1e

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 519
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x28

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 520
    return-void
.end method

.method public static a(Landroid/widget/ListView;IZ)V
    .locals 1

    .prologue
    .line 586
    if-eqz p2, :cond_1

    .line 587
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-gt v0, p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    .line 589
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 590
    return-void

    .line 587
    :cond_0
    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;F)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 147
    if-eqz v4, :cond_0

    .line 148
    const/high16 v5, 0x41200000    # 10.0f

    mul-float/2addr v5, p1

    float-to-int v5, v5

    div-int/lit8 v5, v5, 0x5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 146
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 152
    invoke-static {v0, p1}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v0

    .line 153
    const-string/jumbo v2, "%s,%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 154
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 458
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, " [directory]"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, " [read] "

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "[write]"

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " [size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    :cond_0
    const-string/jumbo v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 470
    if-eqz v2, :cond_4

    .line 471
    const/4 v0, 0x0

    :goto_3
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4}, Lcom/yelp/android/ui/util/cp;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 461
    :cond_1
    const-string/jumbo v0, " [not-directory]"

    goto/16 :goto_0

    .line 462
    :cond_2
    const-string/jumbo v0, " [no-read]"

    goto/16 :goto_1

    .line 463
    :cond_3
    const-string/jumbo v0, "[no-write]"

    goto :goto_2

    .line 476
    :cond_4
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 212
    if-eqz p2, :cond_0

    .line 213
    invoke-static {p0, p2}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 214
    if-eqz v1, :cond_0

    .line 215
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 216
    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 217
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 220
    const/4 v0, 0x1

    .line 223
    :cond_0
    return v0
.end method

.method public static a(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 548
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 635
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 637
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 638
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 639
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 640
    iget v0, v1, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 300
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static b()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 489
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public static b(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 678
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 680
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 681
    return-void
.end method

.method public static b(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 602
    int-to-float v0, p1

    const v1, 0x3b808081

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 603
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
    .locals 3

    .prologue
    .line 318
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method
