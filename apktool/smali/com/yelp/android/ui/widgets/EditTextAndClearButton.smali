.class public Lcom/yelp/android/ui/widgets/EditTextAndClearButton;
.super Landroid/widget/RelativeLayout;
.source "EditTextAndClearButton.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/EditTextAndClearButton;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/widgets/EditTextAndClearButton;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->b:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const v3, 0x7f0a0118

    const/4 v7, -0x1

    const/4 v2, -0x2

    const/4 v6, 0x0

    .line 49
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a:Landroid/widget/ImageView;

    const v1, 0x7f0f008a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->b:Landroid/widget/EditText;

    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->b:Landroid/widget/EditText;

    const v1, 0x7f0f01fa

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 56
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 60
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 62
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 63
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 64
    const v4, 0x7f0a011b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 66
    iget-object v5, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a:Landroid/widget/ImageView;

    invoke-virtual {v5, v6, v2, v4, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 67
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a:Landroid/widget/ImageView;

    const v3, 0x7f02049b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 72
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 73
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 78
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 79
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 81
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 83
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->b:Landroid/widget/EditText;

    invoke-virtual {p0, v2, v1}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/yelp/android/ui/widgets/EditTextAndClearButton$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton$1;-><init>(Lcom/yelp/android/ui/widgets/EditTextAndClearButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/yelp/android/ui/widgets/EditTextAndClearButton$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton$2;-><init>(Lcom/yelp/android/ui/widgets/EditTextAndClearButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

.method public a(Landroid/text/TextWatcher;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public setHint(I)V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(I)V

    .line 115
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 135
    return-void
.end method
