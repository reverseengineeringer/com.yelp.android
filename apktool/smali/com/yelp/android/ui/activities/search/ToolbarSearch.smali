.class public Lcom/yelp/android/ui/activities/search/ToolbarSearch;
.super Landroid/widget/LinearLayout;
.source "ToolbarSearch.java"


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Ljava/lang/CharSequence;

.field private c:Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageButton;

.field private f:Lcom/yelp/android/ui/activities/search/at;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    new-instance v0, Lcom/yelp/android/ui/activities/search/az;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/az;-><init>(Lcom/yelp/android/ui/activities/search/ToolbarSearch;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->f:Lcom/yelp/android/ui/activities/search/at;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/ToolbarSearch;)Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->c:Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/ToolbarSearch;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->b:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/search/ToolbarSearch;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->a:Ljava/lang/CharSequence;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->a:Ljava/lang/CharSequence;

    .line 89
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->b:Ljava/lang/CharSequence;

    .line 90
    if-nez v1, :cond_0

    .line 91
    const-string/jumbo v1, ""

    .line 93
    :cond_0
    if-nez v0, :cond_1

    .line 94
    const-string/jumbo v0, ""

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0706ab

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method

.method public getFilterButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->e:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getTextField()Landroid/view/View;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->c:Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->c:Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->b(Landroid/content/Context;)V

    .line 55
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->f:Lcom/yelp/android/ui/activities/search/at;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->a:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->b:Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;-><init>(Lcom/yelp/android/ui/activities/search/at;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->c:Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;

    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->c:Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->a(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->c:Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->c:Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->b(Landroid/content/Context;)V

    .line 66
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 67
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 45
    const v0, 0x7f0c04bf

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->d:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0c04c0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->e:Landroid/widget/ImageButton;

    .line 47
    return-void
.end method

.method public setLocation(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->b:Ljava/lang/CharSequence;

    .line 76
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->a()V

    .line 77
    return-void
.end method

.method public setTerms(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->a:Ljava/lang/CharSequence;

    .line 71
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->a()V

    .line 72
    return-void
.end method
