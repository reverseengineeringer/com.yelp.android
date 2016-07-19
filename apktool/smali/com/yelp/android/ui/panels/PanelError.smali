.class public Lcom/yelp/android/ui/panels/PanelError;
.super Landroid/widget/ScrollView;
.source "PanelError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/panels/PanelError$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/panels/PanelError$a;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/LayoutInflater;

.field private f:Lcom/yelp/android/util/ErrorType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/PanelError;->a(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/PanelError;->a(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/PanelError;)Lcom/yelp/android/ui/panels/PanelError$a;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->a:Lcom/yelp/android/ui/panels/PanelError$a;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 40
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->e:Landroid/view/LayoutInflater;

    .line 36
    return-void
.end method

.method public a(Lcom/yelp/android/ui/panels/PanelError$a;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f030161

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    iput-object p1, p0, Lcom/yelp/android/ui/panels/PanelError;->a:Lcom/yelp/android/ui/panels/PanelError$a;

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelError;->setFillViewport(Z)V

    .line 46
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelError;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    const v0, 0x7f0f0496

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelError;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->d:Landroid/widget/ImageView;

    .line 50
    const v0, 0x7f0f0497

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelError;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->b:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0f0498

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/PanelError;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->c:Landroid/widget/Button;

    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->c:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/panels/PanelError$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/PanelError$1;-><init>(Lcom/yelp/android/ui/panels/PanelError;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->a:Lcom/yelp/android/ui/panels/PanelError$a;

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->c:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 66
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/util/ErrorType;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->a:Lcom/yelp/android/ui/panels/PanelError$a;

    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/panels/PanelError;->a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 70
    return-void
.end method

.method public a(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 73
    iput-object p1, p0, Lcom/yelp/android/ui/panels/PanelError;->f:Lcom/yelp/android/util/ErrorType;

    .line 74
    invoke-virtual {p1}, Lcom/yelp/android/util/ErrorType;->getImageId()I

    move-result v0

    .line 75
    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/panels/PanelError;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/util/ErrorType;->getTextId()I

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f070591

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 87
    iput-object p2, p0, Lcom/yelp/android/ui/panels/PanelError;->a:Lcom/yelp/android/ui/panels/PanelError$a;

    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->c:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/yelp/android/ui/panels/PanelError;->c:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/yelp/android/util/ErrorType;->getButtonTextId()I

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f070505

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->a:Lcom/yelp/android/ui/panels/PanelError$a;

    if-nez v0, :cond_4

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->c:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    :cond_0
    :goto_3
    return-void

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/panels/PanelError;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p1}, Lcom/yelp/android/util/ErrorType;->getTextId()I

    move-result v0

    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {p1}, Lcom/yelp/android/util/ErrorType;->getButtonTextId()I

    move-result v0

    goto :goto_2

    .line 97
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->c:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3
.end method

.method public b()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->c:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 108
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->d:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    return-void
.end method

.method public getErrorType()Lcom/yelp/android/util/ErrorType;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->f:Lcom/yelp/android/util/ErrorType;

    return-object v0
.end method

.method public setText(I)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/panels/PanelError;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 104
    return-void
.end method
