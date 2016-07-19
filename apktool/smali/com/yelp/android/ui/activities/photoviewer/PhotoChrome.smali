.class public Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;
.super Landroid/widget/FrameLayout;
.source "PhotoChrome.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/photoviewer/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$c;,
        Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;,
        Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;,
        Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Lcom/yelp/android/serializable/Media;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ToggleButton;

.field private l:Landroid/view/View;

.field private m:Lcom/yelp/android/ui/util/ap$b;

.field private n:Landroid/support/v7/widget/ListPopupWindow;

.field private o:Landroid/view/animation/Animation;

.field private p:Landroid/view/animation/Animation;

.field private q:Landroid/view/animation/Animation;

.field private r:Landroid/view/animation/Animation;

.field private s:Landroid/view/animation/Animation;

.field private t:Landroid/view/animation/Animation;

.field private u:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    const-class v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a:Ljava/util/EnumSet;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->v:Ljava/util/List;

    .line 124
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const-class v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a:Ljava/util/EnumSet;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->v:Ljava/util/List;

    .line 129
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Landroid/content/Context;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const-class v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a:Ljava/util/EnumSet;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->v:Ljava/util/List;

    .line 134
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Landroid/content/Context;)V

    .line 135
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->d:Landroid/view/View;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 400
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301c5

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 402
    const v0, 0x7f0f0552

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->h:Landroid/widget/TextView;

    .line 403
    const v0, 0x7f0f054f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->d:Landroid/view/View;

    .line 404
    const v0, 0x7f0f0551

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->e:Landroid/view/View;

    .line 405
    const v0, 0x7f0f03de

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->k:Landroid/widget/ToggleButton;

    .line 406
    const v0, 0x7f0f0405

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Landroid/widget/TextView;

    .line 407
    const v0, 0x7f0f0554

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->j:Landroid/widget/TextView;

    .line 408
    const v0, 0x7f0f00f7

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->f:Landroid/view/View;

    .line 409
    const v0, 0x7f0f0183

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->l:Landroid/view/View;

    .line 410
    const v0, 0x7f0f0550

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->g:Landroid/view/View;

    .line 412
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b(Landroid/content/Context;)V

    .line 414
    new-instance v0, Lcom/yelp/android/ui/util/ap$b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->l:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/util/ap$b;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->m:Lcom/yelp/android/ui/util/ap$b;

    .line 415
    iput-boolean v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b:Z

    .line 416
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->e:Landroid/view/View;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 421
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f0901e4

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 423
    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$c;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->v:Ljava/util/List;

    invoke-direct {v1, v2, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$c;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->w:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$c;

    .line 425
    new-instance v1, Landroid/support/v7/widget/ListPopupWindow;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->n:Landroid/support/v7/widget/ListPopupWindow;

    .line 426
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->n:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->e(I)V

    .line 428
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->n:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->a(Landroid/view/View;)V

    .line 429
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->n:Landroid/support/v7/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->w:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$c;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->a(Landroid/widget/ListAdapter;)V

    .line 432
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->n:Landroid/support/v7/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->a(Z)V

    .line 433
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->n:Landroid/support/v7/widget/ListPopupWindow;

    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$3;-><init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ListPopupWindow;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 448
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->g:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$4;-><init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->u:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Lcom/yelp/android/serializable/Media;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/view/View;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/support/v7/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->n:Landroid/support/v7/widget/ListPopupWindow;

    return-object v0
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 393
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    invoke-interface {v1}, Lcom/yelp/android/serializable/Media;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->MAKE_PRIMARY_PHOTO:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v1}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->m()Lcom/yelp/android/serializable/Photo$PhotoType;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Photo$PhotoType;->USER_PROFILE_PRIMARY:Lcom/yelp/android/serializable/Photo$PhotoType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Z
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->s:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$5;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$5;-><init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    return-void
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->k:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 486
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->k:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$6;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$6;-><init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->s:Landroid/view/animation/Animation;

    .line 497
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->s:Landroid/view/animation/Animation;

    sget v1, Lcom/yelp/android/ui/util/av;->f:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 498
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->s:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 500
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->t:Landroid/view/animation/Animation;

    .line 501
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->t:Landroid/view/animation/Animation;

    sget v1, Lcom/yelp/android/ui/util/av;->f:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 502
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->t:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 504
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->k:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$7;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$7;-><init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 524
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->k:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 525
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->k:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 526
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->k:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setFocusable(Z)V

    .line 527
    return-void
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->t:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private j()V
    .locals 8

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x0

    const/16 v2, 0x8

    .line 530
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->LIKE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->k:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 534
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->k:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 561
    :goto_0
    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    if-nez v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->k:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 540
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->k:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->j()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    .line 548
    if-nez v0, :cond_2

    .line 549
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 551
    :cond_2
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->d()I

    move-result v1

    .line 552
    if-lez v1, :cond_3

    .line 553
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080041

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->k:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->c()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 556
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->u:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b:Z

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->d()V

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->e()V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/Media;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 343
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    .line 345
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b()V

    .line 347
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->j()V

    .line 349
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 350
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    invoke-interface {v1}, Lcom/yelp/android/serializable/Media;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->h()Ljava/util/Date;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a:Ljava/util/EnumSet;

    sget-object v2, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->UPLOADED_AGO:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 354
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-static {v2, v3, v0}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->i()Lcom/yelp/android/serializable/Passport;

    move-result-object v8

    .line 361
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/yelp/android/serializable/Passport;->o()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->l:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 390
    :goto_1
    return-void

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->j:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->l:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->m:Lcom/yelp/android/ui/util/ap$b;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v8}, Lcom/yelp/android/serializable/Passport;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/yelp/android/serializable/Passport;->k_()I

    move-result v3

    invoke-virtual {v8}, Lcom/yelp/android/serializable/Passport;->j_()I

    move-result v4

    invoke-virtual {v8}, Lcom/yelp/android/serializable/Passport;->l_()I

    move-result v5

    invoke-virtual {v8}, Lcom/yelp/android/serializable/Passport;->m_()I

    move-result v6

    invoke-virtual {v8}, Lcom/yelp/android/serializable/Passport;->n_()I

    move-result v7

    invoke-virtual {v8}, Lcom/yelp/android/serializable/Passport;->j()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v9}, Lcom/yelp/android/ui/util/ap$b;->a(Landroid/content/Context;Ljava/lang/CharSequence;IIIIILjava/lang/String;Z)V

    .line 379
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->l:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$2;-><init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 264
    return-void
.end method

.method public a(Ljava/util/Collection;Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;",
            ">;",
            "Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 267
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->setVisibility(I)V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->u:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Ljava/util/Collection;)V

    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->HIDE_TOP:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 277
    :cond_2
    iput-object p2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->u:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;

    .line 280
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 281
    const v1, 0x7f040023

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->p:Landroid/view/animation/Animation;

    .line 282
    const v1, 0x7f040029

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->o:Landroid/view/animation/Animation;

    .line 283
    const v1, 0x7f040020

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->r:Landroid/view/animation/Animation;

    .line 284
    const v1, 0x7f040025

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->q:Landroid/view/animation/Animation;

    .line 287
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->o:Landroid/view/animation/Animation;

    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$1;-><init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 296
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->LIKE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->h()V

    .line 298
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i()V

    goto :goto_0
.end method

.method public b()V
    .locals 8

    .prologue
    const v0, 0x7f070573

    const v1, 0x7f07056b

    const v7, 0x7f07021d

    .line 157
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 158
    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->v:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 159
    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->w:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$c;

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$c;->clear()V

    .line 160
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->f()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 161
    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a:Ljava/util/EnumSet;

    sget-object v4, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->ADD_ACCOUNT_PHOTO:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->v:Ljava/util/List;

    new-instance v4, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;

    const v5, 0x7f0700ff

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->ADD_ACCOUNT_PHOTO:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-direct {v4, v5, v6}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_0
    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a:Ljava/util/EnumSet;

    sget-object v4, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->VIEW_BUSINESS:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    invoke-interface {v3}, Lcom/yelp/android/serializable/Media;->k()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 169
    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->v:Ljava/util/List;

    new-instance v4, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->VIEW_BUSINESS:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-direct {v4, v5, v6}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_1
    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    sget-object v4, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v3, v4}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a:Ljava/util/EnumSet;

    sget-object v4, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->EDIT_CAPTION:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->v:Ljava/util/List;

    new-instance v4, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;

    const v5, 0x7f070274

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->EDIT_CAPTION:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-direct {v4, v5, v6}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_2
    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a:Ljava/util/EnumSet;

    sget-object v4, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->SHARE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    invoke-interface {v3}, Lcom/yelp/android/serializable/Media;->l()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 182
    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    sget-object v4, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v3, v4}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->v:Ljava/util/List;

    new-instance v3, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;

    sget-object v4, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->SHARE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-direct {v3, v0, v4}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->DELETE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v1}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f070248

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->v:Ljava/util/List;

    new-instance v2, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;

    sget-object v3, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->DELETE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-direct {v2, v0, v3}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_4
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 198
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0703a8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->v:Ljava/util/List;

    new-instance v2, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;

    sget-object v3, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->MAKE_PRIMARY_PHOTO:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-direct {v2, v0, v3}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->w:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$c;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->v:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$c;->a(Ljava/util/List;)V

    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->w:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$c;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 251
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :goto_3
    return-void

    :cond_6
    move v0, v1

    .line 182
    goto :goto_0

    .line 190
    :cond_7
    const v0, 0x7f070245

    goto :goto_1

    .line 203
    :cond_8
    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a:Ljava/util/EnumSet;

    sget-object v4, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->VIEW_BUSINESS:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    invoke-interface {v3}, Lcom/yelp/android/serializable/Media;->k()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 205
    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->v:Ljava/util/List;

    new-instance v4, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->VIEW_BUSINESS:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-direct {v4, v5, v6}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_9
    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a:Ljava/util/EnumSet;

    sget-object v4, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->COMPLIMENT:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    sget-object v4, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v3, v4}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    invoke-interface {v3}, Lcom/yelp/android/serializable/Media;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    invoke-interface {v3}, Lcom/yelp/android/serializable/Media;->i()Lcom/yelp/android/serializable/Passport;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/serializable/FeatureSet$Feature;->SEND_COMPLIMENT:Lcom/yelp/android/serializable/FeatureSet$Feature;

    invoke-virtual {v3, v4}, Lcom/yelp/android/serializable/Passport;->a(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 214
    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->v:Ljava/util/List;

    new-instance v4, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;

    const v5, 0x7f070550

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->COMPLIMENT:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-direct {v4, v2, v5}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_a
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a:Ljava/util/EnumSet;

    sget-object v3, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->SHARE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    invoke-interface {v2}, Lcom/yelp/android/serializable/Media;->l()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 220
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    sget-object v4, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v3, v4}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v3

    if-eqz v3, :cond_f

    :goto_4
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->v:Ljava/util/List;

    new-instance v2, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;

    sget-object v3, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->SHARE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-direct {v2, v0, v3}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_b
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->FLAG:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v1}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    check-cast v0, Lcom/yelp/android/serializable/Video;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Video;->m()Z

    move-result v0

    if-nez v0, :cond_d

    .line 230
    :cond_c
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    sget-object v2, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v2}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_10

    const v0, 0x7f0704f9

    :goto_5
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->v:Ljava/util/List;

    new-instance v2, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;

    sget-object v3, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->FLAG:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-direct {v2, v0, v3}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_d
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->NOT_HELPFUL:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v1}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    instance-of v0, v0, Lcom/yelp/android/serializable/Photo;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->p()Z

    move-result v0

    if-nez v0, :cond_5

    .line 242
    :cond_e
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070487

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->v:Ljava/util/List;

    new-instance v2, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;

    sget-object v3, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->NOT_HELPFUL:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-direct {v2, v0, v3}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_f
    move v0, v1

    .line 220
    goto/16 :goto_4

    .line 230
    :cond_10
    const v0, 0x7f0704f7

    goto :goto_5

    .line 253
    :cond_11
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public c()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 304
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b:Z

    if-nez v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->o:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 323
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->q:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 324
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->n:Landroid/support/v7/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->i()V

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b:Z

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 329
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b:Z

    if-eqz v0, :cond_0

    .line 339
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a:Ljava/util/EnumSet;

    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->HIDE_TOP:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->p:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->r:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b:Z

    goto :goto_0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->b:Z

    return v0
.end method

.method public setCaptionVisibility(I)V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    return-void
.end method

.method public setLikeButtonChecked(Z)V
    .locals 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->k:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 313
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->u:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->u:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;

    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->LIKE:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->c:Lcom/yelp/android/serializable/Media;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->k:Landroid/widget/ToggleButton;

    invoke-interface {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;->a(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;Lcom/yelp/android/serializable/Media;Landroid/view/View;)V

    .line 316
    :cond_0
    return-void
.end method
