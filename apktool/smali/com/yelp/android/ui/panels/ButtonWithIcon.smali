.class public Lcom/yelp/android/ui/panels/ButtonWithIcon;
.super Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;
.source "ButtonWithIcon.java"


# instance fields
.field private final a:Lcom/yelp/android/ui/widgets/WebImageView;

.field private final b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/panels/ButtonWithIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 34
    const v0, 0x7f0101de

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/panels/ButtonWithIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 40
    const/4 v1, 0x4

    const v2, 0x7f03015c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 41
    invoke-static {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/util/ay;->a(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/SparseIntArray;)V

    .line 42
    const v0, 0x7f0f00a5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/ButtonWithIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/ButtonWithIcon;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 43
    const v0, 0x7f0f00ef

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/ButtonWithIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/ButtonWithIcon;->b:Landroid/widget/TextView;

    .line 45
    sget-object v0, Lcom/yelp/android/b$a;->PanelLabelValue:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/yelp/android/ui/panels/ButtonWithIcon;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    sget-object v0, Lcom/yelp/android/b$a;->WebImageView:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/yelp/android/ui/panels/ButtonWithIcon;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/WebImageView;->applyTypedArray(Landroid/content/res/TypedArray;)V

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method


# virtual methods
.method public getImageView()Lcom/yelp/android/ui/widgets/WebImageView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ButtonWithIcon;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ButtonWithIcon;->b:Landroid/widget/TextView;

    return-object v0
.end method
