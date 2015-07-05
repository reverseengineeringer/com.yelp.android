.class public Lcom/yelp/android/ui/widgets/k;
.super Landroid/widget/RelativeLayout;
.source "PanelPullDownHeader.java"


# instance fields
.field private a:Landroid/view/View;

.field private final b:Landroid/view/View;

.field private c:Lcom/yelp/android/ui/widgets/WebImageView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/yelp/android/ui/widgets/o;

.field private f:Landroid/view/animation/Animation;

.field private g:Landroid/view/animation/Animation;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private final m:Lcom/yelp/android/ui/util/dd;

.field private final n:Lcom/yelp/android/ui/util/dd;

.field private final o:Lcom/yelp/android/ui/util/bi;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/yelp/android/ui/widgets/o;Lcom/yelp/android/ui/util/PullDownListView;)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 130
    new-instance v0, Lcom/yelp/android/ui/widgets/l;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/widgets/l;-><init>(Lcom/yelp/android/ui/widgets/k;)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/k;->m:Lcom/yelp/android/ui/util/dd;

    .line 147
    new-instance v0, Lcom/yelp/android/ui/widgets/m;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/widgets/m;-><init>(Lcom/yelp/android/ui/widgets/k;)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/k;->n:Lcom/yelp/android/ui/util/dd;

    .line 166
    new-instance v0, Lcom/yelp/android/ui/widgets/n;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/widgets/n;-><init>(Lcom/yelp/android/ui/widgets/k;)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/k;->o:Lcom/yelp/android/ui/util/bi;

    .line 47
    invoke-static {p1, p2, p0}, Lcom/yelp/android/ui/widgets/k;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/k;->a:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/k;->a:Landroid/view/View;

    const v1, 0x7f0c034e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/k;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/k;->a:Landroid/view/View;

    const v1, 0x7f0c034f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/k;->d:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/k;->a:Landroid/view/View;

    const v1, 0x7f0c0350

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 52
    invoke-virtual {v0, p3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 53
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/k;->b:Landroid/view/View;

    .line 55
    iput-object p4, p0, Lcom/yelp/android/ui/widgets/k;->e:Lcom/yelp/android/ui/widgets/o;

    .line 56
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/k;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/widgets/k;->k:I

    .line 57
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/k;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/widgets/k;->l:I

    .line 59
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/k;->a()V

    .line 60
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/k;->b()V

    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/k;->b:Landroid/view/View;

    invoke-virtual {p5, v0}, Lcom/yelp/android/ui/util/PullDownListView;->setPullTarget(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/yelp/android/ui/widgets/o;Lcom/yelp/android/ui/util/PullDownListView;)V
    .locals 6

    .prologue
    .line 69
    const v2, 0x7f03013a

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/widgets/k;-><init>(Landroid/content/Context;IILcom/yelp/android/ui/widgets/o;Lcom/yelp/android/ui/util/PullDownListView;)V

    .line 70
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/k;->h:Z

    .line 74
    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/k;->i:Z

    .line 75
    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/k;->j:Z

    .line 77
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/k;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04001c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/k;->g:Landroid/view/animation/Animation;

    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/k;->g:Landroid/view/animation/Animation;

    sget v1, Lcom/yelp/android/ui/util/cw;->e:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/k;->g:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/k;->m:Lcom/yelp/android/ui/util/dd;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 81
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/k;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040022

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/k;->f:Landroid/view/animation/Animation;

    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/k;->f:Landroid/view/animation/Animation;

    sget v1, Lcom/yelp/android/ui/util/cw;->e:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/k;->f:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/k;->n:Lcom/yelp/android/ui/util/dd;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/k;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/k;->j:Z

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/k;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/yelp/android/ui/widgets/k;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/widgets/k;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/k;->f:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/k;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020242

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 89
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/k;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 91
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/k;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/k;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/widgets/k;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/yelp/android/ui/widgets/k;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/yelp/android/ui/widgets/k;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/k;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/widgets/k;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/yelp/android/ui/widgets/k;->j:Z

    return p1
.end method

.method static synthetic d(Lcom/yelp/android/ui/widgets/k;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/k;->g:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/widgets/k;)Lcom/yelp/android/ui/widgets/WebImageView;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/k;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/widgets/k;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/yelp/android/ui/widgets/k;->k:I

    return v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/widgets/k;)Landroid/view/View;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/k;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/widgets/k;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/yelp/android/ui/widgets/k;->l:I

    return v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/widgets/k;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/k;->h:Z

    return v0
.end method

.method static synthetic j(Lcom/yelp/android/ui/widgets/k;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/k;->i:Z

    return v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/widgets/k;)Lcom/yelp/android/ui/widgets/o;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/k;->e:Lcom/yelp/android/ui/widgets/o;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/util/PullDownListView;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/k;->o:Lcom/yelp/android/ui/util/bi;

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/util/PullDownListView;->setOnPullDownListener(Lcom/yelp/android/ui/util/bi;)V

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/util/PullDownListView;->setPullDownEnabled(Z)V

    .line 100
    return-void
.end method

.method public b(Lcom/yelp/android/ui/util/PullDownListView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/PullDownListView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p1}, Lcom/yelp/android/ui/util/PullDownListView;->b()V

    .line 107
    iput-boolean v1, p0, Lcom/yelp/android/ui/widgets/k;->h:Z

    .line 108
    iput-boolean v1, p0, Lcom/yelp/android/ui/widgets/k;->i:Z

    .line 109
    iput-boolean v1, p0, Lcom/yelp/android/ui/widgets/k;->j:Z

    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/k;->d:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/k;->o:Lcom/yelp/android/ui/util/bi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/util/bi;->a(F)V

    .line 115
    :cond_0
    return-void
.end method

.method public getPanel()Landroid/view/View;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/k;->a:Landroid/view/View;

    return-object v0
.end method

.method public setPulledPhotoAlpha(I)V
    .locals 0

    .prologue
    .line 127
    iput p1, p0, Lcom/yelp/android/ui/widgets/k;->k:I

    .line 128
    return-void
.end method

.method public setPulledPhotoUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/k;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/k;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    iget v1, p0, Lcom/yelp/android/ui/widgets/k;->k:I

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cp;->b(Landroid/view/View;I)V

    .line 124
    return-void
.end method
