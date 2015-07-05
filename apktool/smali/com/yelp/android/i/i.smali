.class public Lcom/yelp/android/i/i;
.super Landroid/support/v7/app/ActionBar;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroid/support/v7/internal/widget/l;


# static fields
.field static final synthetic h:Z

.field private static final i:Z


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Lcom/yelp/android/l/h;

.field private H:Z

.field a:Lcom/yelp/android/i/m;

.field b:Lcom/yelp/android/m/a;

.field c:Lcom/yelp/android/m/b;

.field d:Z

.field final e:Landroid/support/v4/view/ex;

.field final f:Landroid/support/v4/view/ex;

.field final g:Landroid/support/v4/view/ez;

.field private j:Landroid/content/Context;

.field private k:Landroid/content/Context;

.field private l:Landroid/support/v4/app/FragmentActivity;

.field private m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

.field private n:Landroid/support/v7/internal/widget/ActionBarContainer;

.field private o:Landroid/support/v7/internal/widget/ah;

.field private p:Landroid/support/v7/internal/widget/ActionBarContextView;

.field private q:Landroid/support/v7/internal/widget/ActionBarContainer;

.field private r:Landroid/view/View;

.field private s:Landroid/support/v7/internal/widget/ap;

.field private t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/app/a;",
            ">;"
        }
    .end annotation
.end field

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    const-class v0, Lcom/yelp/android/i/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/yelp/android/i/i;->h:Z

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/yelp/android/i/i;->i:Z

    return-void

    :cond_0
    move v0, v2

    .line 75
    goto :goto_0

    :cond_1
    move v1, v2

    .line 82
    goto :goto_1
.end method

.method public constructor <init>(Landroid/support/v7/app/ActionBarActivity;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 172
    invoke-direct {p0}, Landroid/support/v7/app/ActionBar;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/i/i;->t:Ljava/util/ArrayList;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/i/i;->u:I

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/i/i;->x:Ljava/util/ArrayList;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/i/i;->A:I

    .line 122
    iput-boolean v1, p0, Lcom/yelp/android/i/i;->B:Z

    .line 127
    iput-boolean v1, p0, Lcom/yelp/android/i/i;->F:Z

    .line 135
    new-instance v0, Lcom/yelp/android/i/j;

    invoke-direct {v0, p0}, Lcom/yelp/android/i/j;-><init>(Lcom/yelp/android/i/i;)V

    iput-object v0, p0, Lcom/yelp/android/i/i;->e:Landroid/support/v4/view/ex;

    .line 155
    new-instance v0, Lcom/yelp/android/i/k;

    invoke-direct {v0, p0}, Lcom/yelp/android/i/k;-><init>(Lcom/yelp/android/i/i;)V

    iput-object v0, p0, Lcom/yelp/android/i/i;->f:Landroid/support/v4/view/ex;

    .line 163
    new-instance v0, Lcom/yelp/android/i/l;

    invoke-direct {v0, p0}, Lcom/yelp/android/i/l;-><init>(Lcom/yelp/android/i/i;)V

    iput-object v0, p0, Lcom/yelp/android/i/i;->g:Landroid/support/v4/view/ez;

    .line 173
    iput-object p1, p0, Lcom/yelp/android/i/i;->l:Landroid/support/v4/app/FragmentActivity;

    .line 174
    invoke-virtual {p1}, Landroid/support/v7/app/ActionBarActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 176
    invoke-direct {p0, v0}, Lcom/yelp/android/i/i;->b(Landroid/view/View;)V

    .line 177
    if-nez p2, :cond_0

    .line 178
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/i/i;->r:Landroid/view/View;

    .line 180
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/i/i;Lcom/yelp/android/l/h;)Lcom/yelp/android/l/h;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/yelp/android/i/i;->G:Lcom/yelp/android/l/h;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/i/i;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/yelp/android/i/i;->B:Z

    return v0
.end method

.method static synthetic a(ZZZ)Z
    .locals 1

    .prologue
    .line 75
    invoke-static {p0, p1, p2}, Lcom/yelp/android/i/i;->b(ZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/yelp/android/i/i;)Landroid/view/View;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/i/i;->r:Landroid/view/View;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    sget v0, Lcom/yelp/android/g/g;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Lcom/yelp/android/i/i;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    .line 198
    iget-object v0, p0, Lcom/yelp/android/i/i;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/yelp/android/i/i;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroid/support/v7/internal/widget/l;)V

    .line 201
    :cond_0
    sget v0, Lcom/yelp/android/g/g;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/i/i;->c(Landroid/view/View;)Landroid/support/v7/internal/widget/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/i/i;->o:Landroid/support/v7/internal/widget/ah;

    .line 202
    sget v0, Lcom/yelp/android/g/g;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContextView;

    iput-object v0, p0, Lcom/yelp/android/i/i;->p:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 204
    sget v0, Lcom/yelp/android/g/g;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/yelp/android/i/i;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    .line 207
    sget v0, Lcom/yelp/android/g/g;->split_action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Lcom/yelp/android/i/i;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    .line 209
    iget-object v0, p0, Lcom/yelp/android/i/i;->o:Landroid/support/v7/internal/widget/ah;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/i/i;->p:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/i/i;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-nez v0, :cond_2

    .line 210
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

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/i/i;->o:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/i/i;->j:Landroid/content/Context;

    .line 215
    iget-object v0, p0, Lcom/yelp/android/i/i;->o:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/yelp/android/i/i;->y:I

    .line 219
    iget-object v0, p0, Lcom/yelp/android/i/i;->o:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->p()I

    move-result v0

    .line 220
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    move v0, v1

    .line 221
    :goto_1
    if-eqz v0, :cond_3

    .line 222
    iput-boolean v1, p0, Lcom/yelp/android/i/i;->v:Z

    .line 225
    :cond_3
    iget-object v3, p0, Lcom/yelp/android/i/i;->j:Landroid/content/Context;

    invoke-static {v3}, Lcom/yelp/android/l/a;->a(Landroid/content/Context;)Lcom/yelp/android/l/a;

    move-result-object v3

    .line 226
    invoke-virtual {v3}, Lcom/yelp/android/l/a;->f()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v0, :cond_9

    :cond_4
    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/yelp/android/i/i;->d(Z)V

    .line 227
    invoke-virtual {v3}, Lcom/yelp/android/l/a;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/i/i;->m(Z)V

    .line 229
    iget-object v0, p0, Lcom/yelp/android/i/i;->j:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v4, Lcom/yelp/android/g/l;->ActionBar:[I

    sget v5, Lcom/yelp/android/g/b;->actionBarStyle:I

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 232
    sget v3, Lcom/yelp/android/g/l;->ActionBar_hideOnContentScroll:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 233
    invoke-virtual {p0, v1}, Lcom/yelp/android/i/i;->e(Z)V

    .line 235
    :cond_5
    sget v1, Lcom/yelp/android/g/l;->ActionBar_elevation:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 236
    if-eqz v1, :cond_6

    .line 237
    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/i/i;->a(F)V

    .line 239
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 240
    return-void

    :cond_7
    move v0, v2

    .line 215
    goto :goto_0

    :cond_8
    move v0, v2

    .line 220
    goto :goto_1

    :cond_9
    move v0, v2

    .line 226
    goto :goto_2
.end method

.method private static b(ZZZ)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 738
    if-eqz p2, :cond_1

    .line 743
    :cond_0
    :goto_0
    return v0

    .line 740
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 741
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/i/i;)Landroid/support/v7/internal/widget/ActionBarContainer;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/i/i;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method private c(Landroid/view/View;)Landroid/support/v7/internal/widget/ah;
    .locals 3

    .prologue
    .line 243
    instance-of v0, p1, Landroid/support/v7/internal/widget/ah;

    if-eqz v0, :cond_0

    .line 244
    check-cast p1, Landroid/support/v7/internal/widget/ah;

    .line 246
    :goto_0
    return-object p1

    .line 245
    :cond_0
    instance-of v0, p1, Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 246
    check-cast p1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getWrapper()Landroid/support/v7/internal/widget/ah;

    move-result-object p1

    goto :goto_0

    .line 248
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic d(Lcom/yelp/android/i/i;)Landroid/support/v7/internal/widget/ActionBarContainer;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/i/i;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/i/i;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/yelp/android/i/i;->y:I

    return v0
.end method

.method static synthetic f(Lcom/yelp/android/i/i;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/i/i;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/i/i;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/yelp/android/i/i;->C:Z

    return v0
.end method

.method static synthetic h(Lcom/yelp/android/i/i;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/yelp/android/i/i;->D:Z

    return v0
.end method

.method static synthetic i(Lcom/yelp/android/i/i;)Landroid/support/v7/internal/widget/ActionBarContextView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/i/i;->p:Landroid/support/v7/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic j(Lcom/yelp/android/i/i;)Landroid/support/v7/internal/widget/ah;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/i/i;->o:Landroid/support/v7/internal/widget/ah;

    return-object v0
.end method

.method static synthetic k(Lcom/yelp/android/i/i;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/i/i;->j:Landroid/content/Context;

    return-object v0
.end method

.method private m(Z)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 271
    iput-boolean p1, p0, Lcom/yelp/android/i/i;->z:Z

    .line 273
    iget-boolean v0, p0, Lcom/yelp/android/i/i;->z:Z

    if-nez v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/yelp/android/i/i;->o:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0, v3}, Landroid/support/v7/internal/widget/ah;->a(Landroid/support/v7/internal/widget/ap;)V

    .line 275
    iget-object v0, p0, Lcom/yelp/android/i/i;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/yelp/android/i/i;->s:Landroid/support/v7/internal/widget/ap;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/internal/widget/ap;)V

    .line 280
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/i/i;->j()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 281
    :goto_1
    iget-object v3, p0, Lcom/yelp/android/i/i;->s:Landroid/support/v7/internal/widget/ap;

    if-eqz v3, :cond_0

    .line 282
    if-eqz v0, :cond_3

    .line 283
    iget-object v3, p0, Lcom/yelp/android/i/i;->s:Landroid/support/v7/internal/widget/ap;

    invoke-virtual {v3, v2}, Landroid/support/v7/internal/widget/ap;->setVisibility(I)V

    .line 284
    iget-object v3, p0, Lcom/yelp/android/i/i;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 285
    iget-object v3, p0, Lcom/yelp/android/i/i;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v3}, Landroid/support/v4/view/ce;->t(Landroid/view/View;)V

    .line 291
    :cond_0
    :goto_2
    iget-object v4, p0, Lcom/yelp/android/i/i;->o:Landroid/support/v7/internal/widget/ah;

    iget-boolean v3, p0, Lcom/yelp/android/i/i;->z:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    move v3, v1

    :goto_3
    invoke-interface {v4, v3}, Landroid/support/v7/internal/widget/ah;->a(Z)V

    .line 292
    iget-object v3, p0, Lcom/yelp/android/i/i;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iget-boolean v4, p0, Lcom/yelp/android/i/i;->z:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    :goto_4
    invoke-virtual {v3, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 293
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/i/i;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/internal/widget/ap;)V

    .line 278
    iget-object v0, p0, Lcom/yelp/android/i/i;->o:Landroid/support/v7/internal/widget/ah;

    iget-object v3, p0, Lcom/yelp/android/i/i;->s:Landroid/support/v7/internal/widget/ap;

    invoke-interface {v0, v3}, Landroid/support/v7/internal/widget/ah;->a(Landroid/support/v7/internal/widget/ap;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 280
    goto :goto_1

    .line 288
    :cond_3
    iget-object v3, p0, Lcom/yelp/android/i/i;->s:Landroid/support/v7/internal/widget/ap;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/support/v7/internal/widget/ap;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v3, v2

    .line 291
    goto :goto_3

    :cond_5
    move v1, v2

    .line 292
    goto :goto_4
.end method

.method private n(Z)V
    .locals 3

    .prologue
    .line 749
    iget-boolean v0, p0, Lcom/yelp/android/i/i;->C:Z

    iget-boolean v1, p0, Lcom/yelp/android/i/i;->D:Z

    iget-boolean v2, p0, Lcom/yelp/android/i/i;->E:Z

    invoke-static {v0, v1, v2}, Lcom/yelp/android/i/i;->b(ZZZ)Z

    move-result v0

    .line 752
    if-eqz v0, :cond_1

    .line 753
    iget-boolean v0, p0, Lcom/yelp/android/i/i;->F:Z

    if-nez v0, :cond_0

    .line 754
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/i/i;->F:Z

    .line 755
    invoke-virtual {p0, p1}, Lcom/yelp/android/i/i;->j(Z)V

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/i/i;->F:Z

    if-eqz v0, :cond_0

    .line 759
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/i/i;->F:Z

    .line 760
    invoke-virtual {p0, p1}, Lcom/yelp/android/i/i;->k(Z)V

    goto :goto_0
.end method

.method private o()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 666
    iget-boolean v0, p0, Lcom/yelp/android/i/i;->E:Z

    if-nez v0, :cond_1

    .line 667
    iput-boolean v1, p0, Lcom/yelp/android/i/i;->E:Z

    .line 668
    iget-object v0, p0, Lcom/yelp/android/i/i;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/yelp/android/i/i;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 671
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/i/i;->n(Z)V

    .line 673
    :cond_1
    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 691
    iget-boolean v0, p0, Lcom/yelp/android/i/i;->E:Z

    if-eqz v0, :cond_1

    .line 692
    iput-boolean v1, p0, Lcom/yelp/android/i/i;->E:Z

    .line 693
    iget-object v0, p0, Lcom/yelp/android/i/i;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/yelp/android/i/i;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 696
    :cond_0
    invoke-direct {p0, v1}, Lcom/yelp/android/i/i;->n(Z)V

    .line 698
    :cond_1
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/yelp/android/i/i;->o:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->r()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yelp/android/m/b;)Lcom/yelp/android/m/a;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 503
    iget-object v0, p0, Lcom/yelp/android/i/i;->a:Lcom/yelp/android/i/m;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/yelp/android/i/i;->a:Lcom/yelp/android/i/m;

    invoke-virtual {v0}, Lcom/yelp/android/i/m;->c()V

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/i/i;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 508
    iget-object v0, p0, Lcom/yelp/android/i/i;->p:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->c()V

    .line 509
    new-instance v0, Lcom/yelp/android/i/m;

    iget-object v1, p0, Lcom/yelp/android/i/i;->p:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/yelp/android/i/m;-><init>(Lcom/yelp/android/i/i;Landroid/content/Context;Lcom/yelp/android/m/b;)V

    .line 510
    invoke-virtual {v0}, Lcom/yelp/android/i/m;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 511
    invoke-virtual {v0}, Lcom/yelp/android/i/m;->d()V

    .line 512
    iget-object v1, p0, Lcom/yelp/android/i/i;->p:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Lcom/yelp/android/m/a;)V

    .line 513
    invoke-virtual {p0, v3}, Lcom/yelp/android/i/i;->l(Z)V

    .line 514
    iget-object v1, p0, Lcom/yelp/android/i/i;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/yelp/android/i/i;->y:I

    if-ne v1, v3, :cond_1

    .line 516
    iget-object v1, p0, Lcom/yelp/android/i/i;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    iget-object v1, p0, Lcom/yelp/android/i/i;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 518
    iget-object v1, p0, Lcom/yelp/android/i/i;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_1

    .line 519
    iget-object v1, p0, Lcom/yelp/android/i/i;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Landroid/support/v4/view/ce;->t(Landroid/view/View;)V

    .line 523
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/i/i;->p:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 524
    iput-object v0, p0, Lcom/yelp/android/i/i;->a:Lcom/yelp/android/i/m;

    .line 527
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/yelp/android/i/i;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, p1}, Landroid/support/v4/view/ce;->f(Landroid/view/View;F)V

    .line 256
    iget-object v0, p0, Lcom/yelp/android/i/i;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/yelp/android/i/i;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, p1}, Landroid/support/v4/view/ce;->f(Landroid/view/View;F)V

    .line 259
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/yelp/android/i/i;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/i/i;->o:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v1}, Landroid/support/v7/internal/widget/ah;->a()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/i/i;->a(Landroid/view/View;)V

    .line 369
    return-void
.end method

.method public a(II)V
    .locals 4

    .prologue
    .line 461
    iget-object v0, p0, Lcom/yelp/android/i/i;->o:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->p()I

    move-result v0

    .line 462
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 463
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/yelp/android/i/i;->v:Z

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/i/i;->o:Landroid/support/v7/internal/widget/ah;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Landroid/support/v7/internal/widget/ah;->c(I)V

    .line 466
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/yelp/android/i/i;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/yelp/android/l/a;->a(Landroid/content/Context;)Lcom/yelp/android/l/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/l/a;->d()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/i/i;->m(Z)V

    .line 268
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/yelp/android/i/i;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 470
    return-void
.end method

.method public a(Landroid/support/v7/app/a;)V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/yelp/android/i/i;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/yelp/android/i/i;->o:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/ah;->a(Landroid/view/View;)V

    .line 1237
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/yelp/android/i/i;->o:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/ah;->b(Ljava/lang/CharSequence;)V

    .line 442
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 383
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/i/i;->a(II)V

    .line 384
    return-void

    .line 383
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/yelp/android/i/i;->o:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->p()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/yelp/android/i/i;->j:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/i/i;->a(Ljava/lang/CharSequence;)V

    .line 404
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/yelp/android/i/i;->o:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/ah;->b(Landroid/graphics/drawable/Drawable;)V

    .line 905
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/yelp/android/i/i;->o:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/ah;->a(Ljava/lang/CharSequence;)V

    .line 447
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 388
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/i/i;->a(II)V

    .line 389
    return-void

    .line 388
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/yelp/android/i/i;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/yelp/android/i/i;->o:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/ah;->e(I)V

    .line 920
    return-void
.end method

.method public c(Z)V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 393
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/i/i;->a(II)V

    .line 394
    return-void

    .line 393
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 659
    iget-boolean v0, p0, Lcom/yelp/android/i/i;->C:Z

    if-eqz v0, :cond_0

    .line 660
    iput-boolean v1, p0, Lcom/yelp/android/i/i;->C:Z

    .line 661
    invoke-direct {p0, v1}, Lcom/yelp/android/i/i;->n(Z)V

    .line 663
    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 0

    .prologue
    .line 328
    iput p1, p0, Lcom/yelp/android/i/i;->A:I

    .line 329
    return-void
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/yelp/android/i/i;->o:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/ah;->b(Z)V

    .line 399
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/yelp/android/i/i;->C:Z

    if-nez v0, :cond_0

    .line 685
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/i/i;->C:Z

    .line 686
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/i/i;->n(Z)V

    .line 688
    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 2

    .prologue
    .line 709
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/i/i;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :cond_0
    iput-boolean p1, p0, Lcom/yelp/android/i/i;->d:Z

    .line 714
    iget-object v0, p0, Lcom/yelp/android/i/i;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 715
    return-void
.end method

.method public f()Landroid/content/Context;
    .locals 4

    .prologue
    .line 882
    iget-object v0, p0, Lcom/yelp/android/i/i;->k:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 883
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 884
    iget-object v1, p0, Lcom/yelp/android/i/i;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 885
    sget v2, Lcom/yelp/android/g/b;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 886
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 888
    if-eqz v0, :cond_1

    .line 889
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/yelp/android/i/i;->j:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/yelp/android/i/i;->k:Landroid/content/Context;

    .line 894
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/i/i;->k:Landroid/content/Context;

    return-object v0

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/i/i;->j:Landroid/content/Context;

    iput-object v0, p0, Lcom/yelp/android/i/i;->k:Landroid/content/Context;

    goto :goto_0
.end method

.method public f(Z)V
    .locals 1

    .prologue
    .line 1344
    iget-boolean v0, p0, Lcom/yelp/android/i/i;->v:Z

    if-nez v0, :cond_0

    .line 1345
    invoke-virtual {p0, p1}, Lcom/yelp/android/i/i;->a(Z)V

    .line 1347
    :cond_0
    return-void
.end method

.method public g(Z)V
    .locals 1

    .prologue
    .line 339
    iput-boolean p1, p0, Lcom/yelp/android/i/i;->H:Z

    .line 340
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/i/i;->G:Lcom/yelp/android/l/h;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/yelp/android/i/i;->G:Lcom/yelp/android/l/h;

    invoke-virtual {v0}, Lcom/yelp/android/l/h;->b()V

    .line 343
    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 3

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/yelp/android/i/i;->w:Z

    if-ne p1, v0, :cond_1

    .line 363
    :cond_0
    return-void

    .line 357
    :cond_1
    iput-boolean p1, p0, Lcom/yelp/android/i/i;->w:Z

    .line 359
    iget-object v0, p0, Lcom/yelp/android/i/i;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 360
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 361
    iget-object v0, p0, Lcom/yelp/android/i/i;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/a;

    invoke-interface {v0, p1}, Landroid/support/v7/app/a;->a(Z)V

    .line 360
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/yelp/android/i/i;->o:Landroid/support/v7/internal/widget/ah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/i/i;->o:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/yelp/android/i/i;->o:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->e()V

    .line 938
    const/4 v0, 0x1

    .line 940
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

    .line 320
    iget-object v0, p0, Lcom/yelp/android/i/i;->c:Lcom/yelp/android/m/b;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/yelp/android/i/i;->c:Lcom/yelp/android/m/b;

    iget-object v1, p0, Lcom/yelp/android/i/i;->b:Lcom/yelp/android/m/a;

    invoke-interface {v0, v1}, Lcom/yelp/android/m/b;->a(Lcom/yelp/android/m/a;)V

    .line 322
    iput-object v2, p0, Lcom/yelp/android/i/i;->b:Lcom/yelp/android/m/a;

    .line 323
    iput-object v2, p0, Lcom/yelp/android/i/i;->c:Lcom/yelp/android/m/b;

    .line 325
    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 0

    .prologue
    .line 654
    iput-boolean p1, p0, Lcom/yelp/android/i/i;->B:Z

    .line 655
    return-void
.end method

.method public j()I
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/yelp/android/i/i;->o:Landroid/support/v7/internal/widget/ah;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/ah;->q()I

    move-result v0

    return v0
.end method

.method public j(Z)V
    .locals 7

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 766
    iget-object v0, p0, Lcom/yelp/android/i/i;->G:Lcom/yelp/android/l/h;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/yelp/android/i/i;->G:Lcom/yelp/android/l/h;

    invoke-virtual {v0}, Lcom/yelp/android/l/h;->b()V

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/i/i;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 771
    iget v0, p0, Lcom/yelp/android/i/i;->A:I

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/yelp/android/i/i;->i:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/yelp/android/i/i;->H:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_6

    .line 774
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/i/i;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Landroid/support/v4/view/ce;->b(Landroid/view/View;F)V

    .line 775
    iget-object v0, p0, Lcom/yelp/android/i/i;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 776
    if-eqz p1, :cond_2

    .line 777
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 778
    iget-object v2, p0, Lcom/yelp/android/i/i;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 779
    aget v1, v1, v6

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 781
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/i/i;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v1, v0}, Landroid/support/v4/view/ce;->b(Landroid/view/View;F)V

    .line 782
    new-instance v1, Lcom/yelp/android/l/h;

    invoke-direct {v1}, Lcom/yelp/android/l/h;-><init>()V

    .line 783
    iget-object v2, p0, Lcom/yelp/android/i/i;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v2}, Landroid/support/v4/view/ce;->q(Landroid/view/View;)Landroid/support/v4/view/eh;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v4/view/eh;->c(F)Landroid/support/v4/view/eh;

    move-result-object v2

    .line 784
    iget-object v3, p0, Lcom/yelp/android/i/i;->g:Landroid/support/v4/view/ez;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/eh;->a(Landroid/support/v4/view/ez;)Landroid/support/v4/view/eh;

    .line 785
    invoke-virtual {v1, v2}, Lcom/yelp/android/l/h;->a(Landroid/support/v4/view/eh;)Lcom/yelp/android/l/h;

    .line 786
    iget-boolean v2, p0, Lcom/yelp/android/i/i;->B:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/yelp/android/i/i;->r:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 787
    iget-object v2, p0, Lcom/yelp/android/i/i;->r:Landroid/view/View;

    invoke-static {v2, v0}, Landroid/support/v4/view/ce;->b(Landroid/view/View;F)V

    .line 788
    iget-object v0, p0, Lcom/yelp/android/i/i;->r:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ce;->q(Landroid/view/View;)Landroid/support/v4/view/eh;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/eh;->c(F)Landroid/support/v4/view/eh;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/l/h;->a(Landroid/support/v4/view/eh;)Lcom/yelp/android/l/h;

    .line 790
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/i/i;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/yelp/android/i/i;->y:I

    if-ne v0, v6, :cond_4

    .line 791
    iget-object v0, p0, Lcom/yelp/android/i/i;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/yelp/android/i/i;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/support/v4/view/ce;->b(Landroid/view/View;F)V

    .line 792
    iget-object v0, p0, Lcom/yelp/android/i/i;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 793
    iget-object v0, p0, Lcom/yelp/android/i/i;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0}, Landroid/support/v4/view/ce;->q(Landroid/view/View;)Landroid/support/v4/view/eh;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/eh;->c(F)Landroid/support/v4/view/eh;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/l/h;->a(Landroid/support/v4/view/eh;)Lcom/yelp/android/l/h;

    .line 795
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/i/i;->j:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/l/h;->a(Landroid/view/animation/Interpolator;)Lcom/yelp/android/l/h;

    .line 797
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/l/h;->a(J)Lcom/yelp/android/l/h;

    .line 805
    iget-object v0, p0, Lcom/yelp/android/i/i;->f:Landroid/support/v4/view/ex;

    invoke-virtual {v1, v0}, Lcom/yelp/android/l/h;->a(Landroid/support/v4/view/ex;)Lcom/yelp/android/l/h;

    .line 806
    iput-object v1, p0, Lcom/yelp/android/i/i;->G:Lcom/yelp/android/l/h;

    .line 807
    invoke-virtual {v1}, Lcom/yelp/android/l/h;->a()V

    .line 821
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/i/i;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_5

    .line 822
    iget-object v0, p0, Lcom/yelp/android/i/i;->m:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v4/view/ce;->t(Landroid/view/View;)V

    .line 824
    :cond_5
    return-void

    .line 809
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/i/i;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v1}, Landroid/support/v4/view/ce;->c(Landroid/view/View;F)V

    .line 810
    iget-object v0, p0, Lcom/yelp/android/i/i;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Landroid/support/v4/view/ce;->b(Landroid/view/View;F)V

    .line 811
    iget-boolean v0, p0, Lcom/yelp/android/i/i;->B:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/yelp/android/i/i;->r:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 812
    iget-object v0, p0, Lcom/yelp/android/i/i;->r:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ce;->b(Landroid/view/View;F)V

    .line 814
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/i/i;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/yelp/android/i/i;->y:I

    if-ne v0, v6, :cond_8

    .line 815
    iget-object v0, p0, Lcom/yelp/android/i/i;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v1}, Landroid/support/v4/view/ce;->c(Landroid/view/View;F)V

    .line 816
    iget-object v0, p0, Lcom/yelp/android/i/i;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Landroid/support/v4/view/ce;->b(Landroid/view/View;F)V

    .line 817
    iget-object v0, p0, Lcom/yelp/android/i/i;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 819
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/i/i;->f:Landroid/support/v4/view/ex;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/ex;->b(Landroid/view/View;)V

    goto :goto_0

    .line 777
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
    .line 676
    iget-boolean v0, p0, Lcom/yelp/android/i/i;->D:Z

    if-eqz v0, :cond_0

    .line 677
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/i/i;->D:Z

    .line 678
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yelp/android/i/i;->n(Z)V

    .line 680
    :cond_0
    return-void
.end method

.method public k(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 827
    iget-object v0, p0, Lcom/yelp/android/i/i;->G:Lcom/yelp/android/l/h;

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/yelp/android/i/i;->G:Lcom/yelp/android/l/h;

    invoke-virtual {v0}, Lcom/yelp/android/l/h;->b()V

    .line 831
    :cond_0
    iget v0, p0, Lcom/yelp/android/i/i;->A:I

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/yelp/android/i/i;->i:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/yelp/android/i/i;->H:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_5

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/i/i;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Landroid/support/v4/view/ce;->c(Landroid/view/View;F)V

    .line 834
    iget-object v0, p0, Lcom/yelp/android/i/i;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 835
    new-instance v1, Lcom/yelp/android/l/h;

    invoke-direct {v1}, Lcom/yelp/android/l/h;-><init>()V

    .line 836
    iget-object v0, p0, Lcom/yelp/android/i/i;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 837
    if-eqz p1, :cond_2

    .line 838
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 839
    iget-object v3, p0, Lcom/yelp/android/i/i;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 840
    aget v2, v2, v5

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 842
    :cond_2
    iget-object v2, p0, Lcom/yelp/android/i/i;->n:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v2}, Landroid/support/v4/view/ce;->q(Landroid/view/View;)Landroid/support/v4/view/eh;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/eh;->c(F)Landroid/support/v4/view/eh;

    move-result-object v2

    .line 843
    iget-object v3, p0, Lcom/yelp/android/i/i;->g:Landroid/support/v4/view/ez;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/eh;->a(Landroid/support/v4/view/ez;)Landroid/support/v4/view/eh;

    .line 844
    invoke-virtual {v1, v2}, Lcom/yelp/android/l/h;->a(Landroid/support/v4/view/eh;)Lcom/yelp/android/l/h;

    .line 845
    iget-boolean v2, p0, Lcom/yelp/android/i/i;->B:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/yelp/android/i/i;->r:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 846
    iget-object v2, p0, Lcom/yelp/android/i/i;->r:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ce;->q(Landroid/view/View;)Landroid/support/v4/view/eh;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/eh;->c(F)Landroid/support/v4/view/eh;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/l/h;->a(Landroid/support/v4/view/eh;)Lcom/yelp/android/l/h;

    .line 848
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/i/i;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yelp/android/i/i;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 849
    iget-object v0, p0, Lcom/yelp/android/i/i;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Landroid/support/v4/view/ce;->c(Landroid/view/View;F)V

    .line 850
    iget-object v0, p0, Lcom/yelp/android/i/i;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0}, Landroid/support/v4/view/ce;->q(Landroid/view/View;)Landroid/support/v4/view/eh;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/i/i;->q:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/eh;->c(F)Landroid/support/v4/view/eh;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/l/h;->a(Landroid/support/v4/view/eh;)Lcom/yelp/android/l/h;

    .line 852
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/i/i;->j:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/l/h;->a(Landroid/view/animation/Interpolator;)Lcom/yelp/android/l/h;

    .line 854
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Lcom/yelp/android/l/h;->a(J)Lcom/yelp/android/l/h;

    .line 855
    iget-object v0, p0, Lcom/yelp/android/i/i;->e:Landroid/support/v4/view/ex;

    invoke-virtual {v1, v0}, Lcom/yelp/android/l/h;->a(Landroid/support/v4/view/ex;)Lcom/yelp/android/l/h;

    .line 856
    iput-object v1, p0, Lcom/yelp/android/i/i;->G:Lcom/yelp/android/l/h;

    .line 857
    invoke-virtual {v1}, Lcom/yelp/android/l/h;->a()V

    .line 861
    :goto_0
    return-void

    .line 859
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/i/i;->e:Landroid/support/v4/view/ex;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/ex;->b(Landroid/view/View;)V

    goto :goto_0

    .line 838
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

    .line 701
    iget-boolean v0, p0, Lcom/yelp/android/i/i;->D:Z

    if-nez v0, :cond_0

    .line 702
    iput-boolean v1, p0, Lcom/yelp/android/i/i;->D:Z

    .line 703
    invoke-direct {p0, v1}, Lcom/yelp/android/i/i;->n(Z)V

    .line 705
    :cond_0
    return-void
.end method

.method public l(Z)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 870
    if-eqz p1, :cond_0

    .line 871
    invoke-direct {p0}, Lcom/yelp/android/i/i;->o()V

    .line 876
    :goto_0
    iget-object v3, p0, Lcom/yelp/android/i/i;->o:Landroid/support/v7/internal/widget/ah;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/support/v7/internal/widget/ah;->d(I)V

    .line 877
    iget-object v0, p0, Lcom/yelp/android/i/i;->p:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(I)V

    .line 879
    return-void

    .line 873
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/i/i;->p()V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 876
    goto :goto_1

    :cond_2
    move v2, v1

    .line 877
    goto :goto_2
.end method

.method public m()V
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/yelp/android/i/i;->G:Lcom/yelp/android/l/h;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/yelp/android/i/i;->G:Lcom/yelp/android/l/h;

    invoke-virtual {v0}, Lcom/yelp/android/l/h;->b()V

    .line 926
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/i/i;->G:Lcom/yelp/android/l/h;

    .line 928
    :cond_0
    return-void
.end method

.method public n()V
    .locals 0

    .prologue
    .line 932
    return-void
.end method
