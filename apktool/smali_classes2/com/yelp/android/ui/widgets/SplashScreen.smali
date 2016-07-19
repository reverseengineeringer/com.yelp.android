.class public Lcom/yelp/android/ui/widgets/SplashScreen;
.super Landroid/widget/ScrollView;
.source "SplashScreen.java"


# instance fields
.field private final a:Landroid/widget/Button;

.field private final b:Landroid/widget/Button;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 33
    if-nez p3, :cond_0

    const p3, 0x7f01010b

    move v1, p3

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/widgets/SplashScreen;->setFillViewport(Z)V

    .line 35
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 36
    const/4 v2, 0x4

    const v3, 0x7f0301f6

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    invoke-static {p0, p1, p2, v1, v0}, Lcom/yelp/android/ui/util/ay;->a(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/SparseIntArray;)V

    .line 38
    const v0, 0x7f0f051e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/SplashScreen;->a:Landroid/widget/Button;

    .line 39
    const v0, 0x7f0f0520

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/SplashScreen;->b:Landroid/widget/Button;

    .line 40
    const v0, 0x7f0f051d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/SplashScreen;->c:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0f0521

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/SplashScreen;->d:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f0f051f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/SplashScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/SplashScreen;->e:Landroid/widget/TextView;

    .line 43
    sget-object v0, Lcom/yelp/android/b$a;->SplashScreen:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/widgets/SplashScreen;->setTopButtonText(Ljava/lang/CharSequence;)V

    .line 47
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/widgets/SplashScreen;->setBottomButtonText(Ljava/lang/CharSequence;)V

    .line 48
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/widgets/SplashScreen;->setTitleMessage(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    return-void

    :cond_0
    move v1, p3

    .line 33
    goto :goto_0
.end method


# virtual methods
.method public setBottomButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SplashScreen;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-void
.end method

.method public setBottomButtonPromptText(I)V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/SplashScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/SplashScreen;->setBottomButtonPromptText(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method

.method public setBottomButtonPromptText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SplashScreen;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/SplashScreen;->e:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBottomButtonText(I)V
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/SplashScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/SplashScreen;->setBottomButtonText(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method

.method public setBottomButtonText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SplashScreen;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/SplashScreen;->b:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSubMessage(I)V
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/SplashScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/SplashScreen;->setSubMessage(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method public setSubMessage(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SplashScreen;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/SplashScreen;->d:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitleMessage(I)V
    .locals 5

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/SplashScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/SplashScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f070587

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/SplashScreen;->setTitleMessage(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method public setTitleMessage(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SplashScreen;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/SplashScreen;->c:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTopButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SplashScreen;->a:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method

.method public setTopButtonText(I)V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/SplashScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/SplashScreen;->setTopButtonText(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method public setTopButtonText(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SplashScreen;->a:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/SplashScreen;->a:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SplashScreen;->a:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 94
    :cond_0
    return-void

    .line 90
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
