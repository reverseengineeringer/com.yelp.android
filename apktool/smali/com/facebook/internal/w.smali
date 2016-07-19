.class public Lcom/facebook/internal/w;
.super Landroid/app/Dialog;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/w$a;,
        Lcom/facebook/internal/w$b;,
        Lcom/facebook/internal/w$c;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/facebook/internal/w$c;

.field private d:Landroid/webkit/WebView;

.field private e:Landroid/app/ProgressDialog;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/FrameLayout;

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 113
    const v0, 0x1030010

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/internal/w;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 80
    const-string/jumbo v0, "fbconnect://success"

    iput-object v0, p0, Lcom/facebook/internal/w;->b:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lcom/facebook/internal/w;->h:Z

    .line 87
    iput-boolean v1, p0, Lcom/facebook/internal/w;->i:Z

    .line 88
    iput-boolean v1, p0, Lcom/facebook/internal/w;->j:Z

    .line 126
    iput-object p2, p0, Lcom/facebook/internal/w;->a:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/internal/w$c;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 80
    const-string/jumbo v0, "fbconnect://success"

    iput-object v0, p0, Lcom/facebook/internal/w;->b:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lcom/facebook/internal/w;->h:Z

    .line 87
    iput-boolean v1, p0, Lcom/facebook/internal/w;->i:Z

    .line 88
    iput-boolean v1, p0, Lcom/facebook/internal/w;->j:Z

    .line 141
    if-nez p3, :cond_0

    .line 142
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 146
    :cond_0
    const-string/jumbo v0, "redirect_uri"

    const-string/jumbo v1, "fbconnect://success"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string/jumbo v0, "display"

    const-string/jumbo v1, "touch"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/facebook/internal/s;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/facebook/internal/s;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "dialog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/facebook/internal/u;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/w;->a:Ljava/lang/String;

    .line 155
    iput-object p5, p0, Lcom/facebook/internal/w;->c:Lcom/facebook/internal/w$c;

    .line 156
    return-void
.end method

.method private a(IFII)I
    .locals 6

    .prologue
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 316
    int-to-float v2, p1

    div-float/2addr v2, p2

    float-to-int v2, v2

    .line 318
    if-gt v2, p3, :cond_1

    .line 319
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 330
    :cond_0
    :goto_0
    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0

    .line 320
    :cond_1
    if-ge v2, p4, :cond_0

    .line 325
    sub-int v2, p4, v2

    int-to-double v2, v2

    sub-int v4, p4, p3

    int-to-double v4, v4

    div-double/2addr v2, v4

    mul-double/2addr v2, v0

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/internal/w;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/internal/w;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 380
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/internal/w;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 381
    new-instance v1, Lcom/facebook/internal/w$3;

    invoke-virtual {p0}, Lcom/facebook/internal/w;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/facebook/internal/w$3;-><init>(Lcom/facebook/internal/w;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/internal/w;->d:Landroid/webkit/WebView;

    .line 393
    iget-object v1, p0, Lcom/facebook/internal/w;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 394
    iget-object v1, p0, Lcom/facebook/internal/w;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 395
    iget-object v1, p0, Lcom/facebook/internal/w;->d:Landroid/webkit/WebView;

    new-instance v2, Lcom/facebook/internal/w$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/facebook/internal/w$b;-><init>(Lcom/facebook/internal/w;Lcom/facebook/internal/w$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 396
    iget-object v1, p0, Lcom/facebook/internal/w;->d:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 397
    iget-object v1, p0, Lcom/facebook/internal/w;->d:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/facebook/internal/w;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/facebook/internal/w;->d:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    iget-object v1, p0, Lcom/facebook/internal/w;->d:Landroid/webkit/WebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 401
    iget-object v1, p0, Lcom/facebook/internal/w;->d:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 402
    iget-object v1, p0, Lcom/facebook/internal/w;->d:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 403
    iget-object v1, p0, Lcom/facebook/internal/w;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 404
    iget-object v1, p0, Lcom/facebook/internal/w;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 405
    iget-object v1, p0, Lcom/facebook/internal/w;->d:Landroid/webkit/WebView;

    new-instance v2, Lcom/facebook/internal/w$4;

    invoke-direct {v2, p0}, Lcom/facebook/internal/w$4;-><init>(Lcom/facebook/internal/w;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 416
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 417
    iget-object v1, p0, Lcom/facebook/internal/w;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 418
    const/high16 v1, -0x34000000    # -3.3554432E7f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 419
    iget-object v1, p0, Lcom/facebook/internal/w;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 420
    return-void
.end method

.method static synthetic a(Lcom/facebook/internal/w;Z)Z
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/facebook/internal/w;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/internal/w;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/facebook/internal/w;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/facebook/internal/w;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/internal/w;->e:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/internal/w;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/internal/w;->g:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/internal/w;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/internal/w;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 362
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/facebook/internal/w;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/internal/w;->f:Landroid/widget/ImageView;

    .line 364
    iget-object v0, p0, Lcom/facebook/internal/w;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/facebook/internal/w$2;

    invoke-direct {v1, p0}, Lcom/facebook/internal/w$2;-><init>(Lcom/facebook/internal/w;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    invoke-virtual {p0}, Lcom/facebook/internal/w;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/o$c;->com_facebook_close:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/facebook/internal/w;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 375
    iget-object v0, p0, Lcom/facebook/internal/w;->f:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 376
    return-void
.end method

.method static synthetic f(Lcom/facebook/internal/w;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/internal/w;->f:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 267
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/u;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 270
    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/u;->c(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 272
    return-object v1
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/facebook/internal/w;->c:Lcom/facebook/internal/w$c;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/internal/w;->h:Z

    if-nez v0, :cond_0

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/internal/w;->h:Z

    .line 336
    iget-object v0, p0, Lcom/facebook/internal/w;->c:Lcom/facebook/internal/w$c;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/internal/w$c;->a(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 337
    invoke-virtual {p0}, Lcom/facebook/internal/w;->dismiss()V

    .line 339
    :cond_0
    return-void
.end method

.method public a(Lcom/facebook/internal/w$c;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/facebook/internal/w;->c:Lcom/facebook/internal/w$c;

    .line 165
    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/facebook/internal/w;->c:Lcom/facebook/internal/w$c;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/internal/w;->h:Z

    if-nez v0, :cond_0

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/internal/w;->h:Z

    .line 345
    instance-of v0, p1, Lcom/facebook/FacebookException;

    if-eqz v0, :cond_1

    .line 346
    check-cast p1, Lcom/facebook/FacebookException;

    .line 350
    :goto_0
    iget-object v0, p0, Lcom/facebook/internal/w;->c:Lcom/facebook/internal/w$c;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/facebook/internal/w$c;->a(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 351
    invoke-virtual {p0}, Lcom/facebook/internal/w;->dismiss()V

    .line 353
    :cond_0
    return-void

    .line 348
    :cond_1
    new-instance v0, Lcom/facebook/FacebookException;

    invoke-direct {v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_0
.end method

.method protected a()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/facebook/internal/w;->h:Z

    return v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/facebook/internal/w;->b:Ljava/lang/String;

    .line 264
    return-void
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/facebook/internal/w;->j:Z

    return v0
.end method

.method protected c()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/facebook/internal/w;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/facebook/internal/w;->c:Lcom/facebook/internal/w$c;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/internal/w;->h:Z

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/facebook/internal/w;->a(Ljava/lang/Throwable;)V

    .line 359
    :cond_0
    return-void
.end method

.method public d()V
    .locals 6

    .prologue
    const/16 v5, 0x320

    .line 288
    invoke-virtual {p0}, Lcom/facebook/internal/w;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 289
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 290
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 291
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 294
    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v1, :cond_0

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 295
    :goto_0
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v3, :cond_1

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 297
    :goto_1
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x1e0

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/facebook/internal/w;->a(IFII)I

    move-result v0

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 300
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x500

    invoke-direct {p0, v1, v3, v5, v4}, Lcom/facebook/internal/w;->a(IFII)I

    move-result v1

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 304
    invoke-virtual {p0}, Lcom/facebook/internal/w;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 305
    return-void

    .line 294
    :cond_0
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    .line 295
    :cond_1
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/facebook/internal/w;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/facebook/internal/w;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 190
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/internal/w;->i:Z

    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/facebook/internal/w;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/internal/w;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/facebook/internal/w;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 195
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 196
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/internal/w;->i:Z

    .line 213
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 214
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 218
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 220
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/internal/w;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/internal/w;->e:Landroid/app/ProgressDialog;

    .line 221
    iget-object v0, p0, Lcom/facebook/internal/w;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 222
    iget-object v0, p0, Lcom/facebook/internal/w;->e:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/internal/w;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/o$f;->com_facebook_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/facebook/internal/w;->e:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/facebook/internal/w$1;

    invoke-direct {v1, p0}, Lcom/facebook/internal/w$1;-><init>(Lcom/facebook/internal/w;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 230
    invoke-virtual {p0, v4}, Lcom/facebook/internal/w;->requestWindowFeature(I)Z

    .line 231
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/facebook/internal/w;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/internal/w;->g:Landroid/widget/FrameLayout;

    .line 234
    invoke-virtual {p0}, Lcom/facebook/internal/w;->d()V

    .line 235
    invoke-virtual {p0}, Lcom/facebook/internal/w;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 238
    invoke-virtual {p0}, Lcom/facebook/internal/w;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 244
    invoke-direct {p0}, Lcom/facebook/internal/w;->e()V

    .line 249
    iget-object v0, p0, Lcom/facebook/internal/w;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 251
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/internal/w;->a(I)V

    .line 256
    iget-object v0, p0, Lcom/facebook/internal/w;->g:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/facebook/internal/w;->f:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v0, p0, Lcom/facebook/internal/w;->g:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/internal/w;->setContentView(Landroid/view/View;)V

    .line 260
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/internal/w;->i:Z

    .line 207
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 208
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/facebook/internal/w;->cancel()V

    .line 182
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 201
    invoke-virtual {p0}, Lcom/facebook/internal/w;->d()V

    .line 202
    return-void
.end method
