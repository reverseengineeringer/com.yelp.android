.class public Lcom/yelp/android/ui/widgets/RecipientBoxView;
.super Landroid/widget/LinearLayout;
.source "RecipientBoxView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/widgets/RecipientBoxView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/serializable/User;

.field private b:Landroid/widget/EditText;

.field private c:Lcom/yelp/android/ui/widgets/WebImageView;

.field private d:Lcom/yelp/android/ui/widgets/RecipientBoxView$a;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->e:Z

    .line 42
    const v0, 0x7f0301d8

    invoke-static {p1, v0, p0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    const v0, 0x7f0f0577

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    .line 44
    const v0, 0x7f0f0576

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 45
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->d()V

    .line 46
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
    .line 178
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->e:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    const v1, 0x7f0200c6

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

.method static synthetic b(Lcom/yelp/android/ui/widgets/RecipientBoxView;)Lcom/yelp/android/ui/widgets/RecipientBoxView$a;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->d:Lcom/yelp/android/ui/widgets/RecipientBoxView$a;

    return-object v0
.end method

.method private b(Lcom/yelp/android/serializable/User;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 133
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->e:Z

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 137
    iget-boolean v1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->e:Z

    if-eqz v1, :cond_1

    .line 138
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 139
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    iget-boolean v2, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->e:Z

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 140
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 148
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 145
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    iget-boolean v2, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->e:Z

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 146
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    sget v2, Lcom/yelp/android/appdata/n;->h:I

    sget v3, Lcom/yelp/android/appdata/n;->a:I

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

    .line 152
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a:Lcom/yelp/android/serializable/User;

    .line 153
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->e:Z

    if-eqz v0, :cond_1

    .line 154
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->f:Z

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->e()Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 169
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b(Lcom/yelp/android/serializable/User;)V

    .line 158
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_1
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b(Lcom/yelp/android/serializable/User;)V

    .line 162
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->f:Z

    if-nez v0, :cond_2

    .line 163
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->d(Lcom/yelp/android/serializable/User;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 167
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->d:Lcom/yelp/android/ui/widgets/RecipientBoxView$a;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/widgets/RecipientBoxView$a;->a(Lcom/yelp/android/serializable/User;)V

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private d(Lcom/yelp/android/serializable/User;)Landroid/view/animation/AlphaAnimation;
    .locals 4

    .prologue
    .line 187
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 188
    new-instance v1, Lcom/yelp/android/ui/widgets/RecipientBoxView$3;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/widgets/RecipientBoxView$3;-><init>(Lcom/yelp/android/ui/widgets/RecipientBoxView;Lcom/yelp/android/serializable/User;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 201
    sget v1, Lcom/yelp/android/ui/util/av;->a:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 202
    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/yelp/android/ui/widgets/RecipientBoxView$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/widgets/RecipientBoxView$1;-><init>(Lcom/yelp/android/ui/widgets/RecipientBoxView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/yelp/android/ui/widgets/RecipientBoxView$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/widgets/RecipientBoxView$2;-><init>(Lcom/yelp/android/ui/widgets/RecipientBoxView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    return-void
.end method

.method private e()Landroid/view/animation/AlphaAnimation;
    .locals 4

    .prologue
    .line 206
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 207
    new-instance v1, Lcom/yelp/android/ui/widgets/RecipientBoxView$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/widgets/RecipientBoxView$4;-><init>(Lcom/yelp/android/ui/widgets/RecipientBoxView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 218
    sget v1, Lcom/yelp/android/ui/util/av;->c:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 219
    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->d:Lcom/yelp/android/ui/widgets/RecipientBoxView$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView$a;->b()V

    .line 224
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 86
    const-string/jumbo v0, "is_editable"

    iget-boolean v1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->e:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    const-string/jumbo v0, "animation_performed"

    iget-boolean v1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    const-string/jumbo v0, "last_clicked_user"

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a:Lcom/yelp/android/serializable/User;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 89
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/User;)V
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->setRecipient(Lcom/yelp/android/serializable/User;)V

    .line 173
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b()V

    .line 174
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->d:Lcom/yelp/android/ui/widgets/RecipientBoxView$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView$a;->c()V

    .line 175
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
    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b()V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->f()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 119
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
    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a:Lcom/yelp/android/serializable/User;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->c(Lcom/yelp/android/serializable/User;)V

    .line 130
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 92
    const-string/jumbo v0, "is_editable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->e:Z

    .line 93
    const-string/jumbo v0, "animation_performed"

    iget-boolean v1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->f:Z

    .line 94
    const-string/jumbo v0, "last_clicked_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a:Lcom/yelp/android/serializable/User;

    .line 95
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b()V

    .line 96
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 228
    return-void
.end method

.method public getRecipient()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a:Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method public getRecipientView()Landroid/view/View;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public setOnRecipientBoxListener(Lcom/yelp/android/ui/widgets/RecipientBoxView$a;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->d:Lcom/yelp/android/ui/widgets/RecipientBoxView$a;

    .line 100
    return-void
.end method

.method public setRecipient(Lcom/yelp/android/serializable/User;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 123
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->a:Lcom/yelp/android/serializable/User;

    .line 124
    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->f:Z

    .line 125
    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/RecipientBoxView;->e:Z

    .line 126
    return-void
.end method
