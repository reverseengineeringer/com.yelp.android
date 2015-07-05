.class public Lcom/yelp/android/ui/activities/reviewpage/t;
.super Lcom/yelp/android/ui/util/au;
.source "BusinessReviewHighlightsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:I

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yelp/android/ui/activities/reviewpage/v;

.field private final e:Lcom/yelp/android/serializable/YelpBusiness;


# direct methods
.method public constructor <init>(ILcom/yelp/android/ui/activities/reviewpage/v;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 47
    iput p1, p0, Lcom/yelp/android/ui/activities/reviewpage/t;->b:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/t;->c:Landroid/util/SparseArray;

    .line 49
    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/t;->d:Lcom/yelp/android/ui/activities/reviewpage/v;

    .line 50
    iput-object p3, p0, Lcom/yelp/android/ui/activities/reviewpage/t;->e:Lcom/yelp/android/serializable/YelpBusiness;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/t;)Lcom/yelp/android/ui/activities/reviewpage/v;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/t;->d:Lcom/yelp/android/ui/activities/reviewpage/v;

    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/YelpBusinessReviewInsight;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 232
    const v0, 0x7f0702d9

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v3

    .line 234
    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/StyleSpan;

    invoke-interface {v3, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/StyleSpan;

    .line 235
    array-length v4, v0

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v0, v1

    .line 236
    invoke-virtual {v5}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v6

    if-ne v6, v9, :cond_0

    .line 237
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a007f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 239
    invoke-interface {v3, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v3, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    const/16 v8, 0x21

    invoke-interface {v3, v6, v7, v5, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 235
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReviewInsight;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 244
    new-array v1, v9, [Ljava/lang/CharSequence;

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/t;->c:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/t;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 221
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/t;->c:Landroid/util/SparseArray;

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/t;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/t;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/yelp/android/serializable/ReviewHighlight;

    .line 70
    const/4 v4, 0x0

    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/t;->c:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/t;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    move-object v4, v0

    .line 74
    :cond_0
    if-nez v4, :cond_1

    .line 75
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/yelp/android/serializable/ReviewHighlight;->getMarkedUpSentence(Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v4

    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/t;->c:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/t;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 81
    :cond_1
    invoke-virtual {v7}, Lcom/yelp/android/serializable/ReviewHighlight;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/yelp/android/serializable/ReviewHighlight;->getPhotoUrl()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/ui/activities/reviewpage/t;->a(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 83
    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/u;

    invoke-direct {v1, p0, v7}, Lcom/yelp/android/ui/activities/reviewpage/u;-><init>(Lcom/yelp/android/ui/activities/reviewpage/t;Lcom/yelp/android/serializable/ReviewHighlight;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-object v0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/view/View;
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 111
    if-nez p2, :cond_0

    .line 112
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/activities/reviewpage/t;->b:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 114
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/w;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/reviewpage/w;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 116
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/w;

    .line 117
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/w;->b:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 119
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/w;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/w;->c:Landroid/widget/TextView;

    invoke-virtual {v1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :goto_0
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/w;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    const v2, 0x7f02009b

    invoke-virtual {v1, p6, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 125
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/t;->getItemViewType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 126
    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/w;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    :cond_1
    return-object p2

    .line 122
    :cond_2
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/w;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/au;->a(Ljava/util/List;)V

    .line 216
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/t;->a(I)V

    .line 217
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/reviewpage/t;->a:Z

    .line 183
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 93
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/t;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReviewInsight;

    .line 97
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/t;->c:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/t;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    move-object v4, v1

    .line 100
    :goto_0
    if-nez v4, :cond_0

    .line 101
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/t;->a(Lcom/yelp/android/serializable/YelpBusinessReviewInsight;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 102
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/t;->c:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/t;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 106
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReviewInsight;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/ui/activities/reviewpage/t;->a(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v4, v5

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviewpage/t;->a:Z

    return v0
.end method

.method public c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 133
    if-nez p2, :cond_0

    .line 134
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03011d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 137
    :cond_0
    return-object p2
.end method

.method public c()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviewpage/t;->a:Z

    .line 229
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 207
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/t;->a(Ljava/util/List;)V

    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/t;->c:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/t;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 211
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 147
    :goto_0
    invoke-super {p0}, Lcom/yelp/android/ui/util/au;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    invoke-super {p0}, Lcom/yelp/android/ui/util/au;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 168
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/au;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/yelp/android/ui/util/au;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 176
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/au;->getItemId(I)J

    move-result-wide v0

    .line 178
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Lcom/yelp/android/ui/util/au;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/t;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const/4 v0, 0x1

    .line 202
    :goto_0
    return v0

    .line 201
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/au;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 202
    instance-of v0, v0, Lcom/yelp/android/serializable/YelpBusinessReviewInsight;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/t;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 62
    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/reviewpage/t;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 57
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/reviewpage/t;->c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/reviewpage/t;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method
