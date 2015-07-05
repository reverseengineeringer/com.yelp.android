.class public Lcom/yelp/android/ui/panels/businesspage/f;
.super Lcom/yelp/android/ui/widgets/ListOfDetails;
.source "PanelMoreInfo.java"


# instance fields
.field private g:Ljava/lang/String;

.field private h:Lcom/yelp/android/serializable/YelpBusiness;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/widgets/ListOfDetails;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p2, p0, Lcom/yelp/android/ui/panels/businesspage/f;->h:Lcom/yelp/android/serializable/YelpBusiness;

    .line 50
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/businesspage/f;->b()V

    .line 51
    return-void
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/f;->h:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getYelpRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/panels/businesspage/f;->setAnalyticsRequestId(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/f;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070399

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesspage/f;->a(Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/businesspage/f;->e()V

    .line 59
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/businesspage/f;->f()V

    .line 60
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/businesspage/f;->d()V

    .line 61
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/businesspage/f;->c()V

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/f;->h:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getLocalizedAttributes()Ljava/util/List;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AttributedLabelValuePair;

    .line 65
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributedLabelValuePair;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 66
    sget-object v1, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v1, v2, v4, v5}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 68
    invoke-static {v1, v6}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 69
    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->OpenUrl:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/AnalyticsSpan;->addAnalyticsToSpannedWithUrls(Landroid/text/Spanned;Lcom/yelp/android/analytics/iris/b;)Landroid/text/Spannable;

    .line 72
    :goto_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributedLabelValuePair;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/panels/businesspage/f;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/f;->getChildCount()I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 81
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/businesspage/f;->setVisibility(I)V

    .line 86
    :goto_2
    return-void

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/f;->a()V

    goto :goto_2

    :cond_2
    move-object v1, v2

    goto :goto_1
.end method

.method private c()V
    .locals 10

    .prologue
    const v9, 0x7f070672

    const/4 v8, 0x0

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/f;->h:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getBestUrl()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/f;->getNewRow()Landroid/view/View;

    move-result-object v3

    .line 97
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/panels/businesspage/f;->b(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(I)V

    .line 99
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/panels/businesspage/f;->a(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v4

    .line 100
    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/panels/businesspage/f;->a(Landroid/widget/TextView;)V

    .line 102
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v5

    .line 104
    new-instance v0, Lcom/yelp/android/analytics/h;

    invoke-direct {v0}, Lcom/yelp/android/analytics/h;-><init>()V

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/yelp/android/analytics/h;->a(Ljava/lang/String;)Lcom/yelp/android/analytics/h;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->BusinessOpenURL:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v0, v2}, Lcom/yelp/android/analytics/h;->a(Lcom/yelp/android/analytics/iris/b;)Lcom/yelp/android/analytics/h;

    move-result-object v0

    const-string/jumbo v2, "id"

    iget-object v6, p0, Lcom/yelp/android/ui/panels/businesspage/f;->h:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lcom/yelp/android/analytics/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/analytics/h;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/f;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/yelp/android/analytics/i;->a(Landroid/content/Context;Lcom/yelp/android/analytics/h;)V

    .line 109
    invoke-virtual {v0}, Lcom/yelp/android/analytics/h;->a()Lcom/yelp/android/analytics/g;

    move-result-object v6

    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/f;->h:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 119
    :goto_1
    new-instance v7, Lcom/yelp/android/ui/panels/businesspage/g;

    invoke-direct {v7, p0, v6, v0}, Lcom/yelp/android/ui/panels/businesspage/g;-><init>(Lcom/yelp/android/ui/panels/businesspage/f;Lcom/yelp/android/analytics/g;Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/yelp/android/ui/util/AnalyticsSpan;

    invoke-direct {v0, v6, v2}, Lcom/yelp/android/ui/util/AnalyticsSpan;-><init>(Lcom/yelp/android/analytics/g;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v6, 0x21

    invoke-virtual {v5, v0, v8, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 130
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v0, 0x7f0c01e1

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 134
    invoke-static {v3, v9, v1}, Lcom/yelp/android/ui/util/k;->a(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 117
    goto :goto_1
.end method

.method private d()V
    .locals 11

    .prologue
    const v9, 0x7f07037e

    const/4 v8, 0x0

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/f;->h:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getMenuUrl()Ljava/lang/String;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/f;->h:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getMenuDisplayUrl()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 155
    :goto_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/f;->getNewRow()Landroid/view/View;

    move-result-object v2

    .line 156
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/panels/businesspage/f;->b(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(I)V

    .line 157
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/panels/businesspage/f;->a(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v3

    .line 158
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/panels/businesspage/f;->a(Landroid/widget/TextView;)V

    .line 160
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 161
    new-instance v4, Lcom/yelp/android/analytics/g;

    sget-object v5, Lcom/yelp/android/analytics/iris/EventIri;->BusinessOpenMenuURL:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v6, p0, Lcom/yelp/android/ui/panels/businesspage/f;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/yelp/android/ui/panels/businesspage/f;->h:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v7}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/yelp/android/analytics/g;-><init>(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v5, Lcom/yelp/android/ui/panels/businesspage/h;

    invoke-direct {v5, p0, v4, v1}, Lcom/yelp/android/ui/panels/businesspage/h;-><init>(Lcom/yelp/android/ui/panels/businesspage/f;Lcom/yelp/android/analytics/g;Ljava/lang/String;)V

    .line 173
    new-instance v6, Lcom/yelp/android/ui/util/AnalyticsSpan;

    invoke-direct {v6, v4, v1}, Lcom/yelp/android/ui/util/AnalyticsSpan;-><init>(Lcom/yelp/android/analytics/g;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v7, 0x21

    invoke-virtual {v0, v6, v8, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 175
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v0, 0x7f0c01e1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 179
    invoke-static {v2, v9, v1}, Lcom/yelp/android/ui/util/k;->a(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 152
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
    const v5, 0x7f0702eb

    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/f;->h:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getHours()Ljava/util/List;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/yelp/android/ui/panels/businesspage/f;->h:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    .line 185
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/yelp/android/serializable/YelpHoursPair;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/YelpHoursPair;

    .line 187
    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesspage/f;->h:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getLocalizedHours()Ljava/util/List;

    move-result-object v2

    .line 189
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 205
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/f;->getNewRow()Landroid/view/View;

    move-result-object v3

    .line 194
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/panels/businesspage/f;->b(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 196
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/panels/businesspage/f;->a(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v4

    .line 198
    invoke-static {v0, v1}, Lcom/yelp/android/services/r;->a([Lcom/yelp/android/serializable/YelpHoursPair;Ljava/util/TimeZone;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/f;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0700f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 203
    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    invoke-static {v3, v5, v0}, Lcom/yelp/android/ui/util/k;->a(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_1
    const-string/jumbo v0, "\n"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private f()V
    .locals 4

    .prologue
    const v3, 0x7f070618

    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/f;->h:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getTransitDescription()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/businesspage/f;->getNewRow()Landroid/view/View;

    move-result-object v1

    .line 214
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/panels/businesspage/f;->b(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 216
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/panels/businesspage/f;->a(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v2

    .line 217
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    invoke-static {v1, v3, v0}, Lcom/yelp/android/ui/util/k;->a(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private setAnalyticsRequestId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesspage/f;->g:Ljava/lang/String;

    .line 223
    return-void
.end method
