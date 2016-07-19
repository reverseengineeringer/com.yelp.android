.class public Lcom/yelp/android/ui/widgets/d;
.super Landroid/widget/RelativeLayout;
.source "PanelPullDownHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/widgets/d$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ui/util/t;

.field private b:Landroid/view/View;

.field private final c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/yelp/android/ui/widgets/d$a;

.field private g:Landroid/view/animation/Animation;

.field private h:Landroid/view/animation/Animation;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private final n:Lcom/yelp/android/ui/util/av$a;

.field private final o:Lcom/yelp/android/ui/util/av$a;

.field private final p:Lcom/yelp/android/ui/util/PullDownListView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/yelp/android/ui/widgets/d$a;Lcom/yelp/android/ui/util/PullDownListView;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 138
    new-instance v0, Lcom/yelp/android/ui/widgets/d$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/widgets/d$2;-><init>(Lcom/yelp/android/ui/widgets/d;)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/d;->n:Lcom/yelp/android/ui/util/av$a;

    .line 156
    new-instance v0, Lcom/yelp/android/ui/widgets/d$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/widgets/d$3;-><init>(Lcom/yelp/android/ui/widgets/d;)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/d;->o:Lcom/yelp/android/ui/util/av$a;

    .line 176
    new-instance v0, Lcom/yelp/android/ui/widgets/d$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/widgets/d$4;-><init>(Lcom/yelp/android/ui/widgets/d;)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/d;->p:Lcom/yelp/android/ui/util/PullDownListView$a;

    .line 54
    invoke-static {p1}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/d;->a:Lcom/yelp/android/ui/util/t;

    .line 56
    invoke-static {p1, p2, p0}, Lcom/yelp/android/ui/widgets/d;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/d;->b:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d;->b:Landroid/view/View;

    const v1, 0x7f0f0427

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/d;->d:Landroid/widget/ImageView;

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d;->b:Landroid/view/View;

    const v1, 0x7f0f0428

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/d;->e:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d;->b:Landroid/view/View;

    const v1, 0x7f0f0429

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 61
    invoke-virtual {v0, p3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 62
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/d;->c:Landroid/view/View;

    .line 64
    iput-object p4, p0, Lcom/yelp/android/ui/widgets/d;->f:Lcom/yelp/android/ui/widgets/d$a;

    .line 65
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/widgets/d;->l:I

    .line 66
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/d;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/widgets/d;->m:I

    .line 68
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/d;->a()V

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d;->c:Landroid/view/View;

    invoke-virtual {p5, v0}, Lcom/yelp/android/ui/util/PullDownListView;->setPullTarget(Landroid/view/View;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/yelp/android/ui/widgets/d$a;Lcom/yelp/android/ui/util/PullDownListView;)V
    .locals 6

    .prologue
    .line 80
    const v2, 0x7f03019d

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/widgets/d;-><init>(Landroid/content/Context;IILcom/yelp/android/ui/widgets/d$a;Lcom/yelp/android/ui/util/PullDownListView;)V

    .line 81
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/d;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/d;->i:Z

    .line 85
    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/d;->j:Z

    .line 86
    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/d;->k:Z

    .line 88
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040022

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/d;->h:Landroid/view/animation/Animation;

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d;->h:Landroid/view/animation/Animation;

    sget v1, Lcom/yelp/android/ui/util/av;->e:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d;->h:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/d;->n:Lcom/yelp/android/ui/util/av$a;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 92
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040028

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/d;->g:Landroid/view/animation/Animation;

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d;->g:Landroid/view/animation/Animation;

    sget v1, Lcom/yelp/android/ui/util/av;->e:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d;->g:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/d;->o:Lcom/yelp/android/ui/util/av$a;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/d;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/yelp/android/ui/widgets/d;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/widgets/d;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/yelp/android/ui/widgets/d;->l:I

    return v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/widgets/d;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/yelp/android/ui/widgets/d;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/yelp/android/ui/widgets/d;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/d;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/widgets/d;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/yelp/android/ui/widgets/d;->k:Z

    return p1
.end method

.method static synthetic d(Lcom/yelp/android/ui/widgets/d;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d;->g:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/widgets/d;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/widgets/d;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d;->h:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/widgets/d;)Landroid/view/View;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/widgets/d;)I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/yelp/android/ui/widgets/d;->m:I

    return v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/widgets/d;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/d;->i:Z

    return v0
.end method

.method static synthetic j(Lcom/yelp/android/ui/widgets/d;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/d;->j:Z

    return v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/widgets/d;)Lcom/yelp/android/ui/widgets/d$a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d;->f:Lcom/yelp/android/ui/widgets/d$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/util/PullDownListView;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d;->p:Lcom/yelp/android/ui/util/PullDownListView$a;

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/util/PullDownListView;->setOnPullDownListener(Lcom/yelp/android/ui/util/PullDownListView$a;)V

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
    iput-boolean v1, p0, Lcom/yelp/android/ui/widgets/d;->i:Z

    .line 108
    iput-boolean v1, p0, Lcom/yelp/android/ui/widgets/d;->j:Z

    .line 109
    iput-boolean v1, p0, Lcom/yelp/android/ui/widgets/d;->k:Z

    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d;->e:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d;->p:Lcom/yelp/android/ui/util/PullDownListView$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/util/PullDownListView$a;->a(F)V

    .line 115
    :cond_0
    return-void
.end method

.method public getPanel()Landroid/view/View;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d;->b:Landroid/view/View;

    return-object v0
.end method

.method public setPulledPhotoAlpha(I)V
    .locals 0

    .prologue
    .line 135
    iput p1, p0, Lcom/yelp/android/ui/widgets/d;->l:I

    .line 136
    return-void
.end method

.method public setPulledPhotoUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d;->a:Lcom/yelp/android/ui/util/t;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/widgets/d$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/widgets/d$1;-><init>(Lcom/yelp/android/ui/widgets/d;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(Lcom/yelp/android/ui/util/t$c;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/d;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 132
    return-void
.end method
