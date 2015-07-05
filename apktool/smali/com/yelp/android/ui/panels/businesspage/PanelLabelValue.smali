.class public Lcom/yelp/android/ui/panels/businesspage/PanelLabelValue;
.super Landroid/widget/LinearLayout;
.source "PanelLabelValue.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030117

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 27
    const v0, 0x7f0c03ed

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesspage/PanelLabelValue;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/PanelLabelValue;->a:Landroid/widget/TextView;

    .line 28
    const v0, 0x7f0c03ec

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesspage/PanelLabelValue;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/PanelLabelValue;->b:Landroid/widget/TextView;

    .line 29
    sget-object v0, Lcom/yelp/android/b;->PanelLabelValue:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 32
    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/PanelLabelValue;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 36
    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/PanelLabelValue;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/PanelLabelValue;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method

.method public setValueOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/PanelLabelValue;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/PanelLabelValue;->a:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 47
    return-void
.end method
