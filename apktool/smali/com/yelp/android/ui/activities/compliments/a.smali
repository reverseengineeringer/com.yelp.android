.class public Lcom/yelp/android/ui/activities/compliments/a;
.super Lcom/yelp/android/ui/util/w;
.source "ComplimentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/compliments/a$c;,
        Lcom/yelp/android/ui/activities/compliments/a$a;,
        Lcom/yelp/android/ui/activities/compliments/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/Compliment;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/Compliment;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/yelp/android/ui/activities/compliments/Mode;

.field private final c:Lcom/yelp/android/serializable/User;

.field private final d:Z

.field private final transient e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/User;Lcom/yelp/android/ui/activities/compliments/Mode;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/User;",
            "Lcom/yelp/android/ui/activities/compliments/Mode;",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/Compliment;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/yelp/android/ui/activities/compliments/a;->b:Lcom/yelp/android/ui/activities/compliments/Mode;

    .line 76
    iput-object p3, p0, Lcom/yelp/android/ui/activities/compliments/a;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/compliments/a;->e:Landroid/util/SparseArray;

    .line 78
    iput-object p1, p0, Lcom/yelp/android/ui/activities/compliments/a;->c:Lcom/yelp/android/serializable/User;

    .line 79
    iput-boolean p4, p0, Lcom/yelp/android/ui/activities/compliments/a;->d:Z

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/compliments/a;)Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/a;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/yelp/android/serializable/Compliment;)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const v6, 0x7f0e002c

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 154
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->m()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->a()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->j()Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;

    move-result-object v1

    .line 157
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/compliments/a;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v2, v3}, Lcom/yelp/android/appdata/webrequests/co;->a(Lcom/yelp/android/serializable/User;)Z

    move-result v2

    .line 159
    iget-boolean v3, p0, Lcom/yelp/android/ui/activities/compliments/a;->d:Z

    if-eqz v3, :cond_0

    .line 160
    iget-object v3, p0, Lcom/yelp/android/ui/activities/compliments/a;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1, v3, v2}, Lcom/yelp/android/serializable/Compliment$ComplimentableItemType;->getDescriptionTextResource(Lcom/yelp/android/serializable/User;Z)I

    move-result v1

    .line 161
    iget-object v2, p0, Lcom/yelp/android/ui/activities/compliments/a;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->Z()Ljava/lang/String;

    move-result-object v2

    .line 162
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aput-object v2, v3, v5

    const/4 v0, 0x2

    invoke-virtual {p2}, Lcom/yelp/android/serializable/Compliment;->p()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-static {p1, v1, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v0

    .line 165
    invoke-static {v0, v6, p1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/Spanned;ILandroid/content/Context;)Landroid/text/Spannable;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 167
    :cond_0
    const v1, 0x7f07067c

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {p1, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v0, v6, p1}, Lcom/yelp/android/util/StringUtils;->a(Landroid/text/Spanned;ILandroid/content/Context;)Landroid/text/Spannable;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 90
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 91
    if-nez p2, :cond_0

    .line 92
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030094

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 93
    new-instance v0, Lcom/yelp/android/ui/activities/compliments/a$b;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/compliments/a$b;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/compliments/a$b;

    .line 96
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/compliments/a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Compliment;

    .line 97
    iget-object v2, v0, Lcom/yelp/android/ui/activities/compliments/a$b;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Compliment;->q()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v2, p0, Lcom/yelp/android/ui/activities/compliments/a;->e:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v2, p1, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 100
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 101
    invoke-direct {p0, v6, v1}, Lcom/yelp/android/ui/activities/compliments/a;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Compliment;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 102
    iget-object v7, p0, Lcom/yelp/android/ui/activities/compliments/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v7, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 104
    :cond_1
    iget-object v7, v0, Lcom/yelp/android/ui/activities/compliments/a$b;->d:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v2, v0, Lcom/yelp/android/ui/activities/compliments/a$b;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Compliment;->k()Lcom/yelp/android/serializable/Compliment$ComplimentType;

    move-result-object v7

    iget v7, v7, Lcom/yelp/android/serializable/Compliment$ComplimentType;->mText:I

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 107
    iget-object v2, v0, Lcom/yelp/android/ui/activities/compliments/a$b;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Compliment;->m()Lcom/yelp/android/serializable/User;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yelp/android/serializable/User;->c()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0200c6

    invoke-virtual {v2, v7, v8}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 109
    iget-object v2, v0, Lcom/yelp/android/ui/activities/compliments/a$b;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Compliment;->k()Lcom/yelp/android/serializable/Compliment$ComplimentType;

    move-result-object v7

    iget v7, v7, Lcom/yelp/android/serializable/Compliment$ComplimentType;->mIcon:I

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object v2, v0, Lcom/yelp/android/ui/activities/compliments/a$b;->c:Lcom/yelp/android/ui/widgets/WebImageView;

    new-instance v7, Lcom/yelp/android/ui/activities/compliments/a$1;

    invoke-direct {v7, p0, v6, v1}, Lcom/yelp/android/ui/activities/compliments/a$1;-><init>(Lcom/yelp/android/ui/activities/compliments/a;Landroid/content/Context;Lcom/yelp/android/serializable/Compliment;)V

    invoke-virtual {v2, v7}, Lcom/yelp/android/ui/widgets/WebImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    sget-object v2, Lcom/yelp/android/util/StringUtils$Format;->ABBREVIATED:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Compliment;->t()Ljava/util/Date;

    move-result-object v7

    invoke-static {v6, v2, v7}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 122
    iget-object v6, v0, Lcom/yelp/android/ui/activities/compliments/a$b;->h:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v2, p0, Lcom/yelp/android/ui/activities/compliments/a;->b:Lcom/yelp/android/ui/activities/compliments/Mode;

    sget-object v6, Lcom/yelp/android/ui/activities/compliments/Mode;->LIST:Lcom/yelp/android/ui/activities/compliments/Mode;

    if-eq v2, v6, :cond_3

    move v2, v3

    .line 124
    :goto_0
    iget-object v6, v0, Lcom/yelp/android/ui/activities/compliments/a$b;->f:Landroid/widget/Button;

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    iget-object v6, v0, Lcom/yelp/android/ui/activities/compliments/a$b;->g:Landroid/widget/Button;

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 126
    iget-object v2, p0, Lcom/yelp/android/ui/activities/compliments/a;->b:Lcom/yelp/android/ui/activities/compliments/Mode;

    sget-object v6, Lcom/yelp/android/ui/activities/compliments/Mode;->LIST:Lcom/yelp/android/ui/activities/compliments/Mode;

    if-eq v2, v6, :cond_2

    .line 128
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Compliment;->l()Lcom/yelp/android/serializable/Compliment$ComplimentState;

    move-result-object v6

    .line 130
    iget-object v2, v0, Lcom/yelp/android/ui/activities/compliments/a$b;->f:Landroid/widget/Button;

    sget-object v7, Lcom/yelp/android/ui/activities/compliments/Mode;->APPROVE:Lcom/yelp/android/ui/activities/compliments/Mode;

    invoke-virtual {v7, v6}, Lcom/yelp/android/ui/activities/compliments/Mode;->getLabelForState(Lcom/yelp/android/serializable/Compliment$ComplimentState;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setText(I)V

    .line 135
    iget-object v7, v0, Lcom/yelp/android/ui/activities/compliments/a$b;->f:Landroid/widget/Button;

    sget-object v2, Lcom/yelp/android/serializable/Compliment$ComplimentState;->ELIGIBLE:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    if-ne v6, v2, :cond_4

    move v2, v5

    :goto_1
    invoke-virtual {v7, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 136
    iget-object v2, v0, Lcom/yelp/android/ui/activities/compliments/a$b;->f:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 137
    iget-object v2, v0, Lcom/yelp/android/ui/activities/compliments/a$b;->f:Landroid/widget/Button;

    new-instance v7, Lcom/yelp/android/ui/activities/compliments/a$a;

    sget-object v8, Lcom/yelp/android/ui/activities/compliments/Mode;->APPROVE:Lcom/yelp/android/ui/activities/compliments/Mode;

    invoke-direct {v7, p0, v8}, Lcom/yelp/android/ui/activities/compliments/a$a;-><init>(Lcom/yelp/android/ui/activities/compliments/a;Lcom/yelp/android/ui/activities/compliments/Mode;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v2, v0, Lcom/yelp/android/ui/activities/compliments/a$b;->g:Landroid/widget/Button;

    sget-object v7, Lcom/yelp/android/serializable/Compliment$ComplimentState;->PENDING:Lcom/yelp/android/serializable/Compliment$ComplimentState;

    if-eq v6, v7, :cond_5

    :goto_2
    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 140
    iget-object v2, v0, Lcom/yelp/android/ui/activities/compliments/a$b;->g:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 141
    iget-object v2, v0, Lcom/yelp/android/ui/activities/compliments/a$b;->g:Landroid/widget/Button;

    new-instance v5, Lcom/yelp/android/ui/activities/compliments/a$a;

    sget-object v6, Lcom/yelp/android/ui/activities/compliments/Mode;->DELETE:Lcom/yelp/android/ui/activities/compliments/Mode;

    invoke-direct {v5, p0, v6}, Lcom/yelp/android/ui/activities/compliments/a$a;-><init>(Lcom/yelp/android/ui/activities/compliments/a;Lcom/yelp/android/ui/activities/compliments/Mode;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    :cond_2
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Compliment;->s()Lcom/yelp/android/serializable/Photo;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 144
    iget-object v2, v0, Lcom/yelp/android/ui/activities/compliments/a$b;->i:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 145
    iget-object v0, v0, Lcom/yelp/android/ui/activities/compliments/a$b;->i:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Compliment;->s()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Photo;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 150
    :goto_3
    return-object p2

    :cond_3
    move v2, v4

    .line 123
    goto :goto_0

    :cond_4
    move v2, v3

    .line 135
    goto :goto_1

    :cond_5
    move v5, v3

    .line 139
    goto :goto_2

    .line 147
    :cond_6
    iget-object v0, v0, Lcom/yelp/android/ui/activities/compliments/a$b;->i:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 85
    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->notifyDataSetChanged()V

    .line 86
    return-void
.end method
