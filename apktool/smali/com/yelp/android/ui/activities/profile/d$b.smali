.class Lcom/yelp/android/ui/activities/profile/d$b;
.super Ljava/lang/Object;
.source "ReviewTipAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/profile/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/ImageView;

.field private final f:Landroid/view/View;

.field private final g:Landroid/widget/ImageView;

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/TextView;

.field private final j:Landroid/view/View;

.field private final k:Lcom/yelp/android/ui/widgets/SpannedImageButton;

.field private final l:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    const v0, 0x7f0f02e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->a:Landroid/widget/ImageView;

    .line 235
    const v0, 0x7f0f02ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->b:Landroid/widget/TextView;

    .line 236
    const v0, 0x7f0f02e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->c:Landroid/widget/TextView;

    .line 237
    const v0, 0x7f0f0176

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->d:Landroid/widget/TextView;

    .line 238
    const v0, 0x7f0f02e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->e:Landroid/widget/ImageView;

    .line 239
    const v0, 0x7f0f0402

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->f:Landroid/view/View;

    .line 240
    const v0, 0x7f0f0425

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->g:Landroid/widget/ImageView;

    .line 241
    const v0, 0x7f0f048c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->h:Landroid/widget/TextView;

    .line 242
    const v0, 0x7f0f052d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->i:Landroid/widget/TextView;

    .line 243
    const v0, 0x7f0f010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->j:Landroid/view/View;

    .line 244
    const v0, 0x7f0f03de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SpannedImageButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->k:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    .line 245
    const v0, 0x7f0f0024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->l:Landroid/view/View;

    .line 246
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/activities/profile/d$1;)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/d$b;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/d$b;)Lcom/yelp/android/ui/widgets/SpannedImageButton;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->k:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/Tip;Landroid/content/Context;Lcom/yelp/android/serializable/User;Lcom/yelp/android/ui/util/t;Lcom/yelp/android/ui/activities/profile/d$c;)V
    .locals 7

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->a:Landroid/widget/ImageView;

    const v3, 0x7f02056f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {p3}, Lcom/yelp/android/serializable/User;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yelp/android/appdata/webrequests/co;->a(Ljava/lang/String;)Z

    move-result v3

    .line 257
    iget-object v4, p0, Lcom/yelp/android/ui/activities/profile/d$b;->b:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    const v0, 0x7f0703fa

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->c:Landroid/widget/TextView;

    sget-object v4, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->d()Ljava/util/Date;

    move-result-object v5

    invoke-static {p2, v4, v5}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->o()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    iget-object v4, p0, Lcom/yelp/android/ui/activities/profile/d$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 267
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->r()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->r()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    iget-object v4, p0, Lcom/yelp/android/ui/activities/profile/d$b;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 269
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    :goto_1
    iget-object v4, p0, Lcom/yelp/android/ui/activities/profile/d$b;->f:Landroid/view/View;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->i:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Lcom/yelp/android/serializable/Tip;->a(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->i:Landroid/widget/TextView;

    new-instance v4, Lcom/yelp/android/ui/activities/profile/d$b$1;

    invoke-direct {v4, p0, p1}, Lcom/yelp/android/ui/activities/profile/d$b$1;-><init>(Lcom/yelp/android/ui/activities/profile/d$b;Lcom/yelp/android/serializable/Tip;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    if-eqz v3, :cond_3

    .line 286
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->l:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/profile/d$b$2;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/profile/d$b$2;-><init>(Lcom/yelp/android/ui/activities/profile/d$b;Lcom/yelp/android/serializable/Tip;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    :goto_3
    return-void

    .line 257
    :cond_0
    const v0, 0x7f0705e0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/yelp/android/serializable/User;->a()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p2, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 273
    goto :goto_2

    .line 300
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->j:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/profile/d$b$3;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/profile/d$b$3;-><init>(Lcom/yelp/android/ui/activities/profile/d$b;Lcom/yelp/android/serializable/Tip;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->k:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->g()Lcom/yelp/android/serializable/Feedback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Feedback;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->setChecked(Z)V

    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/d$b;->k:Lcom/yelp/android/ui/widgets/SpannedImageButton;

    new-instance v1, Lcom/yelp/android/ui/activities/profile/d$b$4;

    invoke-direct {v1, p0, p5, p1}, Lcom/yelp/android/ui/activities/profile/d$b$4;-><init>(Lcom/yelp/android/ui/activities/profile/d$b;Lcom/yelp/android/ui/activities/profile/d$c;Lcom/yelp/android/serializable/Tip;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/d$b;Lcom/yelp/android/serializable/Tip;Landroid/content/Context;Lcom/yelp/android/serializable/User;Lcom/yelp/android/ui/util/t;Lcom/yelp/android/ui/activities/profile/d$c;)V
    .locals 0

    .prologue
    .line 218
    invoke-direct/range {p0 .. p5}, Lcom/yelp/android/ui/activities/profile/d$b;->a(Lcom/yelp/android/serializable/Tip;Landroid/content/Context;Lcom/yelp/android/serializable/User;Lcom/yelp/android/ui/util/t;Lcom/yelp/android/ui/activities/profile/d$c;)V

    return-void
.end method
