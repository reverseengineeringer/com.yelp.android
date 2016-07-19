.class public Lcom/yelp/android/m/e;
.super Landroid/support/v7/app/ActionBar;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroid/support/v7/internal/widget/ActionBarOverlayLayout$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/m/e$a;
    }
.end annotation


# static fields
.field static final synthetic h:Z

.field private static final i:Landroid/view/animation/Interpolator;

.field private static final j:Landroid/view/animation/Interpolator;

.field private static final k:Z


# instance fields
.field private A:Z

.field private B:I

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Lcom/yelp/android/p/f;

.field private I:Z

.field a:Lcom/yelp/android/m/e$a;

.field b:Lcom/yelp/android/r/a;

.field c:Lcom/yelp/android/r/a$a;

.field d:Z

.field final e:Landroid/support/v4/view/bd;

.field final f:Landroid/support/v4/view/bd;

.field final g:Landroid/support/v4/view/bf;

.field private l:Landroid/content/Context;

.field private m:Landroid/content/Context;

.field private n:Landroid/app/Activity;

.field private o:Landroid/app/Dialog;

.field private p:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

.field private q:Landroid/support/v7/internal/widget/ActionBarContainer;

.field private r:Landroid/support/v7/internal/widget/f;

.field private s:Landroid/support/v7/internal/widget/ActionBarContextView;

.field private t:Landroid/view/View;

.field private u:Landroid/support/v7/internal/widget/k;

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private w:I

.field private x:Z

.field private y:Z

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/app/ActionBar$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    const-class v0, Lcom/yelp/android/m/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/yelp/android/m/e;->h:Z

    .line 79
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/yelp/android/m/e;->i:Landroid/view/animation/Interpolator;

    .line 80
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/yelp/android/m/e;->j:Landroid/view/animation/Interpolator;

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/yelp/android/m/e;->k:Z

    return-void

    :cond_0
    move v0, v2

    .line 75
    goto :goto_0

    :cond_1
    move v1, v2

    .line 85
    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 171
    invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/m/e;->v:Ljava/util/ArrayList;

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/m/e;->w:I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/m/e;->z:Ljava/util/ArrayList;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/m/e;->B:I

    .line 124
    iput-boolean v1, p0, Lcom/yelp/android/m/e;->C:Z

    .line 129
    iput-boolean v1, p0, Lcom/yelp/android/m/e;->G:Z

    .line 137
    new-instance v0, Lcom/yelp/android/m/e$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/m/e$1;-><init>(Lcom/yelp/android/m/e;)V

    iput-object v0, p0, Lcom/yelp/android/m/e;->e:Landroid/support/v4/view/bd;

    .line 154
    new-instance v0, Lcom/yelp/android/m/e$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/m/e$2;-><init>(Lcom/yelp/android/m/e;)V

    iput-object v0, p0, Lcom/yelp/android/m/e;->f:Landroid/support/v4/view/bd;

    .line 162
    new-instance v0, Lcom/yelp/android/m/e$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/m/e$3;-><init>(Lcom/yelp/android/m/e;)V

    iput-object v0, p0, Lcom/yelp/android/m/e;->g:Landroid/support/v4/view/bf;

    .line 172
    iput-object p1, p0, Lcom/yelp/android/m/e;->n:Landroid/app/Activity;

    .line 173
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 175
    invoke-direct {p0, v0}, Lcom/yelp/android/m/e;->b(Landroid/view/View;)V

    .line 176
    if-nez p2, :cond_0

    .line 177
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/m/e;->t:Landroid/view/View;

    .line 179
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 181
    invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/m/e;->v:Ljava/util/ArrayList;

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/m/e;->w:I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/m/e;->z:Ljava/util/ArrayList;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/m/e;->B:I

    .line 124
    iput-boolean v1, p0, Lcom/yelp/android/m/e;->C:Z

    .line 129
    iput-boolean v1, p0, Lcom/yelp/android/m/e;->G:Z

    .line 137
    new-instance v0, Lcom/yelp/android/m/e$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/m/e$1;-><init>(Lcom/yelp/android/m/e;)V

    iput-object v0, p0, Lcom/yelp/android/m/e;->e:Landroid/support/v4/view/bd;

    .line 154
    new-instance v0, Lcom/yelp/android/m/e$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/m/e$2;-><init>(Lcom/yelp/android/m/e;)V

    iput-object v0, p0, Lcom/yelp/android/m/e;->f:Landroid/support/v4/view/bd;

    .line 162
    new-instance v0, Lcom/yelp/android/m/e$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/m/e$3;-><init>(Lcom/yelp/android/m/e;)V

    iput-object v0, p0, Lcom/yelp/android/m/e;->g:Landroid/support/v4/view/bf;

    .line 182
    iput-object p1, p0, Lcom/yelp/android/m/e;->o:Landroid/app/Dialog;

    .line 183
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/m/e;->b(Landroid/view/View;)V

    .line 184
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/m/e;Lcom/yelp/android/p/f;)Lcom/yelp/android/p/f;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/yelp/android/m/e;->H:Lcom/yelp/android/p/f;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/m/e;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/yelp/android/m/e;->C:Z

    return v0
.end method

.method static synthetic a(ZZZ)Z
    .locals 1

    .prologue
    .line 75
    invoke-static {p0, p1, p2}, Lcom/yelp/android/m/e;->b(ZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/yelp/android/m/e;)Landroid/view/View;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/m/e;->t:Landroid/view/View;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 196
    sget v0, Lcom/yelp/android/j/a$f;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lcom/yelp/android/m/e;->p:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    .line 197
    iget-object v0, p0, Lcom/yelp/android/m/e;->p:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/yelp/android/m/e;->p:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroid/support/v7/internal/widget/ActionBarOverlayLayout$a;)V

    .line 200
    :cond_0
    sget v0, Lcom/yelp/android/j/a$f;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/m/e;->c(Landroid/view/View;)Landroid/support/v7/internal/widget/f;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/m/e;->r:Landroid/support/v7/internal/widget/f;

    .line 201
    sget v0, Lcom/yelp/android/j/a$f;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/yelp/android/m/e;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 203
    sget v0, Lcom/yelp/android/j/a$f;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/yelp/android/m/e;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    .line 206
    iget-object v0, p0, Lcom/yelp/android/m/e;->r:Landroid/support/v7/internal/widget/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/m/e;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/m/e;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-nez v0, :cond_2

    .line 207
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " can only be used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "with a compatible window decor layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/m/e;->r:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/m/e;->l:Landroid/content/Context;

    .line 214
    iget-object v0, p0, Lcom/yelp/android/m/e;->r:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->o()I

    move-result v0

    .line 215
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    move v0, v2

    .line 216
    :goto_0
    if-eqz v0, :cond_3

    .line 217
    iput-boolean v2, p0, Lcom/yelp/android/m/e;->x:Z

    .line 220
    :cond_3
    iget-object v3, p0, Lcom/yelp/android/m/e;->l:Landroid/content/Context;

    invoke-static {v3}, Lcom/yelp/android/p/a;->a(Landroid/content/Context;)Lcom/yelp/android/p/a;

    move-result-object v3

    .line 221
    invoke-virtual {v3}, Lcom/yelp/android/p/a;->f()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v0, :cond_8

    :cond_4
    move v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/yelp/android/m/e;->d(Z)V

    .line 222
    invoke-virtual {v3}, Lcom/yelp/android/p/a;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/m/e;->m(Z)V

    .line 224
    iget-object v0, p0, Lcom/yelp/android/m/e;->l:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v4, Lcom/yelp/android/j/a$k;->ActionBar:[I

    sget v5, Lcom/yelp/android/j/a$a;->actionBarStyle:I

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 227
    sget v3, Lcom/yelp/android/j/a$k;->ActionBar_hideOnContentScroll:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 228
    invoke-virtual {p0, v2}, Lcom/yelp/android/m/e;->e(Z)V

    .line 230
    :cond_5
    sget v2, Lcom/yelp/android/j/a$k;->ActionBar_elevation:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 231
    if-eqz v1, :cond_6

    .line 232
    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/m/e;->a(F)V

    .line 234
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 235
    return-void

    :cond_7
    move v0, v1

    .line 215
    goto :goto_0

    :cond_8
    move v0, v1

    .line 221
    goto :goto_1
.end method

.method private static b(ZZZ)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 725
    if-eqz p2, :cond_1

    .line 730
    :cond_0
    :goto_0
    return v0

    .line 727
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 728
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/m/e;)Landroid/support/v7/internal/widget/ActionBarContainer;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/m/e;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method private c(Landroid/view/View;)Landroid/support/v7/internal/widget/f;
    .locals 3

    .prologue
    .line 238
    instance-of v0, p1, Landroid/support/v7/internal/widget/f;

    if-eqz v0, :cond_0

    .line 239
    check-cast p1, Landroid/support/v7/internal/widget/f;

    .line 241
    :goto_0
    return-object p1

    .line 240
    :cond_0
    instance-of v0, p1, Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 241
    check-cast p1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getWrapper()Landroid/support/v7/internal/widget/f;

    move-result-object p1

    goto :goto_0

    .line 243
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string/jumbo v0, "null"

    goto :goto_1
.end method

.method static synthetic d(Lcom/yelp/android/m/e;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/m/e;->p:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/m/e;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/yelp/android/m/e;->D:Z

    return v0
.end method

.method static synthetic f(Lcom/yelp/android/m/e;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/yelp/android/m/e;->E:Z

    return v0
.end method

.method static synthetic g(Lcom/yelp/android/m/e;)Landroid/support/v7/internal/widget/ActionBarContextView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/m/e;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/m/e;)Landroid/support/v7/internal/widget/f;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/m/e;->r:Landroid/support/v7/internal/widget/f;

    return-object v0
.end method

.method static synthetic i(Lcom/yelp/android/m/e;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/m/e;->l:Landroid/content/Context;

    return-object v0
.end method

.method private m(Z)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 263
    iput-boolean p1, p0, Lcom/yelp/android/m/e;->A:Z

    .line 265
    iget-boolean v0, p0, Lcom/yelp/android/m/e;->A:Z

    if-nez v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/yelp/android/m/e;->r:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0, v3}, Landroid/support/v7/internal/widget/f;->a(Landroid/support/v7/internal/widget/k;)V

    .line 267
    iget-object v0, p0, Lcom/yelp/android/m/e;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/yelp/android/m/e;->u:Landroid/support/v7/internal/widget/k;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/internal/widget/k;)V

    .line 272
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/m/e;->j()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 273
    :goto_1
    iget-object v3, p0, Lcom/yelp/android/m/e;->u:Landroid/support/v7/internal/widget/k;

    if-eqz v3, :cond_0

    .line 274
    if-eqz v0, :cond_3

    .line 275
    iget-object v3, p0, Lcom/yelp/android/m/e;->u:Landroid/support/v7/internal/widget/k;

    invoke-virtual {v3, v2}, Landroid/support/v7/internal/widget/k;->setVisibility(I)V

    .line 276
    iget-object v3, p0, Lcom/yelp/android/m/e;->p:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 277
    iget-object v3, p0, Lcom/yelp/android/m/e;->p:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v3}, Landroid/support/v4/view/ai;->w(Landroid/view/View;)V

    .line 283
    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/yelp/android/m/e;->r:Landroid/support/v7/internal/widget/f;

    iget-boolean v3, p0, Lcom/yelp/android/m/e;->A:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    move v3, v1

    :goto_3
    invoke-interface {v4, v3}, Landroid/support/v7/internal/widget/f;->a(Z)V

    .line 284
    iget-object v3, p0, Lcom/yelp/android/m/e;->p:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iget-boolean v4, p0, Lcom/yelp/android/m/e;->A:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    :goto_4
    invoke-virtual {v3, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 285
    return-void

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/m/e;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/internal/widget/k;)V

    .line 270
    iget-object v0, p0, Lcom/yelp/android/m/e;->r:Landroid/support/v7/internal/widget/f;

    iget-object v3, p0, Lcom/yelp/android/m/e;->u:Landroid/support/v7/internal/widget/k;

    invoke-interface {v0, v3}, Landroid/support/v7/internal/widget/f;->a(Landroid/support/v7/internal/widget/k;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 272
    goto :goto_1

    .line 280
    :cond_3
    iget-object v3, p0, Lcom/yelp/android/m/e;->u:Landroid/support/v7/internal/widget/k;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/support/v7/internal/widget/k;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v3, v2

    .line 283
    goto :goto_3

    :cond_5
    move v1, v2

    .line 284
    goto :goto_4
.end method

.method private n(Z)V
    .locals 3

    .prologue
    .line 736
    iget-boolean v0, p0, Lcom/yelp/android/m/e;->D:Z

    iget-boolean v1, p0, Lcom/yelp/android/m/e;->E:Z

    iget-boolean v2, p0, Lcom/yelp/android/m/e;->F:Z

    invoke-static {v0, v1, v2}, Lcom/yelp/android/m/e;->b(ZZZ)Z

    move-result v0

    .line 739
    if-eqz v0, :cond_1

    .line 740
    iget-boolean v0, p0, Lcom/yelp/android/m/e;->G:Z

    if-nez v0, :cond_0

    .line 741
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/m/e;->G:Z

    .line 742
    invoke-virtual {p0, p1}, Lcom/yelp/android/m/e;->j(Z)V

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/m/e;->G:Z

    if-eqz v0, :cond_0

    .line 746
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/m/e;->G:Z

    .line 747
    invoke-virtual {p0, p1}, Lcom/yelp/android/m/e;->k(Z)V

    goto :goto_0
.end method

.method private o()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 653
    iget-boolean v0, p0, Lcom/yelp/android/m/e;->F:Z

    if-nez v0, :cond_1

    .line 654
    iput-boolean v1, p0, Lcom/yelp/android/m/e;->F:Z

    .line 655
    iget-object v0, p0, Lcom/yelp/android/m/e;->p:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/yelp/android/m/e;->p:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 658
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/m/e;->n(Z)V

    .line 660
    :cond_1
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 678
    iget-boolean v0, p0, Lcom/yelp/android/m/e;->F:Z

    if-eqz v0, :cond_1

    .line 679
    iput-boolean v1, p0, Lcom/yelp/android/m/e;->F:Z

    .line 680
    iget-object v0, p0, Lcom/yelp/android/m/e;->p:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/yelp/android/m/e;->p:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 683
    :cond_0
    invoke-direct {p0, v1}, Lcom/yelp/android/m/e;->n(Z)V

    .line 685
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/yelp/android/m/e;->r:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->q()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yelp/android/r/a$a;)Lcom/yelp/android/r/a;
    .locals 3

    .prologue
    .line 493
    iget-object v0, p0, Lcom/yelp/android/m/e;->a:Lcom/yelp/android/m/e$a;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/yelp/android/m/e;->a:Lcom/yelp/android/m/e$a;

    invoke-virtual {v0}, Lcom/yelp/android/m/e$a;->c()V

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/m/e;->p:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 498
    iget-object v0, p0, Lcom/yelp/android/m/e;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->c()V

    .line 499
    new-instance v0, Lcom/yelp/android/m/e$a;

    iget-object v1, p0, Lcom/yelp/android/m/e;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/yelp/android/m/e$a;-><init>(Lcom/yelp/android/m/e;Landroid/content/Context;Lcom/yelp/android/r/a$a;)V

    .line 500
    invoke-virtual {v0}, Lcom/yelp/android/m/e$a;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 501
    invoke-virtual {v0}, Lcom/yelp/android/m/e$a;->d()V

    .line 502
    iget-object v1, p0, Lcom/yelp/android/m/e;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Lcom/yelp/android/r/a;)V

    .line 503
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/yelp/android/m/e;->l(Z)V

    .line 504
    iget-object v1, p0, Lcom/yelp/android/m/e;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 505
    iput-object v0, p0, Lcom/yelp/android/m/e;->a:Lcom/yelp/android/m/e$a;

    .line 508
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/yelp/android/m/e;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, p1}, Landroid/support/v4/view/ai;->h(Landroid/view/View;F)V

    .line 251
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/yelp/android/m/e;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/m/e;->r:Landroid/support/v7/internal/widget/f;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/f;->a()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/m/e;->a(Landroid/view/View;)V

    .line 361
    return-void
.end method

.method public a(II)V
    .locals 4

    .prologue
    .line 453
    iget-object v0, p0, Lcom/yelp/android/m/e;->r:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->o()I

    move-result v0

    .line 454
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 455
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yelp/android/m/e;->x:Z

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/m/e;->r:Landroid/support/v7/internal/widget/f;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Landroid/support/v7/internal/widget/f;->c(I)V

    .line 458
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/yelp/android/m/e;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/yelp/android/p/a;->a(Landroid/content/Context;)Lcom/yelp/android/p/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/p/a;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/m/e;->m(Z)V

    .line 260
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/yelp/android/m/e;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 462
    return-void
.end method

.method public a(Landroid/support/v7/app/ActionBar$a;)V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/yelp/android/m/e;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/yelp/android/m/e;->r:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/f;->a(Landroid/view/View;)V

    .line 1228
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/yelp/android/m/e;->r:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/f;->b(Ljava/lang/CharSequence;)V

    .line 434
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 375
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/m/e;->a(II)V

    .line 376
    return-void

    .line 375
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/yelp/android/m/e;->r:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->o()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/yelp/android/m/e;->l:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/m/e;->a(Ljava/lang/CharSequence;)V

    .line 396
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/yelp/android/m/e;->r:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/f;->a(Ljava/lang/CharSequence;)V

    .line 439
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 380
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/m/e;->a(II)V

    .line 381
    return-void

    .line 380
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/yelp/android/m/e;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/yelp/android/m/e;->r:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/f;->d(I)V

    .line 904
    return-void
.end method

.method public c(Z)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 385
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/m/e;->a(II)V

    .line 386
    return-void

    .line 385
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 646
    iget-boolean v0, p0, Lcom/yelp/android/m/e;->D:Z

    if-eqz v0, :cond_0

    .line 647
    iput-boolean v1, p0, Lcom/yelp/android/m/e;->D:Z

    .line 648
    invoke-direct {p0, v1}, Lcom/yelp/android/m/e;->n(Z)V

    .line 650
    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 320
    iput p1, p0, Lcom/yelp/android/m/e;->B:I

    .line 321
    return-void
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/yelp/android/m/e;->r:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/f;->b(Z)V

    .line 391
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/yelp/android/m/e;->D:Z

    if-nez v0, :cond_0

    .line 672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/m/e;->D:Z

    .line 673
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/m/e;->n(Z)V

    .line 675
    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 696
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/m/e;->p:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 697
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_0
    iput-boolean p1, p0, Lcom/yelp/android/m/e;->d:Z

    .line 701
    iget-object v0, p0, Lcom/yelp/android/m/e;->p:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 702
    return-void
.end method

.method public f()Landroid/content/Context;
    .locals 4

    .prologue
    .line 866
    iget-object v0, p0, Lcom/yelp/android/m/e;->m:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 867
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 868
    iget-object v1, p0, Lcom/yelp/android/m/e;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 869
    sget v2, Lcom/yelp/android/j/a$a;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 870
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 872
    if-eqz v0, :cond_1

    .line 873
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/yelp/android/m/e;->l:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/yelp/android/m/e;->m:Landroid/content/Context;

    .line 878
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/m/e;->m:Landroid/content/Context;

    return-object v0

    .line 875
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/m/e;->l:Landroid/content/Context;

    iput-object v0, p0, Lcom/yelp/android/m/e;->m:Landroid/content/Context;

    goto :goto_0
.end method

.method public f(Z)V
    .locals 1

    .prologue
    .line 1335
    iget-boolean v0, p0, Lcom/yelp/android/m/e;->x:Z

    if-nez v0, :cond_0

    .line 1336
    invoke-virtual {p0, p1}, Lcom/yelp/android/m/e;->a(Z)V

    .line 1338
    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 1

    .prologue
    .line 331
    iput-boolean p1, p0, Lcom/yelp/android/m/e;->I:Z

    .line 332
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/m/e;->H:Lcom/yelp/android/p/f;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/yelp/android/m/e;->H:Lcom/yelp/android/p/f;

    invoke-virtual {v0}, Lcom/yelp/android/p/f;->b()V

    .line 335
    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 3

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/yelp/android/m/e;->y:Z

    if-ne p1, v0, :cond_1

    .line 355
    :cond_0
    return-void

    .line 349
    :cond_1
    iput-boolean p1, p0, Lcom/yelp/android/m/e;->y:Z

    .line 351
    iget-object v0, p0, Lcom/yelp/android/m/e;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 352
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 353
    iget-object v0, p0, Lcom/yelp/android/m/e;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBar$a;

    invoke-interface {v0, p1}, Landroid/support/v7/app/ActionBar$a;->a(Z)V

    .line 352
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/yelp/android/m/e;->r:Landroid/support/v7/internal/widget/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/m/e;->r:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/yelp/android/m/e;->r:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->d()V

    .line 922
    const/4 v0, 0x1

    .line 924
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 312
    iget-object v0, p0, Lcom/yelp/android/m/e;->c:Lcom/yelp/android/r/a$a;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/yelp/android/m/e;->c:Lcom/yelp/android/r/a$a;

    iget-object v1, p0, Lcom/yelp/android/m/e;->b:Lcom/yelp/android/r/a;

    invoke-interface {v0, v1}, Lcom/yelp/android/r/a$a;->a(Lcom/yelp/android/r/a;)V

    .line 314
    iput-object v2, p0, Lcom/yelp/android/m/e;->b:Lcom/yelp/android/r/a;

    .line 315
    iput-object v2, p0, Lcom/yelp/android/m/e;->c:Lcom/yelp/android/r/a$a;

    .line 317
    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 0

    .prologue
    .line 641
    iput-boolean p1, p0, Lcom/yelp/android/m/e;->C:Z

    .line 642
    return-void
.end method

.method public j()I
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/yelp/android/m/e;->r:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/f;->p()I

    move-result v0

    return v0
.end method

.method public j(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 753
    iget-object v0, p0, Lcom/yelp/android/m/e;->H:Lcom/yelp/android/p/f;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/yelp/android/m/e;->H:Lcom/yelp/android/p/f;

    invoke-virtual {v0}, Lcom/yelp/android/p/f;->b()V

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/m/e;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 758
    iget v0, p0, Lcom/yelp/android/m/e;->B:I

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/yelp/android/m/e;->k:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/yelp/android/m/e;->I:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_5

    .line 761
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/m/e;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Landroid/support/v4/view/ai;->b(Landroid/view/View;F)V

    .line 762
    iget-object v0, p0, Lcom/yelp/android/m/e;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 763
    if-eqz p1, :cond_2

    .line 764
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 765
    iget-object v2, p0, Lcom/yelp/android/m/e;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 766
    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 768
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/m/e;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v1, v0}, Landroid/support/v4/view/ai;->b(Landroid/view/View;F)V

    .line 769
    new-instance v1, Lcom/yelp/android/p/f;

    invoke-direct {v1}, Lcom/yelp/android/p/f;-><init>()V

    .line 770
    iget-object v2, p0, Lcom/yelp/android/m/e;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v2}, Landroid/support/v4/view/ai;->s(Landroid/view/View;)Landroid/support/v4/view/az;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v4/view/az;->c(F)Landroid/support/v4/view/az;

    move-result-object v2

    .line 771
    iget-object v3, p0, Lcom/yelp/android/m/e;->g:Landroid/support/v4/view/bf;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/az;->a(Landroid/support/v4/view/bf;)Landroid/support/v4/view/az;

    .line 772
    invoke-virtual {v1, v2}, Lcom/yelp/android/p/f;->a(Landroid/support/v4/view/az;)Lcom/yelp/android/p/f;

    .line 773
    iget-boolean v2, p0, Lcom/yelp/android/m/e;->C:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/yelp/android/m/e;->t:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 774
    iget-object v2, p0, Lcom/yelp/android/m/e;->t:Landroid/view/View;

    invoke-static {v2, v0}, Landroid/support/v4/view/ai;->b(Landroid/view/View;F)V

    .line 775
    iget-object v0, p0, Lcom/yelp/android/m/e;->t:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ai;->s(Landroid/view/View;)Landroid/support/v4/view/az;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/az;->c(F)Landroid/support/v4/view/az;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/p/f;->a(Landroid/support/v4/view/az;)Lcom/yelp/android/p/f;

    .line 777
    :cond_3
    sget-object v0, Lcom/yelp/android/m/e;->j:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Lcom/yelp/android/p/f;->a(Landroid/view/animation/Interpolator;)Lcom/yelp/android/p/f;

    .line 778
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/p/f;->a(J)Lcom/yelp/android/p/f;

    .line 786
    iget-object v0, p0, Lcom/yelp/android/m/e;->f:Landroid/support/v4/view/bd;

    invoke-virtual {v1, v0}, Lcom/yelp/android/p/f;->a(Landroid/support/v4/view/bd;)Lcom/yelp/android/p/f;

    .line 787
    iput-object v1, p0, Lcom/yelp/android/m/e;->H:Lcom/yelp/android/p/f;

    .line 788
    invoke-virtual {v1}, Lcom/yelp/android/p/f;->a()V

    .line 797
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/m/e;->p:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_4

    .line 798
    iget-object v0, p0, Lcom/yelp/android/m/e;->p:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v4/view/ai;->w(Landroid/view/View;)V

    .line 800
    :cond_4
    return-void

    .line 790
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/m/e;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ai;->c(Landroid/view/View;F)V

    .line 791
    iget-object v0, p0, Lcom/yelp/android/m/e;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Landroid/support/v4/view/ai;->b(Landroid/view/View;F)V

    .line 792
    iget-boolean v0, p0, Lcom/yelp/android/m/e;->C:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yelp/android/m/e;->t:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 793
    iget-object v0, p0, Lcom/yelp/android/m/e;->t:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ai;->b(Landroid/view/View;F)V

    .line 795
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/m/e;->f:Landroid/support/v4/view/bd;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/bd;->b(Landroid/view/View;)V

    goto :goto_0

    .line 764
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public k()V
    .locals 1

    .prologue
    .line 663
    iget-boolean v0, p0, Lcom/yelp/android/m/e;->E:Z

    if-eqz v0, :cond_0

    .line 664
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/m/e;->E:Z

    .line 665
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yelp/android/m/e;->n(Z)V

    .line 667
    :cond_0
    return-void
.end method

.method public k(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 803
    iget-object v0, p0, Lcom/yelp/android/m/e;->H:Lcom/yelp/android/p/f;

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/yelp/android/m/e;->H:Lcom/yelp/android/p/f;

    invoke-virtual {v0}, Lcom/yelp/android/p/f;->b()V

    .line 807
    :cond_0
    iget v0, p0, Lcom/yelp/android/m/e;->B:I

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/yelp/android/m/e;->k:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/yelp/android/m/e;->I:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    .line 809
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/m/e;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ai;->c(Landroid/view/View;F)V

    .line 810
    iget-object v0, p0, Lcom/yelp/android/m/e;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 811
    new-instance v1, Lcom/yelp/android/p/f;

    invoke-direct {v1}, Lcom/yelp/android/p/f;-><init>()V

    .line 812
    iget-object v0, p0, Lcom/yelp/android/m/e;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 813
    if-eqz p1, :cond_2

    .line 814
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 815
    iget-object v3, p0, Lcom/yelp/android/m/e;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 816
    aget v2, v2, v4

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 818
    :cond_2
    iget-object v2, p0, Lcom/yelp/android/m/e;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v2}, Landroid/support/v4/view/ai;->s(Landroid/view/View;)Landroid/support/v4/view/az;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/az;->c(F)Landroid/support/v4/view/az;

    move-result-object v2

    .line 819
    iget-object v3, p0, Lcom/yelp/android/m/e;->g:Landroid/support/v4/view/bf;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/az;->a(Landroid/support/v4/view/bf;)Landroid/support/v4/view/az;

    .line 820
    invoke-virtual {v1, v2}, Lcom/yelp/android/p/f;->a(Landroid/support/v4/view/az;)Lcom/yelp/android/p/f;

    .line 821
    iget-boolean v2, p0, Lcom/yelp/android/m/e;->C:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/yelp/android/m/e;->t:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 822
    iget-object v2, p0, Lcom/yelp/android/m/e;->t:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ai;->s(Landroid/view/View;)Landroid/support/v4/view/az;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/az;->c(F)Landroid/support/v4/view/az;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/p/f;->a(Landroid/support/v4/view/az;)Lcom/yelp/android/p/f;

    .line 824
    :cond_3
    sget-object v0, Lcom/yelp/android/m/e;->i:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v0}, Lcom/yelp/android/p/f;->a(Landroid/view/animation/Interpolator;)Lcom/yelp/android/p/f;

    .line 825
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/p/f;->a(J)Lcom/yelp/android/p/f;

    .line 826
    iget-object v0, p0, Lcom/yelp/android/m/e;->e:Landroid/support/v4/view/bd;

    invoke-virtual {v1, v0}, Lcom/yelp/android/p/f;->a(Landroid/support/v4/view/bd;)Lcom/yelp/android/p/f;

    .line 827
    iput-object v1, p0, Lcom/yelp/android/m/e;->H:Lcom/yelp/android/p/f;

    .line 828
    invoke-virtual {v1}, Lcom/yelp/android/p/f;->a()V

    .line 832
    :goto_0
    return-void

    .line 830
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/m/e;->e:Landroid/support/v4/view/bd;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/bd;->b(Landroid/view/View;)V

    goto :goto_0

    .line 814
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public l()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 688
    iget-boolean v0, p0, Lcom/yelp/android/m/e;->E:Z

    if-nez v0, :cond_0

    .line 689
    iput-boolean v1, p0, Lcom/yelp/android/m/e;->E:Z

    .line 690
    invoke-direct {p0, v1}, Lcom/yelp/android/m/e;->n(Z)V

    .line 692
    :cond_0
    return-void
.end method

.method public l(Z)V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const-wide/16 v4, 0x64

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 841
    if-eqz p1, :cond_0

    .line 842
    invoke-direct {p0}, Lcom/yelp/android/m/e;->o()V

    .line 848
    :goto_0
    if-eqz p1, :cond_1

    .line 849
    iget-object v0, p0, Lcom/yelp/android/m/e;->r:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0, v3, v4, v5}, Landroid/support/v7/internal/widget/f;->a(IJ)Landroid/support/v4/view/az;

    move-result-object v0

    .line 851
    iget-object v1, p0, Lcom/yelp/android/m/e;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v2, v6, v7}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(IJ)Landroid/support/v4/view/az;

    move-result-object v1

    .line 859
    :goto_1
    new-instance v2, Lcom/yelp/android/p/f;

    invoke-direct {v2}, Lcom/yelp/android/p/f;-><init>()V

    .line 860
    invoke-virtual {v2, v0, v1}, Lcom/yelp/android/p/f;->a(Landroid/support/v4/view/az;Landroid/support/v4/view/az;)Lcom/yelp/android/p/f;

    .line 861
    invoke-virtual {v2}, Lcom/yelp/android/p/f;->a()V

    .line 863
    return-void

    .line 844
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/m/e;->p()V

    goto :goto_0

    .line 854
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/m/e;->r:Landroid/support/v7/internal/widget/f;

    invoke-interface {v0, v2, v6, v7}, Landroid/support/v7/internal/widget/f;->a(IJ)Landroid/support/v4/view/az;

    move-result-object v1

    .line 856
    iget-object v0, p0, Lcom/yelp/android/m/e;->s:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0, v3, v4, v5}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(IJ)Landroid/support/v4/view/az;

    move-result-object v0

    goto :goto_1
.end method

.method public m()V
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/yelp/android/m/e;->H:Lcom/yelp/android/p/f;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/yelp/android/m/e;->H:Lcom/yelp/android/p/f;

    invoke-virtual {v0}, Lcom/yelp/android/p/f;->b()V

    .line 910
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/m/e;->H:Lcom/yelp/android/p/f;

    .line 912
    :cond_0
    return-void
.end method

.method public n()V
    .locals 0

    .prologue
    .line 916
    return-void
.end method
