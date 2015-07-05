.class public Lcom/yelp/android/ui/widgets/ListOfDetails;
.super Lcom/yelp/android/ui/widgets/SpannableLinearLayout;
.source "ListOfDetails.java"


# instance fields
.field private g:Landroid/view/View;

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/widgets/ListOfDetails;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/widgets/ListOfDetails;->h:Z

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ListOfDetails;->setOrientation(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 86
    const v0, 0x7f0c01e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ListOfDetails;->g:Landroid/view/View;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "We\'re calling finishLastRow without adding any rows!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/ListOfDetails;->g:Landroid/view/View;

    const v1, 0x7f0c01e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;

    .line 81
    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->setRight(Z)V

    .line 82
    iput-boolean v2, p0, Lcom/yelp/android/ui/widgets/ListOfDetails;->h:Z

    .line 83
    return-void
.end method

.method public a(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 114
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 115
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 116
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 117
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ListOfDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ListOfDetails;->addView(Landroid/view/View;)V

    .line 43
    const v0, 0x7f0c01dc

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ListOfDetails;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 44
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ListOfDetails;->getNewRow()Landroid/view/View;

    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ListOfDetails;->b(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ListOfDetails;->a(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v1

    .line 58
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    instance-of v0, p2, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 60
    check-cast v0, Landroid/text/Spanned;

    const/4 v2, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 62
    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 63
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ListOfDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0111

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 68
    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 90
    const v0, 0x7f0c01dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 108
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 109
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 110
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ListOfDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method public getNewRow()Landroid/view/View;
    .locals 3

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/yelp/android/ui/widgets/ListOfDetails;->h:Z

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "PanelMoreInfo is already finished. No more new rows should be added."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/ListOfDetails;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 102
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/ListOfDetails;->addView(Landroid/view/View;)V

    .line 103
    iput-object v0, p0, Lcom/yelp/android/ui/widgets/ListOfDetails;->g:Landroid/view/View;

    .line 104
    return-object v0
.end method
