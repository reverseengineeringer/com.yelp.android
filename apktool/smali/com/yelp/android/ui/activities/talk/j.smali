.class public Lcom/yelp/android/ui/activities/talk/j;
.super Landroid/widget/BaseAdapter;
.source "ButtonAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/util/j;


# instance fields
.field private final a:Lcom/yelp/android/ui/activities/talk/l;

.field private b:Lcom/yelp/android/ui/panels/PanelLoading;

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/talk/l;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/j;->a:Lcom/yelp/android/ui/activities/talk/l;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/j;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/yelp/android/ui/activities/talk/j;->c:I

    return v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/talk/j;)Lcom/yelp/android/ui/activities/talk/l;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/j;->a:Lcom/yelp/android/ui/activities/talk/l;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 100
    iput p1, p0, Lcom/yelp/android/ui/activities/talk/j;->c:I

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/talk/j;->d:Z

    .line 102
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/talk/j;->d:Z

    .line 96
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/j;->notifyDataSetChanged()V

    .line 97
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/talk/j;->d:Z

    .line 71
    iput v0, p0, Lcom/yelp/android/ui/activities/talk/j;->c:I

    .line 72
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/talk/j;->d:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/activities/talk/j;->c:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 91
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/talk/j;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 37
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/talk/j;->d:Z

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/j;->b:Lcom/yelp/android/ui/panels/PanelLoading;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/yelp/android/ui/panels/PanelLoading;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/j;->b:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 40
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/j;->b:Lcom/yelp/android/ui/panels/PanelLoading;

    sget-object v1, Lcom/yelp/android/ui/panels/CommonLoadingSpinner;->SMALL:Lcom/yelp/android/ui/panels/CommonLoadingSpinner;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelLoading;->setSpinner(Lcom/yelp/android/ui/panels/y;)V

    .line 42
    :cond_0
    iget-object p2, p0, Lcom/yelp/android/ui/activities/talk/j;->b:Lcom/yelp/android/ui/panels/PanelLoading;

    .line 60
    :goto_0
    return-object p2

    .line 45
    :cond_1
    if-nez p2, :cond_2

    .line 46
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030149

    invoke-virtual {v0, v1, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 48
    new-instance v0, Lcom/yelp/android/ui/activities/talk/m;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/talk/m;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/talk/m;

    .line 52
    iget-object v1, v0, Lcom/yelp/android/ui/activities/talk/m;->a:Landroid/widget/Button;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070575

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/yelp/android/ui/activities/talk/j;->c:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, v0, Lcom/yelp/android/ui/activities/talk/m;->a:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/talk/k;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/talk/k;-><init>(Lcom/yelp/android/ui/activities/talk/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x2

    return v0
.end method
