.class public Lcom/yelp/android/ui/ActivityMonocle;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityMonocle.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/support/o;


# static fields
.field static a:Landroid/app/Dialog;


# instance fields
.field public b:Lcom/yelp/android/ui/e;

.field public c:Landroid/widget/ImageView;

.field public d:I

.field private e:Lcom/yelp/android/ui/o;

.field private f:Landroid/opengl/GLSurfaceView;

.field private g:Landroid/view/ViewGroup;

.field private h:Lcom/yelp/android/ui/q;

.field private i:Lcom/yelp/android/ui/MonocleEngine;

.field private j:Lcom/yelp/android/ui/m;

.field private k:Lcom/yelp/android/ui/l;

.field private l:Lcom/yelp/android/ui/d;

.field private m:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 413
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/ActivityMonocle;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/yelp/android/ui/ActivityMonocle;->m:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/ActivityMonocle;)Lcom/yelp/android/ui/m;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->j:Lcom/yelp/android/ui/m;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/ActivityMonocle;)Lcom/yelp/android/ui/o;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->e:Lcom/yelp/android/ui/o;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/ActivityMonocle;)Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->m:Landroid/hardware/Camera;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/yelp/android/ui/ActivityMonocle;->d()V

    .line 324
    new-instance v0, Lcom/yelp/android/ui/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/d;-><init>(Lcom/yelp/android/ui/ActivityMonocle;Lcom/yelp/android/ui/a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->l:Lcom/yelp/android/ui/d;

    .line 325
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->l:Lcom/yelp/android/ui/d;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 326
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 329
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->e:Lcom/yelp/android/ui/o;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/o;->a(Landroid/hardware/Camera;)Z

    .line 330
    invoke-direct {p0}, Lcom/yelp/android/ui/ActivityMonocle;->e()V

    .line 331
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->m:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->m:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 333
    iput-object v1, p0, Lcom/yelp/android/ui/ActivityMonocle;->m:Landroid/hardware/Camera;

    .line 335
    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->l:Lcom/yelp/android/ui/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->l:Lcom/yelp/android/ui/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/d;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 340
    const-string/jumbo v0, "Monocle"

    const-string/jumbo v1, "Old camera retriever still resident, let\'s clean it up"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->l:Lcom/yelp/android/ui/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/d;->cancel(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->l:Lcom/yelp/android/ui/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/d;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 355
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->l:Lcom/yelp/android/ui/d;

    .line 356
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 347
    const-string/jumbo v1, "Monocle"

    const-string/jumbo v2, "interrupted exception occurred"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 348
    :catch_1
    move-exception v0

    .line 350
    const-string/jumbo v1, "Monocle"

    const-string/jumbo v2, "excution exception occurred"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 351
    :catch_2
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 359
    invoke-virtual {p0, p0, v0, v0}, Lcom/yelp/android/ui/ActivityMonocle;->onProvidersRequired(Lcom/yelp/android/ui/activities/support/o;ZI)V

    .line 360
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/yelp/android/ui/ActivityMonocle;->finish()V

    .line 365
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 419
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->Monocle:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/yelp/android/ui/ActivityMonocle;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public k_()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->j:Lcom/yelp/android/ui/m;

    invoke-virtual {v0}, Lcom/yelp/android/ui/m;->b()V

    .line 370
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    :try_start_0
    new-instance v0, Lcom/yelp/android/ui/MonocleEngine;

    invoke-direct {v0}, Lcom/yelp/android/ui/MonocleEngine;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->i:Lcom/yelp/android/ui/MonocleEngine;

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->i:Lcom/yelp/android/ui/MonocleEngine;

    invoke-virtual {v0}, Lcom/yelp/android/ui/MonocleEngine;->ClearObjects()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    invoke-virtual {p0}, Lcom/yelp/android/ui/ActivityMonocle;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x480

    const/16 v2, 0x480

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 150
    new-instance v0, Lcom/yelp/android/ui/o;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->e:Lcom/yelp/android/ui/o;

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->e:Lcom/yelp/android/ui/o;

    const/16 v1, 0x3e9

    invoke-static {v0, v1}, Lcom/yelp/android/ui/u;->b(Landroid/view/SurfaceView;I)V

    .line 155
    new-instance v0, Lcom/yelp/android/ui/j;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->f:Landroid/opengl/GLSurfaceView;

    .line 157
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->f:Landroid/opengl/GLSurfaceView;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 158
    new-instance v0, Lcom/yelp/android/ui/l;

    invoke-direct {v0}, Lcom/yelp/android/ui/l;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->k:Lcom/yelp/android/ui/l;

    .line 159
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->f:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/yelp/android/ui/ActivityMonocle;->k:Lcom/yelp/android/ui/l;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->f:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->f:Landroid/opengl/GLSurfaceView;

    const/16 v1, 0x3ec

    invoke-static {v0, v1}, Lcom/yelp/android/ui/u;->b(Landroid/view/SurfaceView;I)V

    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->j:Lcom/yelp/android/ui/m;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lcom/yelp/android/ui/m;

    iget-object v2, p0, Lcom/yelp/android/ui/ActivityMonocle;->i:Lcom/yelp/android/ui/MonocleEngine;

    iget-object v3, p0, Lcom/yelp/android/ui/ActivityMonocle;->k:Lcom/yelp/android/ui/l;

    iget-object v4, p0, Lcom/yelp/android/ui/ActivityMonocle;->f:Landroid/opengl/GLSurfaceView;

    iget-object v5, p0, Lcom/yelp/android/ui/ActivityMonocle;->e:Lcom/yelp/android/ui/o;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/m;-><init>(Lcom/yelp/android/ui/ActivityMonocle;Lcom/yelp/android/ui/MonocleEngine;Lcom/yelp/android/ui/l;Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V

    iput-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->j:Lcom/yelp/android/ui/m;

    .line 184
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->j()Lcom/yelp/android/database/m;

    move-result-object v0

    .line 185
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f070126

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/ActivityMonocle;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f070120

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/ActivityMonocle;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f070123

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/ActivityMonocle;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 189
    const-string/jumbo v2, "restaurants"

    invoke-virtual {v0, v2}, Lcom/yelp/android/database/m;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;

    move-result-object v2

    .line 190
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Category;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 193
    :cond_1
    const-string/jumbo v3, "bars"

    invoke-virtual {v0, v3}, Lcom/yelp/android/database/m;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;

    move-result-object v0

    .line 194
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 195
    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Category;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 197
    :cond_2
    new-instance v3, Lcom/yelp/android/ui/e;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Runnable;

    const/4 v5, 0x0

    new-instance v6, Lcom/yelp/android/ui/b;

    iget-object v7, p0, Lcom/yelp/android/ui/ActivityMonocle;->j:Lcom/yelp/android/ui/m;

    invoke-direct {v6, p0, v7, v2}, Lcom/yelp/android/ui/b;-><init>(Lcom/yelp/android/ui/ActivityMonocle;Lcom/yelp/android/ui/m;Lcom/yelp/android/serializable/Category;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lcom/yelp/android/ui/b;

    iget-object v7, p0, Lcom/yelp/android/ui/ActivityMonocle;->j:Lcom/yelp/android/ui/m;

    invoke-direct {v6, p0, v7, v0}, Lcom/yelp/android/ui/b;-><init>(Lcom/yelp/android/ui/ActivityMonocle;Lcom/yelp/android/ui/m;Lcom/yelp/android/serializable/Category;)V

    aput-object v6, v4, v5

    const/4 v0, 0x2

    new-instance v5, Lcom/yelp/android/ui/b;

    iget-object v6, p0, Lcom/yelp/android/ui/ActivityMonocle;->j:Lcom/yelp/android/ui/m;

    const/4 v7, 0x0

    invoke-direct {v5, p0, v6, v7}, Lcom/yelp/android/ui/b;-><init>(Lcom/yelp/android/ui/ActivityMonocle;Lcom/yelp/android/ui/m;Lcom/yelp/android/serializable/Category;)V

    aput-object v5, v4, v0

    invoke-direct {v3, p0, v1, v4}, Lcom/yelp/android/ui/e;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/yelp/android/ui/ActivityMonocle;->b:Lcom/yelp/android/ui/e;

    .line 205
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->g:Landroid/view/ViewGroup;

    .line 206
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->g:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/ActivityMonocle;->setContentView(Landroid/view/View;)V

    .line 209
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->c:Landroid/widget/ImageView;

    .line 210
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->c:Landroid/widget/ImageView;

    const v1, 0x7f020280

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 211
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->c:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 213
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 215
    const/16 v1, 0x55

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 216
    const/16 v1, 0xc

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 217
    const/16 v1, 0xc

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 218
    iget-object v1, p0, Lcom/yelp/android/ui/ActivityMonocle;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->c:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v1

    .line 242
    :try_start_1
    const-class v1, Landroid/view/SurfaceView;

    const-string/jumbo v3, "setZOrderMediaOverlay"

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 243
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yelp/android/ui/ActivityMonocle;->e:Lcom/yelp/android/ui/o;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 244
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yelp/android/ui/ActivityMonocle;->f:Landroid/opengl/GLSurfaceView;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    .line 252
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 254
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 255
    iget-object v1, p0, Lcom/yelp/android/ui/ActivityMonocle;->b:Lcom/yelp/android/ui/e;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yelp/android/ui/ActivityMonocle;->b:Lcom/yelp/android/ui/e;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yelp/android/ui/ActivityMonocle;->c:Landroid/widget/ImageView;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 260
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    new-instance v1, Lcom/yelp/android/ui/f;

    const-string/jumbo v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/ActivityMonocle;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    invoke-direct {v1, p0, v0}, Lcom/yelp/android/ui/f;-><init>(Lcom/yelp/android/ui/ActivityMonocle;Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Lcom/yelp/android/ui/ActivityMonocle;->h:Lcom/yelp/android/ui/q;

    .line 270
    :goto_1
    new-instance v0, Lcom/yelp/android/ui/dialogs/bn;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/dialogs/bn;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yelp/android/ui/ActivityMonocle;->a:Landroid/app/Dialog;

    .line 271
    sget-object v0, Lcom/yelp/android/ui/ActivityMonocle;->a:Landroid/app/Dialog;

    new-instance v1, Lcom/yelp/android/ui/c;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/c;-><init>(Lcom/yelp/android/ui/ActivityMonocle;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 278
    sget-object v0, Lcom/yelp/android/ui/ActivityMonocle;->a:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 279
    sget-object v0, Lcom/yelp/android/ui/ActivityMonocle;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 282
    const/4 v0, 0x2

    iput v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->d:I

    .line 283
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->b:Lcom/yelp/android/ui/e;

    iget v1, p0, Lcom/yelp/android/ui/ActivityMonocle;->d:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/e;->a(I)V

    .line 284
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->j:Lcom/yelp/android/ui/m;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/m;->a(Lcom/yelp/android/serializable/Category;)V

    .line 287
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->j:Lcom/yelp/android/ui/m;

    invoke-virtual {v0}, Lcom/yelp/android/ui/m;->b()V

    .line 288
    :goto_2
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->i:Lcom/yelp/android/ui/MonocleEngine;

    .line 127
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 128
    const v1, 0x7f0703ce

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07041b

    new-instance v3, Lcom/yelp/android/ui/a;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/a;-><init>(Lcom/yelp/android/ui/ActivityMonocle;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 135
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 139
    const-string/jumbo v0, "ActivityMonocle"

    const-string/jumbo v1, "Library not loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 245
    :catch_1
    move-exception v0

    .line 246
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 247
    :catch_2
    move-exception v0

    .line 249
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yelp/android/ui/ActivityMonocle;->f:Landroid/opengl/GLSurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yelp/android/ui/ActivityMonocle;->e:Lcom/yelp/android/ui/o;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 264
    :cond_3
    new-instance v1, Lcom/yelp/android/ui/q;

    const-string/jumbo v0, "sensor"

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/ActivityMonocle;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    invoke-direct {v1, p0, v0}, Lcom/yelp/android/ui/q;-><init>(Lcom/yelp/android/ui/ActivityMonocle;Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Lcom/yelp/android/ui/ActivityMonocle;->h:Lcom/yelp/android/ui/q;

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 312
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 313
    sget-object v0, Lcom/yelp/android/ui/ActivityMonocle;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 314
    sget-object v0, Lcom/yelp/android/ui/ActivityMonocle;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 315
    const/4 v0, 0x0

    sput-object v0, Lcom/yelp/android/ui/ActivityMonocle;->a:Landroid/app/Dialog;

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->j:Lcom/yelp/android/ui/m;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->j:Lcom/yelp/android/ui/m;

    invoke-virtual {v0}, Lcom/yelp/android/ui/m;->c()V

    .line 320
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 303
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->i:Lcom/yelp/android/ui/MonocleEngine;

    if-eqz v0, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/yelp/android/ui/ActivityMonocle;->d()V

    .line 305
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->f:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 306
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->h:Lcom/yelp/android/ui/q;

    invoke-virtual {v0}, Lcom/yelp/android/ui/q;->c()V

    .line 308
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 292
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 293
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->i:Lcom/yelp/android/ui/MonocleEngine;

    if-eqz v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/yelp/android/ui/ActivityMonocle;->c()V

    .line 295
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->h:Lcom/yelp/android/ui/q;

    invoke-virtual {v0}, Lcom/yelp/android/ui/q;->b()V

    .line 296
    iget-object v0, p0, Lcom/yelp/android/ui/ActivityMonocle;->f:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 298
    :cond_0
    return-void
.end method
