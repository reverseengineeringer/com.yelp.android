.class public Lcom/yelp/android/ui/activities/search/ToolbarSearch;
.super Landroid/widget/LinearLayout;
.source "ToolbarSearch.java"


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Ljava/lang/CharSequence;

.field private c:Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 123
    new-instance v0, Lcom/yelp/android/ui/activities/search/ToolbarSearch$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch$1;-><init>(Lcom/yelp/android/ui/activities/search/ToolbarSearch;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->f:Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver$a;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/ToolbarSearch;)Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->c:Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/ToolbarSearch;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->b:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/search/ToolbarSearch;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->a:Ljava/lang/CharSequence;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->a:Ljava/lang/CharSequence;

    .line 111
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->b:Ljava/lang/CharSequence;

    .line 112
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070231

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 115
    :cond_1
    if-nez v0, :cond_2

    .line 116
    const-string/jumbo v0, ""

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0706c3

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

    .line 120
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method

.method public getFilterButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->e:Landroid/widget/Button;

    return-object v0
.end method

.method public getTextField()Landroid/view/View;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->c:Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->c:Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->b(Landroid/content/Context;)V

    .line 64
    :cond_0
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->i:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    sget-object v1, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->enabled:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->e:Landroid/widget/Button;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 69
    :cond_1
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->i:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    sget-object v1, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->enabled:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "filter_with_text"

    .line 73
    :goto_0
    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->SearchFilter:Lcom/yelp/android/analytics/iris/ViewIri;

    const-string/jumbo v2, "shows_filter_text"

    invoke-static {v2, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 77
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->f:Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver$a;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->a:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->b:Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver$a;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->c:Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;

    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->c:Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->a(Landroid/content/Context;)V

    .line 79
    return-void

    .line 69
    :cond_2
    const-string/jumbo v0, "filter_with_image"

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->c:Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->c:Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;->b(Landroid/content/Context;)V

    .line 88
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 89
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 53
    const v0, 0x7f0f05c5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->d:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0f05c6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->e:Landroid/widget/Button;

    .line 55
    return-void
.end method

.method public setLocation(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->b:Ljava/lang/CharSequence;

    .line 98
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->a()V

    .line 99
    return-void
.end method

.method public setTerms(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->a:Ljava/lang/CharSequence;

    .line 93
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/ToolbarSearch;->a()V

    .line 94
    return-void
.end method
