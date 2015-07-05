.class public Lcom/yelp/android/ui/panels/BizAttributePanel;
.super Landroid/widget/RelativeLayout;
.source "BizAttributePanel.java"


# instance fields
.field private a:Landroid/view/animation/Animation;

.field private b:Landroid/view/animation/Animation;

.field private c:Landroid/view/animation/Animation;

.field private d:Landroid/view/animation/Animation;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/view/View;

.field private i:Lcom/yelp/android/ui/panels/f;

.field private final j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Lcom/yelp/android/ui/panels/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/b;-><init>(Lcom/yelp/android/ui/panels/BizAttributePanel;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->j:Ljava/lang/Runnable;

    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->a(Landroid/content/Context;Lcom/yelp/android/ui/panels/f;)V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 184
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Lcom/yelp/android/ui/panels/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/b;-><init>(Lcom/yelp/android/ui/panels/BizAttributePanel;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->j:Ljava/lang/Runnable;

    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->a(Landroid/content/Context;Lcom/yelp/android/ui/panels/f;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/ui/panels/f;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lcom/yelp/android/ui/panels/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/b;-><init>(Lcom/yelp/android/ui/panels/BizAttributePanel;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->j:Ljava/lang/Runnable;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/panels/BizAttributePanel;->a(Landroid/content/Context;Lcom/yelp/android/ui/panels/f;)V

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/BizAttributePanel;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/yelp/android/ui/panels/f;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    iput-object p2, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->i:Lcom/yelp/android/ui/panels/f;

    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030059

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->g:Landroid/widget/LinearLayout;

    .line 49
    const v0, 0x7f0c01d9

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->e:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0c01d8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->f:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/panels/c;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/c;-><init>(Lcom/yelp/android/ui/panels/BizAttributePanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/cw;->a(Landroid/content/Context;Lcom/yelp/android/ui/util/dd;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->d:Landroid/view/animation/Animation;

    .line 67
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/panels/d;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/d;-><init>(Lcom/yelp/android/ui/panels/BizAttributePanel;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cw;->a(Landroid/content/Context;Lcom/yelp/android/ui/util/dd;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->c:Landroid/view/animation/Animation;

    .line 82
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/cw;->b(Landroid/content/Context;Lcom/yelp/android/ui/util/dd;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->b:Landroid/view/animation/Animation;

    .line 84
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/panels/e;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/e;-><init>(Lcom/yelp/android/ui/panels/BizAttributePanel;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cw;->b(Landroid/content/Context;Lcom/yelp/android/ui/util/dd;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->a:Landroid/view/animation/Animation;

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->a(Z)V

    .line 102
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/BizAttributePanel;Z)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/panels/BizAttributePanel;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->i:Lcom/yelp/android/ui/panels/f;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->g:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/panels/f;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_1

    .line 127
    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->i:Lcom/yelp/android/ui/panels/f;

    invoke-interface {v2}, Lcom/yelp/android/ui/panels/f;->a()Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 129
    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->h:Landroid/view/View;

    .line 135
    if-eqz p1, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->c()V

    .line 142
    :cond_1
    :goto_1
    return-void

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->h:Landroid/view/View;

    if-eq v0, v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 132
    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 138
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->setPanelVisibility(Z)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/yelp/android/ui/panels/BizAttributePanel;)Lcom/yelp/android/ui/panels/f;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->i:Lcom/yelp/android/ui/panels/f;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/panels/BizAttributePanel;Z)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/panels/BizAttributePanel;->setPanelVisibility(Z)V

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 157
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 158
    return-void
.end method

.method private setPanelVisibility(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 161
    iget-object v3, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->g:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    return-void

    :cond_0
    move v0, v2

    .line 161
    goto :goto_0

    :cond_1
    move v1, v2

    .line 162
    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 153
    return-void
.end method

.method public b()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->a:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 115
    :goto_0
    iget-object v3, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->c:Landroid/view/animation/Animation;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->c:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->c:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v1

    .line 117
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->d()V

    move v2, v1

    .line 121
    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 113
    goto :goto_0

    :cond_3
    move v3, v2

    .line 115
    goto :goto_1
.end method

.method public c()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 146
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 147
    return-void
.end method
