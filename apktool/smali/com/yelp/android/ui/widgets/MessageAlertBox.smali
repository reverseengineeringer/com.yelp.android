.class public Lcom/yelp/android/ui/widgets/MessageAlertBox;
.super Landroid/widget/FrameLayout;
.source "MessageAlertBox.java"


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/yelp/android/ui/widgets/WebImageView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/ImageView;

.field private final f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/yelp/android/co/a$b;->messageAlertBoxStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 48
    sget v1, Lcom/yelp/android/co/a$l;->YelpView_yelpLayout:I

    sget v2, Lcom/yelp/android/co/a$h;->message_alert_box:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    invoke-static {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/util/ay;->a(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/SparseIntArray;)V

    .line 51
    sget v0, Lcom/yelp/android/co/a$f;->padding:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->a:Landroid/view/View;

    .line 52
    sget v0, Lcom/yelp/android/co/a$f;->icon:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 53
    sget v0, Lcom/yelp/android/co/a$f;->title:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->c:Landroid/widget/TextView;

    .line 54
    sget v0, Lcom/yelp/android/co/a$f;->subtitle:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->d:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/yelp/android/co/a$f;->arrow:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->e:Landroid/widget/ImageView;

    .line 56
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->f:Landroid/content/Context;

    .line 58
    sget-object v0, Lcom/yelp/android/co/a$l;->BaseMessageAlertBox:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 63
    sget v2, Lcom/yelp/android/co/a$l;->BaseMessageAlertBox_messageAlertBackground:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 65
    if-eqz v2, :cond_0

    .line 66
    iget-object v3, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->a:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->e:Landroid/widget/ImageView;

    sget v3, Lcom/yelp/android/co/a$l;->BaseMessageAlertBox_messageAlertArrow:I

    sget v4, Lcom/yelp/android/co/a$e;->message_alert_box_red_arrow:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    sget v2, Lcom/yelp/android/co/a$l;->BaseMessageAlertBox_messageAlertIcon:I

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 75
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setIcon(I)V

    .line 77
    sget v2, Lcom/yelp/android/co/a$l;->BaseMessageAlertBox_messageAlertTextColor:I

    sget v3, Lcom/yelp/android/co/a$c;->gray_light:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 80
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 81
    iget-object v4, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    sget v3, Lcom/yelp/android/co/a$l;->BaseMessageAlertBox_messageAlertTitle:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    sget v3, Lcom/yelp/android/co/a$l;->BaseMessageAlertBox_messageAlertSubtitleTextColor:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 90
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    sget v1, Lcom/yelp/android/co/a$l;->BaseMessageAlertBox_messageAlertSubtitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p0, v5, v5}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->a(II)V

    .line 95
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setPadding(IIII)V

    .line 168
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/util/u$a;->b(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 124
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setPadding(IIII)V

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    sget-object v1, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->CLIP:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setForceMode(Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;)V

    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 133
    return-void
.end method

.method public setIcon(I)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    sget-object v1, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->NONE:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setForceMode(Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;)V

    .line 101
    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageResource(I)V

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 110
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/yelp/android/co/a$d;->message_alert_box_icon_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/yelp/android/ui/widgets/WebImageView;->setPadding(IIII)V

    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->b:Lcom/yelp/android/ui/widgets/WebImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 119
    :goto_0
    return-void

    .line 117
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

    .line 157
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    if-nez p1, :cond_0

    .line 160
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->setClickable(Z)V

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->e:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/MessageAlertBox;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    return-void

    .line 163
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->d:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->c:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/MessageAlertBox;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
