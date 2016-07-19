.class public Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "TipComplimentsLikes.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/YelpListActivity;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/cj$a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/yelp/android/appdata/webrequests/cj;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/TipFeedback;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Compliment;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/view/View;

.field private e:Lcom/yelp/android/serializable/Tip;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/yelp/android/ui/activities/compliments/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    const-string/jumbo v1, "tip"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 75
    const-string/jumbo v1, "key.title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string/jumbo v1, "key.hide_view_biz_button"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    const-string/jumbo v1, "key.tip_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string/jumbo v1, "key.title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Lcom/yelp/android/serializable/Tip;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;Lcom/yelp/android/serializable/Tip;)Lcom/yelp/android/serializable/Tip;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Lcom/yelp/android/ui/activities/compliments/a;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->h:Lcom/yelp/android/ui/activities/compliments/a;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030200

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->d:Landroid/view/View;

    .line 141
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->f()V

    .line 142
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;)V

    .line 143
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->j()V

    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->f()V

    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->f:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->d:Landroid/view/View;

    const v3, 0x7f0f05be

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 147
    const v0, 0x7f0f052f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Tip;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 148
    const v0, 0x7f0f025d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Tip;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    const v0, 0x7f0f0531

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v4, Lcom/yelp/android/util/StringUtils$Format;->ABBREVIATED:Lcom/yelp/android/util/StringUtils$Format;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/Tip;->t()Ljava/util/Date;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    const v0, 0x7f0f0530

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Tip;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "key.title"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->o()Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v4

    .line 161
    new-instance v0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$1;-><init>(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v0, 0x7f0f05bd

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->r()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->d:Landroid/view/View;

    const v3, 0x7f0f05c2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->d:Landroid/view/View;

    const v1, 0x7f0f05c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    .line 177
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->r()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Photo;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 178
    new-instance v1, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$2;-><init>(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/yelp/android/appdata/webrequests/co;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->d:Landroid/view/View;

    const v1, 0x7f0f05c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    .line 194
    new-instance v1, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$3;-><init>(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->d:Landroid/view/View;

    const v1, 0x7f0f05c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;

    .line 211
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->g()Lcom/yelp/android/serializable/Feedback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Feedback;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->setChecked(Z)V

    .line 212
    new-instance v1, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$4;

    invoke-direct {v1, p0, v4, v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$4;-><init>(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;Lcom/yelp/android/appdata/webrequests/co;Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 171
    goto :goto_0

    .line 250
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->d:Landroid/view/View;

    const v1, 0x7f0f05bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private g()V
    .locals 2

    .prologue
    .line 321
    const-string/jumbo v0, "com.yelp.android.tips.update"

    new-instance v1, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$5;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$5;-><init>(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 333
    const-string/jumbo v0, "com.yelp.android.tips.delete"

    new-instance v1, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$6;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$6;-><init>(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 344
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->h:Lcom/yelp/android/ui/activities/compliments/a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 377
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->h:Lcom/yelp/android/ui/activities/compliments/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/compliments/a;->a(Ljava/util/List;)V

    .line 378
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 379
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 382
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->d:Landroid/view/View;

    const v1, 0x7f0f0475

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;

    .line 384
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->g()Lcom/yelp/android/serializable/Feedback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Feedback;->c()Z

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->b:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Tip;->g()Lcom/yelp/android/serializable/Feedback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Feedback;->d()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->a(ZLjava/util/List;I)V

    .line 388
    new-instance v1, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$7;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes$7;-><init>(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 407
    return-void
.end method


# virtual methods
.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Compliment;

    .line 133
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->m()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->startActivity(Landroid/content/Intent;)V

    .line 136
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cj$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/cj$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/cj$a;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->c:Ljava/util/ArrayList;

    .line 361
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/cj$a;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->b:Ljava/util/ArrayList;

    .line 363
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/cj$a;->c:Lcom/yelp/android/serializable/Tip;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    .line 365
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "tip"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 366
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->b()V

    .line 367
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->disableLoading()V

    .line 370
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->j()V

    .line 371
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->i()V

    .line 372
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->updateOptionsMenu()V

    .line 373
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 355
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ViewTipLikesCompliments:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 279
    sparse-switch p1, :sswitch_data_0

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 281
    :sswitch_0
    if-ne p2, v2, :cond_0

    .line 284
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra.compliment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Compliment;

    .line 292
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->h:Lcom/yelp/android/ui/activities/compliments/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/compliments/a;->notifyDataSetChanged()V

    goto :goto_0

    .line 297
    :sswitch_1
    if-ne p2, v2, :cond_0

    .line 300
    const-string/jumbo v0, "tip_deleted"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {p0, v2, p3}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->setResult(ILandroid/content/Intent;)V

    .line 302
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->finish()V

    goto :goto_0

    .line 305
    :cond_1
    const-string/jumbo v0, "tip_updated"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    .line 306
    if-eqz v0, :cond_0

    .line 307
    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    .line 308
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->d:Landroid/view/View;

    const v1, 0x7f0f025d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    invoke-virtual {p0, v2, p3}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 279
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f01fa -> :sswitch_1
        0x7f0f05c0 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 89
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    new-instance v0, Lcom/yelp/android/ui/activities/compliments/a;

    sget-object v1, Lcom/yelp/android/ui/activities/compliments/Mode;->LIST:Lcom/yelp/android/ui/activities/compliments/Mode;

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/yelp/android/ui/activities/compliments/a;-><init>(Lcom/yelp/android/serializable/User;Lcom/yelp/android/ui/activities/compliments/Mode;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Z)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->h:Lcom/yelp/android/ui/activities/compliments/a;

    .line 93
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "tip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->f:Ljava/lang/String;

    .line 96
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->b()V

    .line 104
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key.hide_view_biz_button"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->g:Z

    .line 106
    if-eqz p1, :cond_2

    .line 107
    const-string/jumbo v0, "key.likes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->b:Ljava/util/ArrayList;

    .line 108
    const-string/jumbo v0, "key.compliments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->c:Ljava/util/ArrayList;

    .line 114
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 115
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->j()V

    .line 116
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->i()V

    .line 127
    :goto_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->g()V

    .line 128
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key.tip_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key.tip_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->f:Ljava/lang/String;

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->f:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->b:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->c:Ljava/util/ArrayList;

    goto :goto_1

    .line 118
    :cond_3
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cj;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->f:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/appdata/webrequests/cj;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a:Lcom/yelp/android/appdata/webrequests/cj;

    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a:Lcom/yelp/android/appdata/webrequests/cj;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cj;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    if-nez v0, :cond_4

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a:Lcom/yelp/android/appdata/webrequests/cj;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_2

    .line 123
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->h:Lcom/yelp/android/ui/activities/compliments/a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 257
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100027

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 259
    const v0, 0x7f0f04ad

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 261
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/co;->a(Ljava/lang/String;)Z

    move-result v0

    .line 262
    const v1, 0x7f0f0621

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 264
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 411
    const v0, 0x7f0705e6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 412
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->finish()V

    .line 413
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 269
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0621

    if-ne v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/tips/WriteTip;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 271
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->startActivity(Landroid/content/Intent;)V

    .line 272
    const/4 v0, 0x1

    .line 274
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 348
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 349
    const-string/jumbo v0, "key.likes"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 350
    const-string/jumbo v0, "key.compliments"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 351
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    check-cast p2, Lcom/yelp/android/appdata/webrequests/cj$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cj$a;)V

    return-void
.end method
