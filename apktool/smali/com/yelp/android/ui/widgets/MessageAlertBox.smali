.class public Lcom/yelp/android/ui/widgets/MessageAlertBox;
.super Landroid/widget/FrameLayout;
.source "MessageAlertBox.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/yelp/android/ui/widgets/WebImageView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/yelp/android/bf/c;->messageAlertBoxStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 44
    sget v1, Lcom/yelp/android/bf/i;->message_alert_box:I

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    invoke-static {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/util/dj;->a(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/SparseIntArray;)V

    .line 47
    sget v0, Lcom/yelp/android/bf/g;->padding:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->a:Landroid/view/View;

    .line 48
    sget v0, Lcom/yelp/android/bf/g;->icon:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 49
    sget v0, Lcom/yelp/android/bf/g;->title:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->c:Landroid/widget/TextView;

    .line 50
    sget v0, Lcom/yelp/android/bf/g;->subtitle:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->d:Landroid/widget/TextView;

    .line 51
    sget v0, Lcom/yelp/android/bf/g;->arrow:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->e:Landroid/widget/ImageView;

    .line 53
    sget-object v0, Lcom/yelp/android/bf/m;->BaseMessageAlertBox:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 57
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 59
    if-eqz v2, :cond_0

    .line 60
    iget-object v3, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->a:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 63
    :cond_0
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->e:Landroid/widget/ImageView;

    const/4 v3, 0x3

    sget v4, Lcom/yelp/android/bf/f;->message_alert_box_red_arrow:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 67
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setIcon(I)V

    .line 69
    const/4 v2, 0x6

    sget v3, Lcom/yelp/android/bf/d;->gray_light:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 72
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 73
    iget-object v4, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 80
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0, v5, v5}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->a(II)V

    .line 85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setPadding(IIII)V

    .line 151
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setPadding(IIII)V

    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    sget-object v1, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->CLIP:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setForceMode(Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;)V

    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 116
    return-void
.end method

.method public setIcon(I)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    sget-object v1, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->NONE:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setForceMode(Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;)V

    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageResource(I)V

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 100
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yelp/android/bf/e;->message_alert_box_icon_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/yelp/android/ui/widgets/WebImageView;->setPadding(IIII)V

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    if-nez p1, :cond_0

    .line 143
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setClickable(Z)V

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    return-void

    .line 146
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->d:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->c:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
