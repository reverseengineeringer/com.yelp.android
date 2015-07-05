.class public Lcom/yelp/android/ui/widgets/RecipientBoxView;
.super Landroid/widget/LinearLayout;
.source "RecipientBoxView.java"


# instance fields
.field private a:Lcom/yelp/android/serializable/User;

.field private b:Landroid/widget/EditText;

.field private c:Lcom/yelp/android/ui/widgets/WebImageView;

.field private d:Lcom/yelp/android/ui/widgets/z;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->e:Z

    .line 41
    const v0, 0x7f03016b

    invoke-static {p1, v0, p0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    const v0, 0x7f0c0470

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    .line 43
    const v0, 0x7f0c046f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 44
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->d()V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/RecipientBoxView;Lcom/yelp/android/serializable/User;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->c(Lcom/yelp/android/serializable/User;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/RecipientBoxView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->e:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 182
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    const v1, 0x7f02009b

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/RecipientBoxView;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/RecipientBoxView;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/widgets/RecipientBoxView;)Lcom/yelp/android/ui/widgets/z;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->d:Lcom/yelp/android/ui/widgets/z;

    return-object v0
.end method

.method private b(Lcom/yelp/android/serializable/User;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 131
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->e:Z

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 135
    iget-boolean v1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->e:Z

    if-eqz v1, :cond_1

    .line 136
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 137
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    iget-boolean v2, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->e:Z

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 138
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 146
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 143
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    iget-boolean v2, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->e:Z

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 144
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    sget v2, Lcom/yelp/android/appdata/ao;->h:I

    sget v3, Lcom/yelp/android/appdata/ao;->a:I

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/yelp/android/ui/widgets/RecipientBoxView;Lcom/yelp/android/serializable/User;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b(Lcom/yelp/android/serializable/User;)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/widgets/RecipientBoxView;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/yelp/android/ui/widgets/RecipientBoxView;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method private c(Lcom/yelp/android/serializable/User;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a:Lcom/yelp/android/serializable/User;

    .line 151
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->e:Z

    if-eqz v0, :cond_1

    .line 152
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->f:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->e()Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 167
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b(Lcom/yelp/android/serializable/User;)V

    .line 156
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_1
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b(Lcom/yelp/android/serializable/User;)V

    .line 160
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->f:Z

    if-nez v0, :cond_2

    .line 161
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->d(Lcom/yelp/android/serializable/User;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 165
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->d:Lcom/yelp/android/ui/widgets/z;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/widgets/z;->b(Lcom/yelp/android/serializable/User;)V

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private d(Lcom/yelp/android/serializable/User;)Landroid/view/animation/AlphaAnimation;
    .locals 4

    .prologue
    .line 185
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 186
    new-instance v1, Lcom/yelp/android/ui/widgets/x;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/widgets/x;-><init>(Lcom/yelp/android/ui/widgets/RecipientBoxView;Lcom/yelp/android/serializable/User;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 198
    sget v1, Lcom/yelp/android/ui/util/cw;->a:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 199
    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/yelp/android/ui/widgets/v;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/widgets/v;-><init>(Lcom/yelp/android/ui/widgets/RecipientBoxView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/yelp/android/ui/widgets/w;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/widgets/w;-><init>(Lcom/yelp/android/ui/widgets/RecipientBoxView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 81
    return-void
.end method

.method private e()Landroid/view/animation/AlphaAnimation;
    .locals 4

    .prologue
    .line 203
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 204
    new-instance v1, Lcom/yelp/android/ui/widgets/y;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/widgets/y;-><init>(Lcom/yelp/android/ui/widgets/RecipientBoxView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 214
    sget v1, Lcom/yelp/android/ui/util/cw;->c:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 215
    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->d:Lcom/yelp/android/ui/widgets/z;

    invoke-interface {v0}, Lcom/yelp/android/ui/widgets/z;->b()V

    .line 220
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 84
    const-string/jumbo v0, "is_editable"

    iget-boolean v1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->e:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 85
    const-string/jumbo v0, "animation_performed"

    iget-boolean v1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    const-string/jumbo v0, "last_clicked_user"

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a:Lcom/yelp/android/serializable/User;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 87
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/User;)V
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->setRecipient(Lcom/yelp/android/serializable/User;)V

    .line 171
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b()V

    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->d:Lcom/yelp/android/ui/widgets/z;

    invoke-interface {v0}, Lcom/yelp/android/ui/widgets/z;->c()V

    .line 173
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b()V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->f()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a:Lcom/yelp/android/serializable/User;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->c(Lcom/yelp/android/serializable/User;)V

    .line 128
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 90
    const-string/jumbo v0, "is_editable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->e:Z

    .line 91
    const-string/jumbo v0, "animation_performed"

    iget-boolean v1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->f:Z

    .line 92
    const-string/jumbo v0, "last_clicked_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a:Lcom/yelp/android/serializable/User;

    .line 93
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b()V

    .line 94
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 224
    return-void
.end method

.method public getRecipient()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a:Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method public getRecipientView()Landroid/view/View;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public setOnRecipientBoxListener(Lcom/yelp/android/ui/widgets/z;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->d:Lcom/yelp/android/ui/widgets/z;

    .line 98
    return-void
.end method

.method public setRecipient(Lcom/yelp/android/serializable/User;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 121
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a:Lcom/yelp/android/serializable/User;

    .line 122
    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->f:Z

    .line 123
    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->e:Z

    .line 124
    return-void
.end method
