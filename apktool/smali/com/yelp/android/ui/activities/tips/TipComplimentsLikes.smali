.class public Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "TipComplimentsLikes.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/YelpListActivity;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/cv;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/yelp/android/appdata/webrequests/cu;

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
    .line 52
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    const-string/jumbo v1, "key.tip"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 77
    const-string/jumbo v1, "key.title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string/jumbo v1, "key.hide_view_biz_button"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    const-string/jumbo v1, "key.tip_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string/jumbo v1, "key.title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Lcom/yelp/android/serializable/Tip;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;Lcom/yelp/android/serializable/Tip;)Lcom/yelp/android/serializable/Tip;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Lcom/yelp/android/ui/activities/compliments/a;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->h:Lcom/yelp/android/ui/activities/compliments/a;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030185

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->d:Landroid/view/View;

    .line 142
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->f()V

    .line 143
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;)V

    .line 144
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->j()V

    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->f()V

    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->f:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->d:Landroid/view/View;

    const v3, 0x7f0c04b5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 148
    const v0, 0x7f0c0445

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Tip;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 149
    const v0, 0x7f0c0449

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Tip;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const v0, 0x7f0c0447

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v4, Lcom/yelp/android/util/StringUtils$Format;->ABBREVIATED:Lcom/yelp/android/util/StringUtils$Format;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/Tip;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    const v0, 0x7f0c0446

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Tip;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "key.title"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getBusinessName()Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->setTitle(Ljava/lang/CharSequence;)V

    .line 160
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v4

    .line 162
    new-instance v0, Lcom/yelp/android/ui/activities/tips/a;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/tips/a;-><init>(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const v0, 0x7f0c04b4

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->isFirstTip()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 172
    const v0, 0x7f0c04b2

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 173
    iget-object v3, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-static {p0, v3}, Lcom/yelp/android/ui/util/cr;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;)Landroid/text/Spannable;

    move-result-object v3

    iget-object v5, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-static {v0, v3, v5}, Lcom/yelp/android/ui/util/cr;->a(Landroid/view/View;Landroid/text/Spannable;Lcom/yelp/android/serializable/Tip;)V

    .line 176
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->d:Landroid/view/View;

    const v3, 0x7f0c04b9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->d:Landroid/view/View;

    const v1, 0x7f0c04ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    .line 179
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Photo;->getLargeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 180
    new-instance v1, Lcom/yelp/android/ui/activities/tips/b;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/tips/b;-><init>(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/yelp/android/appdata/webrequests/dc;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->d:Landroid/view/View;

    const v1, 0x7f0c04b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/LeftDrawableButton;

    .line 194
    new-instance v1, Lcom/yelp/android/ui/activities/tips/c;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/tips/c;-><init>(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->d:Landroid/view/View;

    const v1, 0x7f0c04b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;

    .line 208
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Feedback;->isLikedByUser()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->setChecked(Z)V

    .line 209
    new-instance v1, Lcom/yelp/android/ui/activities/tips/d;

    invoke-direct {v1, p0, v4, v0}, Lcom/yelp/android/ui/activities/tips/d;-><init>(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;Lcom/yelp/android/appdata/webrequests/dc;Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/LeftDrawableToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 170
    goto/16 :goto_0

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->d:Landroid/view/View;

    const v1, 0x7f0c04b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private g()V
    .locals 2

    .prologue
    .line 317
    const-string/jumbo v0, "com.yelp.android.tips.update"

    new-instance v1, Lcom/yelp/android/ui/activities/tips/e;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/tips/e;-><init>(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 328
    const-string/jumbo v0, "com.yelp.android.tips.delete"

    new-instance v1, Lcom/yelp/android/ui/activities/tips/f;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/tips/f;-><init>(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 338
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->h:Lcom/yelp/android/ui/activities/compliments/a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 371
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->h:Lcom/yelp/android/ui/activities/compliments/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/compliments/a;->a(Ljava/util/List;)V

    .line 372
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 373
    return-void
.end method

.method private j()V
    .locals 4

    .prologue
    .line 376
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->d:Landroid/view/View;

    const v1, 0x7f0c0399

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;

    .line 378
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Feedback;->isLikedByUser()Z

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->b:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Tip;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Feedback;->getPositiveFeedbackCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->a(ZLjava/util/List;I)V

    .line 380
    new-instance v1, Lcom/yelp/android/ui/activities/tips/g;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/tips/g;-><init>(Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/UsersWhoLikedThisView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    return-void
.end method


# virtual methods
.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Compliment;

    .line 135
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Compliment;->getSender()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->startActivity(Landroid/content/Intent;)V

    .line 137
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cv;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/cv;",
            ")V"
        }
    .end annotation

    .prologue
    .line 354
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/cv;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->c:Ljava/util/ArrayList;

    .line 355
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/cv;->a:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->b:Ljava/util/ArrayList;

    .line 357
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/cv;->c:Lcom/yelp/android/serializable/Tip;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    .line 359
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key.tip"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 360
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->c()V

    .line 361
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->disableLoading()V

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->j()V

    .line 365
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->h()V

    .line 366
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->updateOptionsMenu()V

    .line 367
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 349
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ViewTipLikesCompliments:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 272
    sparse-switch p1, :sswitch_data_0

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 274
    :sswitch_0
    if-ne p2, v3, :cond_0

    .line 277
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra.compliment"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Compliment;

    .line 285
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->h:Lcom/yelp/android/ui/activities/compliments/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/compliments/a;->notifyDataSetChanged()V

    goto :goto_0

    .line 290
    :sswitch_1
    if-ne p2, v3, :cond_0

    .line 293
    const-string/jumbo v0, "changed entry id"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "changed entry id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string/jumbo v0, "did we delete it?"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {p0, v3, p3}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->setResult(ILandroid/content/Intent;)V

    .line 297
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->finish()V

    goto :goto_0

    .line 300
    :cond_1
    const-string/jumbo v0, "bundle to be passed"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/TipFeedEntry;->CONTENT_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    .line 302
    if-eqz v0, :cond_0

    .line 303
    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    .line 304
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->d:Landroid/view/View;

    const v1, 0x7f0c0449

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    invoke-virtual {p0, v3, p3}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 272
    :sswitch_data_0
    .sparse-switch
        0x7f0c01ca -> :sswitch_1
        0x7f0c04b7 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 91
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    new-instance v0, Lcom/yelp/android/ui/activities/compliments/a;

    sget-object v1, Lcom/yelp/android/ui/activities/compliments/Mode;->LIST:Lcom/yelp/android/ui/activities/compliments/Mode;

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/yelp/android/ui/activities/compliments/a;-><init>(Lcom/yelp/android/serializable/User;Lcom/yelp/android/ui/activities/compliments/Mode;Lcom/yelp/android/appdata/webrequests/m;Z)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->h:Lcom/yelp/android/ui/activities/compliments/a;

    .line 95
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key.tip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->f:Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->c()V

    .line 106
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key.hide_view_biz_button"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->g:Z

    .line 108
    if-eqz p1, :cond_2

    .line 109
    const-string/jumbo v0, "key.likes"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->b:Ljava/util/ArrayList;

    .line 110
    const-string/jumbo v0, "key.compliments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->c:Ljava/util/ArrayList;

    .line 116
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 117
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->j()V

    .line 118
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->h()V

    .line 129
    :goto_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->g()V

    .line 130
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key.tip_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key.tip_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->f:Ljava/lang/String;

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->f:Ljava/lang/String;

    goto :goto_0

    .line 112
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->b:Ljava/util/ArrayList;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->c:Ljava/util/ArrayList;

    goto :goto_1

    .line 120
    :cond_3
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cu;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->f:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/appdata/webrequests/cu;-><init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a:Lcom/yelp/android/appdata/webrequests/cu;

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a:Lcom/yelp/android/appdata/webrequests/cu;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cu;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    if-nez v0, :cond_4

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a:Lcom/yelp/android/appdata/webrequests/cu;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_2

    .line 125
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->h:Lcom/yelp/android/ui/activities/compliments/a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 249
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 250
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100022

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 252
    const v0, 0x7f0c03c9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->getBusinessId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 254
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Ljava/lang/String;)Z

    move-result v0

    .line 255
    const v1, 0x7f0c0516

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 257
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
    .line 397
    const v0, 0x7f0705fb

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 398
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->finish()V

    .line 399
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 262
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c0516

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->e:Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->getBusinessId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/tips/WriteTip;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 264
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->startActivity(Landroid/content/Intent;)V

    .line 265
    const/4 v0, 0x1

    .line 267
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
    .line 342
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 343
    const-string/jumbo v0, "key.likes"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 344
    const-string/jumbo v0, "key.compliments"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 345
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p2, Lcom/yelp/android/appdata/webrequests/cv;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cv;)V

    return-void
.end method
