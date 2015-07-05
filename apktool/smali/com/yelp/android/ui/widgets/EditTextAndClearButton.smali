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
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/widgets/EditTextAndClearButton;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/widgets/EditTextAndClearButton;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->b:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const v3, 0x7f0b00aa

    const/4 v7, -0x1

    const/4 v2, -0x2

    const/4 v6, 0x0

    .line 50
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a:Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a:Landroid/widget/ImageView;

    const v1, 0x7f0c0065

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->b:Landroid/widget/EditText;

    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->b:Landroid/widget/EditText;

    const v1, 0x7f0c01ca

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setId(I)V

    .line 57
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 59
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 61
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 63
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 64
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 65
    const v4, 0x7f0b00ad

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 67
    iget-object v5, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a:Landroid/widget/ImageView;

    invoke-virtual {v5, v6, v2, v4, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 68
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a:Landroid/widget/ImageView;

    const v3, 0x7f02034c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
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

    .line 79
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 80
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 82
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->b:Landroid/widget/EditText;

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 84
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->b:Landroid/widget/EditText;

    invoke-virtual {p0, v2, v1}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/yelp/android/ui/widgets/g;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/widgets/g;-><init>(Lcom/yelp/android/ui/widgets/EditTextAndClearButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 104
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/yelp/android/ui/widgets/h;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/widgets/h;-><init>(Lcom/yelp/android/ui/widgets/EditTextAndClearButton;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

.method public a(Landroid/text/TextWatcher;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    return-void
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->b:Landroid/widget/EditText;

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
    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 131
    return-void
.end method
