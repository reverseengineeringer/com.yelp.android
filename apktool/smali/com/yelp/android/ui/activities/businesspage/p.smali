.class public Lcom/yelp/android/ui/activities/businesspage/p;
.super Lcom/yelp/android/ui/util/au;
.source "BusinessListButtonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/ui/activities/businesspage/o;",
        ">;"
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static final g:Landroid/view/LayoutInflater$Factory;


# instance fields
.field private e:Lcom/yelp/android/serializable/YelpBusiness;

.field private final f:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/ui/activities/businesspage/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/yelp/android/ui/activities/businesspage/p;->a:I

    .line 37
    const/4 v0, 0x1

    sput v0, Lcom/yelp/android/ui/activities/businesspage/p;->b:I

    .line 38
    const/4 v0, 0x2

    sput v0, Lcom/yelp/android/ui/activities/businesspage/p;->c:I

    .line 39
    const/4 v0, 0x3

    sput v0, Lcom/yelp/android/ui/activities/businesspage/p;->d:I

    .line 44
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/q;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/businesspage/q;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/p;->g:Landroid/view/LayoutInflater$Factory;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/yelp/android/ui/activities/businesspage/o;",
            ">;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/p;->e:Lcom/yelp/android/serializable/YelpBusiness;

    .line 62
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/p;->f:Ljava/util/Collection;

    .line 63
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/p;->g_()V

    .line 64
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/p;->e:Lcom/yelp/android/serializable/YelpBusiness;

    .line 68
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/p;->g_()V

    .line 69
    return-void
.end method

.method public g_()V
    .locals 4

    .prologue
    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/p;->f:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/o;

    .line 75
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/p;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-interface {v0, v3}, Lcom/yelp/android/ui/activities/businesspage/o;->shouldShow(Lcom/yelp/android/serializable/YelpBusiness;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/p;->a(Ljava/util/List;)V

    .line 81
    return-void
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/p;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/o;

    .line 192
    instance-of v1, v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    if-eqz v1, :cond_0

    .line 193
    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    .line 194
    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/r;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 200
    sget v0, Lcom/yelp/android/ui/activities/businesspage/p;->c:I

    .line 203
    :goto_0
    return v0

    .line 196
    :pswitch_0
    sget v0, Lcom/yelp/android/ui/activities/businesspage/p;->b:I

    goto :goto_0

    .line 198
    :pswitch_1
    sget v0, Lcom/yelp/android/ui/activities/businesspage/p;->a:I

    goto :goto_0

    .line 203
    :cond_0
    sget v0, Lcom/yelp/android/ui/activities/businesspage/p;->c:I

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 85
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/p;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/o;

    .line 88
    if-nez p2, :cond_5

    .line 89
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 93
    sget-object v2, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MORE_INFO:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 95
    sget-object v2, Lcom/yelp/android/ui/activities/businesspage/p;->g:Landroid/view/LayoutInflater$Factory;

    invoke-virtual {v1, v2}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 98
    :cond_0
    const v2, 0x7f030062

    invoke-virtual {v1, v2, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 99
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/s;

    invoke-direct {v1, p2}, Lcom/yelp/android/ui/activities/businesspage/s;-><init>(Landroid/view/View;)V

    .line 100
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 105
    :goto_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 108
    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/p;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-interface {v0, v2, v4}, Lcom/yelp/android/ui/activities/businesspage/o;->getIcon(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)I

    move-result v4

    .line 109
    iget-object v5, p0, Lcom/yelp/android/ui/activities/businesspage/p;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-interface {v0, v5}, Lcom/yelp/android/ui/activities/businesspage/o;->getIconUrl(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;

    move-result-object v5

    .line 110
    if-eqz v4, :cond_6

    .line 111
    iget-object v5, v1, Lcom/yelp/android/ui/activities/businesspage/s;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v4, v1, Lcom/yelp/android/ui/activities/businesspage/s;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v4, v7}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 120
    :goto_1
    invoke-interface {v0}, Lcom/yelp/android/ui/activities/businesspage/o;->getTintColor()I

    move-result v4

    .line 121
    if-eqz v4, :cond_1

    .line 122
    iget-object v5, v1, Lcom/yelp/android/ui/activities/businesspage/s;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v5}, Lcom/yelp/android/ui/widgets/WebImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 123
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 124
    invoke-static {v5}, Lcom/yelp/android/a/a;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 125
    invoke-static {v5, v4}, Lcom/yelp/android/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 126
    iget-object v6, v1, Lcom/yelp/android/ui/activities/businesspage/s;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v6, v5}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_1
    invoke-interface {v0}, Lcom/yelp/android/ui/activities/businesspage/o;->getTitleColor()I

    move-result v5

    .line 130
    if-eqz v4, :cond_8

    .line 131
    iget-object v3, v1, Lcom/yelp/android/ui/activities/businesspage/s;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    :goto_2
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/p;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-interface {v0, v2, v3}, Lcom/yelp/android/ui/activities/businesspage/o;->getTitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 139
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 140
    sget-object v4, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->CALL:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 141
    iget-object v4, v1, Lcom/yelp/android/ui/activities/businesspage/s;->b:Landroid/widget/TextView;

    const v5, 0x7f0f0094

    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 143
    :cond_2
    sget-object v4, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->CALL_TO_ACTION:Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 144
    iget-object v4, v1, Lcom/yelp/android/ui/activities/businesspage/s;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 146
    :cond_3
    iget-object v4, v1, Lcom/yelp/android/ui/activities/businesspage/s;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v3, v1, Lcom/yelp/android/ui/activities/businesspage/s;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    :goto_3
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/p;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-interface {v0, v2, v3}, Lcom/yelp/android/ui/activities/businesspage/o;->getSubtitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;

    move-result-object v2

    .line 153
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 154
    invoke-static {v2}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v2

    .line 155
    const/16 v3, 0xf

    invoke-static {v2, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 156
    iget-object v3, v1, Lcom/yelp/android/ui/activities/businesspage/s;->c:Landroid/widget/TextView;

    sget-object v4, Lcom/yelp/android/analytics/iris/EventIri;->OpenUrl:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v3, v4}, Lcom/yelp/android/ui/util/AnalyticsSpan;->addAnalyticsToTextViewWithUrls(Landroid/widget/TextView;Lcom/yelp/android/analytics/iris/b;)V

    .line 157
    iget-object v3, v1, Lcom/yelp/android/ui/activities/businesspage/s;->c:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 158
    iget-object v3, v1, Lcom/yelp/android/ui/activities/businesspage/s;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 161
    :cond_4
    iget-object v3, v1, Lcom/yelp/android/ui/activities/businesspage/s;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v2, v1, Lcom/yelp/android/ui/activities/businesspage/s;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    :goto_4
    sget-object v2, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->CALL_TO_ACTION:Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 170
    iget-object v0, v1, Lcom/yelp/android/ui/activities/businesspage/s;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 171
    iget-object v0, v1, Lcom/yelp/android/ui/activities/businesspage/s;->c:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 172
    iget-object v0, v1, Lcom/yelp/android/ui/activities/businesspage/s;->c:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 181
    :goto_5
    return-object p2

    .line 102
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/businesspage/s;

    goto/16 :goto_0

    .line 113
    :cond_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 114
    iget-object v4, v1, Lcom/yelp/android/ui/activities/businesspage/s;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v4, v5}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 115
    iget-object v4, v1, Lcom/yelp/android/ui/activities/businesspage/s;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v4, v7}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 117
    :cond_7
    iget-object v4, v1, Lcom/yelp/android/ui/activities/businesspage/s;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v4, v8}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 132
    :cond_8
    if-eqz v5, :cond_9

    .line 133
    iget-object v4, v1, Lcom/yelp/android/ui/activities/businesspage/s;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 135
    :cond_9
    iget-object v4, v1, Lcom/yelp/android/ui/activities/businesspage/s;->b:Landroid/widget/TextView;

    const v5, 0x7f0a0010

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 149
    :cond_a
    iget-object v3, v1, Lcom/yelp/android/ui/activities/businesspage/s;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 164
    :cond_b
    iget-object v2, v1, Lcom/yelp/android/ui/activities/businesspage/s;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 173
    :cond_c
    invoke-interface {v0}, Lcom/yelp/android/ui/activities/businesspage/o;->isSubtitleExpanded()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 174
    iget-object v0, v1, Lcom/yelp/android/ui/activities/businesspage/s;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 175
    iget-object v0, v1, Lcom/yelp/android/ui/activities/businesspage/s;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_5

    .line 177
    :cond_d
    iget-object v0, v1, Lcom/yelp/android/ui/activities/businesspage/s;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 178
    iget-object v0, v1, Lcom/yelp/android/ui/activities/businesspage/s;->c:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_5
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 186
    sget v0, Lcom/yelp/android/ui/activities/businesspage/p;->d:I

    return v0
.end method
