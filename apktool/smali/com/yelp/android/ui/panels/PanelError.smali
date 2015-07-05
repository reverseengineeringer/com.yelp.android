.class public Lcom/yelp/android/ui/panels/PanelError;
.super Landroid/widget/ScrollView;
.source "PanelError.java"


# instance fields
.field private a:Lcom/yelp/android/ui/panels/aa;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/PanelError;->a(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/PanelError;->a(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/PanelError;)Lcom/yelp/android/ui/panels/aa;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->a:Lcom/yelp/android/ui/panels/aa;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/ui/panels/aa;)V

    .line 39
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->e:Landroid/view/LayoutInflater;

    .line 35
    return-void
.end method

.method public a(Lcom/yelp/android/ui/panels/aa;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 42
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f030101

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    iput-object p1, p0, Lcom/yelp/android/ui/panels/PanelError;->a:Lcom/yelp/android/ui/panels/aa;

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelError;->setFillViewport(Z)V

    .line 45
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelError;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    const v0, 0x7f0c03b1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelError;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->d:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f0c03b2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelError;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->b:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0c03b3

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelError;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->c:Landroid/widget/Button;

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->c:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/panels/z;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/z;-><init>(Lcom/yelp/android/ui/panels/PanelError;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->a:Lcom/yelp/android/ui/panels/aa;

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->c:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 64
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/util/ErrorType;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->a:Lcom/yelp/android/ui/panels/aa;

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V

    .line 68
    return-void
.end method

.method public a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 71
    invoke-virtual {p1}, Lcom/yelp/android/util/ErrorType;->getImageId()I

    move-result v0

    .line 72
    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/panels/PanelError;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/util/ErrorType;->getTextId()I

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f070588

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 82
    iput-object p2, p0, Lcom/yelp/android/ui/panels/PanelError;->a:Lcom/yelp/android/ui/panels/aa;

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->c:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/yelp/android/ui/panels/PanelError;->c:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/yelp/android/util/ErrorType;->getButtonTextId()I

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f070500

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->a:Lcom/yelp/android/ui/panels/aa;

    if-nez v0, :cond_4

    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->c:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    :cond_0
    :goto_3
    return-void

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/panels/PanelError;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-virtual {p1}, Lcom/yelp/android/util/ErrorType;->getTextId()I

    move-result v0

    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {p1}, Lcom/yelp/android/util/ErrorType;->getButtonTextId()I

    move-result v0

    goto :goto_2

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3
.end method

.method public b()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->c:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 101
    return-void
.end method

.method public setText(I)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 97
    return-void
.end method
