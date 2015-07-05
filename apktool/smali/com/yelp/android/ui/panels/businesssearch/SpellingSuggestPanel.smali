.class public Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;
.super Landroid/widget/FrameLayout;
.source "SpellingSuggestPanel.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->a()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->a()V

    .line 27
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    const v1, 0x7f070531

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 57
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 59
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-class v3, Landroid/text/style/StyleSpan;

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    .line 60
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-class v3, Landroid/text/style/StyleSpan;

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .line 62
    invoke-virtual {v0, v1, v2, p1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    .line 65
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, -0xffff01

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x11

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 69
    :cond_0
    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 36
    const v1, 0x7f030140

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    const v0, 0x7f0c0084

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->a:Landroid/widget/TextView;

    .line 38
    return-void
.end method


# virtual methods
.method public getSuggestion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setSuggestion(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->b:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    return-void
.end method
