.class Lcom/yelp/android/ui/activities/profile/d$a;
.super Ljava/lang/Object;
.source "ReviewTipAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/profile/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/ImageView;

.field private final f:Landroid/view/View;

.field private final g:Landroid/view/View;

.field private final h:Landroid/view/View;

.field private final i:Landroid/widget/ImageView;

.field private final j:Landroid/widget/TextView;

.field private final k:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const v0, 0x7f0f02e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->a:Landroid/widget/ImageView;

    .line 154
    const v0, 0x7f0f02ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->b:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0f02e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->c:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f0f00d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->d:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f0f02e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->e:Landroid/widget/ImageView;

    .line 158
    const v0, 0x7f0f0027

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->h:Landroid/view/View;

    .line 159
    const v0, 0x7f0f03f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->f:Landroid/view/View;

    .line 160
    const v0, 0x7f0f03f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->g:Landroid/view/View;

    .line 161
    const v0, 0x7f0f0422

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->i:Landroid/widget/ImageView;

    .line 162
    const v0, 0x7f0f0516

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->j:Landroid/widget/TextView;

    .line 163
    const v0, 0x7f0f048c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->k:Landroid/widget/TextView;

    .line 164
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/activities/profile/d$1;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/d$a;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/yelp/android/serializable/YelpBusinessReview;Lcom/yelp/android/serializable/User;Landroid/content/Context;Lcom/yelp/android/ui/util/t;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->a:Landroid/widget/ImageView;

    const v3, 0x7f020515

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 169
    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/d$a;->b:Landroid/widget/TextView;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/User;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/appdata/webrequests/co;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0703f5

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->c:Landroid/widget/TextView;

    sget-object v3, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->d()Ljava/util/Date;

    move-result-object v4

    invoke-static {p3, v3, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->L()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    const v3, 0x7f0200bb

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/util/u$a;->a(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/d$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 180
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->M()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->C()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->i:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->C()I

    move-result v3

    int-to-double v4, v3

    invoke-static {v0, v4, v5}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/ImageView;D)V

    .line 207
    :goto_2
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->U()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 208
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->j:Landroid/widget/TextView;

    const v2, 0x7f08001f

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->U()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p3, v2, v3, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    :goto_3
    return-void

    .line 169
    :cond_0
    const v0, 0x7f07050f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/User;->Z()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 186
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->V()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_3

    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/d$a;->h:Landroid/view/View;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->D()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_4

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 205
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 213
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/d$a;Lcom/yelp/android/serializable/YelpBusinessReview;Lcom/yelp/android/serializable/User;Landroid/content/Context;Lcom/yelp/android/ui/util/t;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yelp/android/ui/activities/profile/d$a;->a(Lcom/yelp/android/serializable/YelpBusinessReview;Lcom/yelp/android/serializable/User;Landroid/content/Context;Lcom/yelp/android/ui/util/t;)V

    return-void
.end method
