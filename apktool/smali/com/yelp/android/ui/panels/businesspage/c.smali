.class public Lcom/yelp/android/ui/panels/businesspage/c;
.super Lcom/yelp/android/ui/widgets/ListOfDetails;
.source "PanelMoreInfoHeader.java"


# instance fields
.field private b:Lcom/yelp/android/serializable/YelpBusiness;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/widgets/ListOfDetails;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object p2, p0, Lcom/yelp/android/ui/panels/businesspage/c;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 51
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/businesspage/c;->b()V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/businesspage/c;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/c;->b:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/businesspage/c;->f()V

    .line 56
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/businesspage/c;->d()V

    .line 57
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/businesspage/c;->e()V

    .line 58
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/businesspage/c;->h()V

    .line 59
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/businesspage/c;->c()V

    .line 60
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/businesspage/c;->g()V

    .line 63
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/c;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesspage/c;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannableWidget;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/widgets/SpannableWidget;->setLeft(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/c;->a()V

    .line 68
    :cond_0
    return-void
.end method

.method private c()V
    .locals 10

    .prologue
    const v9, 0x7f070651

    const/4 v8, 0x0

    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/c;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->y()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/c;->getNewRow()Landroid/view/View;

    move-result-object v3

    .line 79
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/panels/businesspage/c;->b(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    .line 81
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/panels/businesspage/c;->a(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v4

    .line 82
    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/panels/businesspage/c;->a(Landroid/widget/TextView;)V

    .line 84
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v5

    .line 86
    new-instance v0, Lcom/yelp/android/analytics/g$a;

    invoke-direct {v0}, Lcom/yelp/android/analytics/g$a;-><init>()V

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/c;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/analytics/g$a;->a(Ljava/lang/String;)Lcom/yelp/android/analytics/g$a;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->BusinessOpenURL:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v0, v2}, Lcom/yelp/android/analytics/g$a;->a(Lcom/yelp/android/analytics/iris/a;)Lcom/yelp/android/analytics/g$a;

    move-result-object v0

    const-string/jumbo v2, "id"

    iget-object v6, p0, Lcom/yelp/android/ui/panels/businesspage/c;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lcom/yelp/android/analytics/g$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/analytics/g$a;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/yelp/android/analytics/h;->a(Landroid/content/Context;Lcom/yelp/android/analytics/g$a;)V

    .line 92
    invoke-virtual {v0}, Lcom/yelp/android/analytics/g$a;->a()Lcom/yelp/android/analytics/g;

    move-result-object v6

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/c;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->al()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 102
    :goto_1
    new-instance v7, Lcom/yelp/android/ui/panels/businesspage/c$1;

    invoke-direct {v7, p0, v6, v0}, Lcom/yelp/android/ui/panels/businesspage/c$1;-><init>(Lcom/yelp/android/ui/panels/businesspage/c;Lcom/yelp/android/analytics/g;Ljava/lang/String;)V

    .line 111
    new-instance v0, Lcom/yelp/android/ui/util/AnalyticsSpan;

    invoke-direct {v0, v6, v2}, Lcom/yelp/android/ui/util/AnalyticsSpan;-><init>(Lcom/yelp/android/analytics/g;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v6, 0x21

    invoke-virtual {v5, v0, v8, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 117
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v0, 0x7f0f021c

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 121
    invoke-static {v3, v9, v1}, Lcom/yelp/android/ui/util/h;->a(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 100
    goto :goto_1
.end method

.method private d()V
    .locals 11

    .prologue
    const v9, 0x7f0703bc

    const/4 v8, 0x0

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/c;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aj()Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/c;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->ai()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 142
    :goto_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/c;->getNewRow()Landroid/view/View;

    move-result-object v2

    .line 143
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/panels/businesspage/c;->b(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    .line 144
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/panels/businesspage/c;->a(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v3

    .line 145
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/panels/businesspage/c;->a(Landroid/widget/TextView;)V

    .line 147
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 148
    new-instance v4, Lcom/yelp/android/analytics/g;

    sget-object v5, Lcom/yelp/android/analytics/iris/EventIri;->BusinessOpenMenuURL:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v6, p0, Lcom/yelp/android/ui/panels/businesspage/c;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusiness;->n()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/yelp/android/ui/panels/businesspage/c;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/yelp/android/analytics/g;-><init>(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v5, Lcom/yelp/android/ui/panels/businesspage/c$2;

    invoke-direct {v5, p0, v4, v1}, Lcom/yelp/android/ui/panels/businesspage/c$2;-><init>(Lcom/yelp/android/ui/panels/businesspage/c;Lcom/yelp/android/analytics/g;Ljava/lang/String;)V

    .line 164
    new-instance v6, Lcom/yelp/android/ui/util/AnalyticsSpan;

    invoke-direct {v6, v4, v1}, Lcom/yelp/android/ui/util/AnalyticsSpan;-><init>(Lcom/yelp/android/analytics/g;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v7, 0x21

    invoke-virtual {v0, v6, v8, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 169
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v0, 0x7f0f021c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 173
    invoke-static {v2, v9, v1}, Lcom/yelp/android/ui/util/h;->a(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 139
    goto :goto_1

    :cond_2
    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_1
.end method

.method private e()V
    .locals 6

    .prologue
    const v5, 0x7f07032c

    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/c;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aM()Ljava/util/List;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/c;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->d()Ljava/util/TimeZone;

    move-result-object v1

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/yelp/android/serializable/YelpHoursPair;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/YelpHoursPair;

    .line 181
    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/c;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aQ()Ljava/util/List;

    move-result-object v2

    .line 183
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 199
    :goto_0
    return-void

    .line 187
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/c;->getNewRow()Landroid/view/View;

    move-result-object v3

    .line 188
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/panels/businesspage/c;->b(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 190
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/panels/businesspage/c;->a(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v4

    .line 192
    invoke-static {v0, v1}, Lcom/yelp/android/services/f;->a([Lcom/yelp/android/serializable/YelpHoursPair;Ljava/util/TimeZone;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07017c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    invoke-static {v3, v5, v0}, Lcom/yelp/android/ui/util/h;->a(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_1
    const-string/jumbo v0, "\n"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private f()V
    .locals 4

    .prologue
    const v3, 0x7f070605

    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/c;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->an()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/c;->getNewRow()Landroid/view/View;

    move-result-object v1

    .line 208
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/panels/businesspage/c;->b(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 210
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/panels/businesspage/c;->a(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v2

    .line 211
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-static {v1, v3, v0}, Lcom/yelp/android/ui/util/h;->a(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private g()V
    .locals 6

    .prologue
    const v5, 0x7f070320

    const/4 v4, 0x0

    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/c;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->am()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 219
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/c;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->am()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 220
    new-instance v1, Landroid/text/style/URLSpan;

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/c;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->ah()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/c;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->am()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-interface {v0, v1, v4, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 225
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->OpenUrl:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/AnalyticsSpan;->a(Landroid/text/Spanned;Lcom/yelp/android/analytics/iris/a;)Landroid/text/Spannable;

    .line 226
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/panels/businesspage/c;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v0

    .line 227
    const v1, 0x7f0f021c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 228
    new-instance v1, Lcom/yelp/android/ui/panels/businesspage/c$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/businesspage/c$3;-><init>(Lcom/yelp/android/ui/panels/businesspage/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/c;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->ah()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/yelp/android/ui/util/h;->a(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private h()V
    .locals 5

    .prologue
    const v4, 0x7f07047e

    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/c;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->as()Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/c;->getNewRow()Landroid/view/View;

    move-result-object v2

    .line 245
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/panels/businesspage/c;->b(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 246
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/panels/businesspage/c;->a(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    const v0, 0x7f0f021d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 249
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    const v3, 0x7f07018e

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 251
    new-instance v0, Lcom/yelp/android/ui/panels/businesspage/c$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/businesspage/c$4;-><init>(Lcom/yelp/android/ui/panels/businesspage/c;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    invoke-static {v2, v4, v1}, Lcom/yelp/android/ui/util/h;->a(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0
.end method
