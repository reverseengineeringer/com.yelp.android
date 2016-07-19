.class public Lcom/yelp/android/ui/activities/businesspage/c;
.super Lcom/yelp/android/ui/util/w;
.source "BusinessListButtonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/businesspage/c$3;,
        Lcom/yelp/android/ui/activities/businesspage/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/ui/activities/businesspage/b;",
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
            "Lcom/yelp/android/ui/activities/businesspage/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/yelp/android/ui/activities/businesspage/c;->a:I

    .line 44
    const/4 v0, 0x1

    sput v0, Lcom/yelp/android/ui/activities/businesspage/c;->b:I

    .line 45
    const/4 v0, 0x2

    sput v0, Lcom/yelp/android/ui/activities/businesspage/c;->c:I

    .line 46
    const/4 v0, 0x3

    sput v0, Lcom/yelp/android/ui/activities/businesspage/c;->d:I

    .line 51
    new-instance v0, Lcom/yelp/android/ui/activities/businesspage/c$1;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/businesspage/c$1;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/activities/businesspage/c;->g:Landroid/view/LayoutInflater$Factory;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/yelp/android/ui/activities/businesspage/b;",
            ">;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/c;->e:Lcom/yelp/android/serializable/YelpBusiness;

    .line 71
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/c;->f:Ljava/util/Collection;

    .line 72
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/c;->w_()V

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/businesspage/c;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/c;->e:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method private a(Lcom/yelp/android/ui/activities/businesspage/h;Lcom/yelp/android/ui/activities/businesspage/c$a;Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 230
    iget-object v0, p2, Lcom/yelp/android/ui/activities/businesspage/c$a;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 231
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/businesspage/h;->c()Ljava/util/List;

    move-result-object v0

    .line 236
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 237
    iget-object v1, p2, Lcom/yelp/android/ui/activities/businesspage/c$a;->d:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 239
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReservationSearchAction;

    .line 240
    iget-object v3, p2, Lcom/yelp/android/ui/activities/businesspage/c$a;->d:Landroid/widget/LinearLayout;

    invoke-static {v3, v0, v1, p3}, Lcom/yelp/android/ui/util/ah;->a(Landroid/view/ViewGroup;Lcom/yelp/android/serializable/SearchAction;Landroid/view/LayoutInflater;Landroid/content/Context;)Landroid/widget/Button;

    move-result-object v3

    .line 243
    iget-object v4, p2, Lcom/yelp/android/ui/activities/businesspage/c$a;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 244
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReservationSearchAction;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 245
    new-instance v4, Lcom/yelp/android/ui/activities/businesspage/c$2;

    invoke-direct {v4, p0, p1, v0, p3}, Lcom/yelp/android/ui/activities/businesspage/c$2;-><init>(Lcom/yelp/android/ui/activities/businesspage/c;Lcom/yelp/android/ui/activities/businesspage/h;Lcom/yelp/android/serializable/ReservationSearchAction;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 267
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/c;->e:Lcom/yelp/android/serializable/YelpBusiness;

    .line 77
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/businesspage/c;->w_()V

    .line 78
    return-void
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/b;

    .line 212
    instance-of v1, v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    if-eqz v1, :cond_0

    .line 213
    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    .line 214
    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/c$3;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 220
    sget v0, Lcom/yelp/android/ui/activities/businesspage/c;->c:I

    .line 223
    :goto_0
    return v0

    .line 216
    :pswitch_0
    sget v0, Lcom/yelp/android/ui/activities/businesspage/c;->b:I

    goto :goto_0

    .line 218
    :pswitch_1
    sget v0, Lcom/yelp/android/ui/activities/businesspage/c;->a:I

    goto :goto_0

    .line 223
    :cond_0
    sget v0, Lcom/yelp/android/ui/activities/businesspage/c;->c:I

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 94
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/businesspage/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/b;

    .line 97
    if-nez p2, :cond_7

    .line 98
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 102
    sget-object v2, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->MORE_INFO:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 104
    sget-object v2, Lcom/yelp/android/ui/activities/businesspage/c;->g:Landroid/view/LayoutInflater$Factory;

    invoke-virtual {v1, v2}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 107
    :cond_0
    const v2, 0x7f030071

    invoke-virtual {v1, v2, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 108
    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/c$a;

    invoke-direct {v1, p2}, Lcom/yelp/android/ui/activities/businesspage/c$a;-><init>(Landroid/view/View;)V

    .line 109
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 114
    :goto_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 116
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/c;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-interface {v0, v3, v1}, Lcom/yelp/android/ui/activities/businesspage/b;->getIcon(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)I

    move-result v1

    .line 117
    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/c;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-interface {v0, v4}, Lcom/yelp/android/ui/activities/businesspage/b;->getIconUrl(Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/String;

    move-result-object v4

    .line 118
    if-eqz v1, :cond_8

    .line 119
    iget-object v4, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-static {v3, v1}, Landroid/support/v4/content/d;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v1, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1, v6}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 128
    :goto_1
    invoke-interface {v0}, Lcom/yelp/android/ui/activities/businesspage/b;->getTintColor()I

    move-result v1

    .line 129
    if-eqz v1, :cond_1

    .line 130
    iget-object v4, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v4}, Lcom/yelp/android/ui/widgets/WebImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 131
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 132
    invoke-static {v4}, Lcom/yelp/android/d/a;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 133
    invoke-static {v4, v1}, Lcom/yelp/android/d/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 134
    iget-object v5, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v5, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    :cond_1
    invoke-interface {v0}, Lcom/yelp/android/ui/activities/businesspage/b;->getTitleColor()I

    move-result v4

    .line 138
    if-eqz v1, :cond_a

    .line 139
    iget-object v4, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    :goto_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/c;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-interface {v0, v3, v1}, Lcom/yelp/android/ui/activities/businesspage/b;->getTitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 147
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 148
    sget-object v4, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->CALL:Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 149
    iget-object v4, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->b:Landroid/widget/TextView;

    const v5, 0x7f0900eb

    invoke-virtual {v4, v3, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 151
    :cond_2
    sget-object v4, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->CALL_TO_ACTION:Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 152
    iget-object v4, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 154
    :cond_3
    iget-object v4, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v1, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    :goto_3
    instance-of v1, v0, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    if-eqz v1, :cond_4

    move-object v1, v0

    .line 161
    check-cast v1, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;

    .line 162
    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/c;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1, v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessBasicInfo;->getSubtitleColor(Lcom/yelp/android/serializable/YelpBusiness;)I

    move-result v1

    .line 163
    if-eqz v1, :cond_4

    .line 164
    iget-object v4, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    :cond_4
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/c;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-interface {v0, v3, v1}, Lcom/yelp/android/ui/activities/businesspage/b;->getSubtitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 169
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 170
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    .line 171
    const/16 v4, 0xf

    invoke-static {v1, v4}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 172
    iget-object v4, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->c:Landroid/widget/TextView;

    sget-object v5, Lcom/yelp/android/analytics/iris/EventIri;->OpenUrl:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v4, v5}, Lcom/yelp/android/ui/util/AnalyticsSpan;->a(Landroid/widget/TextView;Lcom/yelp/android/analytics/iris/a;)V

    .line 173
    iget-object v4, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->c:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 174
    iget-object v4, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 177
    :cond_5
    iget-object v4, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v1, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    :goto_4
    sget-object v1, Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;->CALL_TO_ACTION:Lcom/yelp/android/ui/activities/businesspage/BusinessDealsOffers;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 186
    iget-object v1, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 187
    iget-object v1, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->c:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 188
    iget-object v1, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->c:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 198
    :goto_5
    instance-of v1, v0, Lcom/yelp/android/ui/activities/businesspage/h;

    if-eqz v1, :cond_6

    .line 199
    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/h;

    invoke-direct {p0, v0, v2, v3}, Lcom/yelp/android/ui/activities/businesspage/c;->a(Lcom/yelp/android/ui/activities/businesspage/h;Lcom/yelp/android/ui/activities/businesspage/c$a;Landroid/content/Context;)V

    .line 201
    :cond_6
    return-object p2

    .line 111
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/businesspage/c$a;

    move-object v2, v1

    goto/16 :goto_0

    .line 121
    :cond_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 122
    iget-object v1, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 123
    iget-object v1, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1, v6}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 125
    :cond_9
    iget-object v1, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1, v7}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 140
    :cond_a
    if-eqz v4, :cond_b

    .line 141
    iget-object v1, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->b:Landroid/widget/TextView;

    invoke-static {v3, v4}, Landroid/support/v4/content/d;->b(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 143
    :cond_b
    iget-object v1, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->b:Landroid/widget/TextView;

    const v4, 0x7f0e002c

    invoke-static {v3, v4}, Landroid/support/v4/content/d;->b(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    .line 157
    :cond_c
    iget-object v1, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 180
    :cond_d
    iget-object v1, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 189
    :cond_e
    invoke-interface {v0}, Lcom/yelp/android/ui/activities/businesspage/b;->isSubtitleExpanded()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 190
    iget-object v1, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 191
    iget-object v1, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->c:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_5

    .line 193
    :cond_f
    iget-object v1, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 194
    iget-object v1, v2, Lcom/yelp/android/ui/activities/businesspage/c$a;->c:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_5
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 206
    sget v0, Lcom/yelp/android/ui/activities/businesspage/c;->d:I

    return v0
.end method

.method public w_()V
    .locals 4

    .prologue
    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/c;->f:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/b;

    .line 84
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/c;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-interface {v0, v3}, Lcom/yelp/android/ui/activities/businesspage/b;->shouldShow(Lcom/yelp/android/serializable/YelpBusiness;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/c;->a(Ljava/util/List;)V

    .line 90
    return-void
.end method
