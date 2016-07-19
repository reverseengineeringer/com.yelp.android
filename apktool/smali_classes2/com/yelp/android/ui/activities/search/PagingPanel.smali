.class public Lcom/yelp/android/ui/activities/search/PagingPanel;
.super Landroid/widget/LinearLayout;
.source "PagingPanel.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/PagingPanel;->a()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/PagingPanel;->a()V

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/PagingPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030189

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    const v0, 0x7f0f04f1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/PagingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/PagingPanel;->b:Landroid/widget/Button;

    .line 32
    const v0, 0x7f0f04f2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/PagingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/PagingPanel;->a:Landroid/widget/Button;

    .line 33
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;I)V
    .locals 2

    .prologue
    .line 36
    iput p2, p0, Lcom/yelp/android/ui/activities/search/PagingPanel;->c:I

    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/PagingPanel;->a:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/PagingPanel;->a:Landroid/widget/Button;

    if-eqz p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 39
    return-void

    .line 38
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 7

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/PagingPanel;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/PagingPanel;->a:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    .line 50
    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    .line 51
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/search/PagingPanel;->setVisibility(I)V

    .line 55
    :goto_0
    if-ne v0, v1, :cond_2

    if-nez v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/PagingPanel;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/PagingPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070189

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/yelp/android/ui/activities/search/PagingPanel;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/PagingPanel;->a:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/PagingPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070186

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/yelp/android/ui/activities/search/PagingPanel;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_0
    :goto_1
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/activities/search/PagingPanel;->setVisibility(I)V

    goto :goto_0

    .line 59
    :cond_2
    if-nez v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/PagingPanel;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/PagingPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07018a

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/yelp/android/ui/activities/search/PagingPanel;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 62
    :cond_3
    if-nez v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/PagingPanel;->a:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/PagingPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070187

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p0, Lcom/yelp/android/ui/activities/search/PagingPanel;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public b(Landroid/view/View$OnClickListener;I)V
    .locals 2

    .prologue
    .line 42
    iput p2, p0, Lcom/yelp/android/ui/activities/search/PagingPanel;->d:I

    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/PagingPanel;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/PagingPanel;->b:Landroid/widget/Button;

    if-nez p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 45
    return-void

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
