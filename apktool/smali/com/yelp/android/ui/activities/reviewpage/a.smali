.class public Lcom/yelp/android/ui/activities/reviewpage/a;
.super Lcom/yelp/android/ui/util/w;
.source "BusinessReviewHighlightsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/reviewpage/a$a;,
        Lcom/yelp/android/ui/activities/reviewpage/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
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

.field private final d:Lcom/yelp/android/ui/activities/reviewpage/a$a;


# direct methods
.method public constructor <init>(ILcom/yelp/android/ui/activities/reviewpage/a$a;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 45
    iput p1, p0, Lcom/yelp/android/ui/activities/reviewpage/a;->b:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/a;->c:Landroid/util/SparseArray;

    .line 47
    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/a;->d:Lcom/yelp/android/ui/activities/reviewpage/a$a;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/a;)Lcom/yelp/android/ui/activities/reviewpage/a$a;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/a;->d:Lcom/yelp/android/ui/activities/reviewpage/a$a;

    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/YelpBusinessReviewInsight;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 243
    const v0, 0x7f070323

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v3

    .line 247
    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/StyleSpan;

    invoke-interface {v3, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/StyleSpan;

    .line 248
    array-length v4, v0

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v0, v1

    .line 249
    invoke-virtual {v5}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v6

    if-ne v6, v9, :cond_0

    .line 250
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e00b8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 253
    invoke-interface {v3, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v3, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    const/16 v8, 0x21

    invoke-interface {v3, v6, v7, v5, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 248
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReviewInsight;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 261
    new-array v1, v9, [Ljava/lang/CharSequence;

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/a;->c:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 232
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/a;->c:Landroid/util/SparseArray;

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/yelp/android/serializable/ReviewHighlight;

    .line 67
    const/4 v4, 0x0

    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/a;->c:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    move-object v4, v0

    .line 71
    :cond_0
    if-nez v4, :cond_1

    .line 72
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/yelp/android/serializable/ReviewHighlight;->a(Landroid/content/Context;)Landroid/text/Spanned;

    move-result-object v4

    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/a;->c:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 78
    :cond_1
    invoke-virtual {v7}, Lcom/yelp/android/serializable/ReviewHighlight;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/yelp/android/serializable/ReviewHighlight;->c()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/ui/activities/reviewpage/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/a$1;

    invoke-direct {v1, p0, v7}, Lcom/yelp/android/ui/activities/reviewpage/a$1;-><init>(Lcom/yelp/android/ui/activities/reviewpage/a;Lcom/yelp/android/serializable/ReviewHighlight;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-object v0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/view/View;
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 120
    if-nez p2, :cond_0

    .line 121
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/activities/reviewpage/a;->b:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 124
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/a$b;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/reviewpage/a$b;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 126
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/a$b;

    .line 127
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/a$b;->b:Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 129
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/a$b;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/a$b;->c:Landroid/widget/TextView;

    invoke-virtual {v1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_0
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/a$b;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    const v2, 0x7f0200c6

    invoke-virtual {v1, p6, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/a;->getItemViewType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 136
    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/a$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    :cond_1
    return-object p2

    .line 132
    :cond_2
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/a$b;->c:Landroid/widget/TextView;

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
    .line 226
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/w;->a(Ljava/util/List;)V

    .line 227
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/a;->a(I)V

    .line 228
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 193
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/reviewpage/a;->a:Z

    .line 194
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 97
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReviewInsight;

    .line 101
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/a;->c:Landroid/util/SparseArray;

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    move-object v4, v1

    .line 104
    :goto_0
    if-nez v4, :cond_0

    .line 105
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/a;->a(Lcom/yelp/android/serializable/YelpBusinessReviewInsight;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 106
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/a;->c:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 110
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReviewInsight;->b()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/ui/activities/reviewpage/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v4, v5

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviewpage/a;->a:Z

    return v0
.end method

.method public c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 142
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    if-nez p2, :cond_0

    .line 144
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03017f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 148
    :cond_0
    return-object p2
.end method

.method public c()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviewpage/a;->a:Z

    .line 240
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/a;->a(Ljava/util/List;)V

    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/a;->c:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/a;->c:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 222
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 158
    :goto_0
    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 179
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/w;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 187
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/w;->getItemId(I)J

    move-result-wide v0

    .line 189
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const/4 v0, 0x1

    .line 213
    :goto_0
    return v0

    .line 212
    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/w;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 213
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
    .line 52
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/a;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/reviewpage/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 54
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/reviewpage/a;->c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/reviewpage/a;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method
