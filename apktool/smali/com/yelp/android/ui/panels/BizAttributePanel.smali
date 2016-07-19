.class public Lcom/yelp/android/ui/panels/BizAttributePanel;
.super Landroid/widget/RelativeLayout;
.source "BizAttributePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/panels/BizAttributePanel$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/animation/Animation;

.field private b:Landroid/view/animation/Animation;

.field private c:Landroid/view/animation/Animation;

.field private d:Landroid/view/animation/Animation;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/view/View;

.field private i:Lcom/yelp/android/ui/panels/BizAttributePanel$a;

.field private final j:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Lcom/yelp/android/ui/panels/BizAttributePanel$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/BizAttributePanel$1;-><init>(Lcom/yelp/android/ui/panels/BizAttributePanel;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->j:Ljava/lang/Runnable;

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->a(Lcom/yelp/android/ui/panels/BizAttributePanel$a;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Lcom/yelp/android/ui/panels/BizAttributePanel$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/BizAttributePanel$1;-><init>(Lcom/yelp/android/ui/panels/BizAttributePanel;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->j:Ljava/lang/Runnable;

    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->a(Lcom/yelp/android/ui/panels/BizAttributePanel$a;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/ui/panels/BizAttributePanel$a;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lcom/yelp/android/ui/panels/BizAttributePanel$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/BizAttributePanel$1;-><init>(Lcom/yelp/android/ui/panels/BizAttributePanel;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->j:Ljava/lang/Runnable;

    .line 43
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/panels/BizAttributePanel;->a(Lcom/yelp/android/ui/panels/BizAttributePanel$a;)V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/BizAttributePanel;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method private a(Lcom/yelp/android/ui/panels/BizAttributePanel$a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    iput-object p1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->i:Lcom/yelp/android/ui/panels/BizAttributePanel$a;

    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030065

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    const v0, 0x7f0f002a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->g:Landroid/widget/LinearLayout;

    .line 50
    const v0, 0x7f0f0212

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->e:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0f0211

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->f:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/panels/BizAttributePanel$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/BizAttributePanel$2;-><init>(Lcom/yelp/android/ui/panels/BizAttributePanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/av;->a(Landroid/content/Context;Lcom/yelp/android/ui/util/av$a;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->d:Landroid/view/animation/Animation;

    .line 69
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/panels/BizAttributePanel$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/BizAttributePanel$3;-><init>(Lcom/yelp/android/ui/panels/BizAttributePanel;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/av;->a(Landroid/content/Context;Lcom/yelp/android/ui/util/av$a;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->c:Landroid/view/animation/Animation;

    .line 86
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/av;->b(Landroid/content/Context;Lcom/yelp/android/ui/util/av$a;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->b:Landroid/view/animation/Animation;

    .line 88
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/panels/BizAttributePanel$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/BizAttributePanel$4;-><init>(Lcom/yelp/android/ui/panels/BizAttributePanel;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/av;->b(Landroid/content/Context;Lcom/yelp/android/ui/util/av$a;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->a:Landroid/view/animation/Animation;

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->a(Z)V

    .line 108
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
    .line 135
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->i:Lcom/yelp/android/ui/panels/BizAttributePanel$a;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->g:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/panels/BizAttributePanel$a;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_1

    .line 137
    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->i:Lcom/yelp/android/ui/panels/BizAttributePanel$a;

    invoke-interface {v2}, Lcom/yelp/android/ui/panels/BizAttributePanel$a;->a()Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 139
    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->h:Landroid/view/View;

    .line 145
    if-eqz p1, :cond_3

    .line 146
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->c()V

    .line 151
    :cond_1
    :goto_1
    return-void

    .line 140
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->h:Landroid/view/View;

    if-eq v0, v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 142
    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 148
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->setPanelVisibility(Z)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/yelp/android/ui/panels/BizAttributePanel;)Lcom/yelp/android/ui/panels/BizAttributePanel$a;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->i:Lcom/yelp/android/ui/panels/BizAttributePanel$a;

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
    .line 165
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    .line 167
    return-void
.end method

.method private setPanelVisibility(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 170
    iget-object v3, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->g:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    return-void

    :cond_0
    move v0, v2

    .line 170
    goto :goto_0

    :cond_1
    move v1, v2

    .line 171
    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->j:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 112
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 162
    return-void
.end method

.method public b()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
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

    .line 123
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

    .line 127
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    .line 128
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->d()V

    move v2, v1

    .line 131
    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 119
    goto :goto_0

    :cond_3
    move v3, v2

    .line 123
    goto :goto_1
.end method

.method public c()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->d:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 156
    return-void
.end method
