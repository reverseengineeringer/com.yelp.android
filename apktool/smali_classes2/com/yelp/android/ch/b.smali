.class public Lcom/yelp/android/ch/b;
.super Ljava/lang/Object;
.source "FeedPhotoViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ch/b$6;
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Lcom/yelp/android/ui/widgets/RoundedImageView;

.field private final c:Lcom/yelp/android/ui/widgets/RoundedImageView;

.field private final d:Lcom/yelp/android/ui/util/DynamicImageView;

.field private final e:Landroid/view/View;

.field private final f:Landroid/widget/TextView;

.field private final g:Lcom/yelp/android/ui/widgets/AnimatedToggleButton;

.field private final h:Lcom/yelp/android/ui/util/t;

.field private i:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

.field private j:Lcom/yelp/android/serializable/FeedItem;


# direct methods
.method public constructor <init>(Landroid/view/View;ILcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;Landroid/support/v7/widget/RecyclerView$l;Lcom/yelp/android/ui/util/t;)V
    .locals 5

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p5, p0, Lcom/yelp/android/ch/b;->h:Lcom/yelp/android/ui/util/t;

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 68
    const v0, 0x7f0f03e9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ch/b;->a:Landroid/widget/ImageView;

    .line 69
    const v0, 0x7f0f03ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ch/b;->e:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/yelp/android/ch/b;->e:Landroid/view/View;

    const v2, 0x7f0f03ee

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/AnimatedToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ch/b;->g:Lcom/yelp/android/ui/widgets/AnimatedToggleButton;

    .line 71
    iget-object v0, p0, Lcom/yelp/android/ch/b;->e:Landroid/view/View;

    const v2, 0x7f0f03ef

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ch/b;->f:Landroid/widget/TextView;

    .line 73
    const v0, 0x7f0f01ad

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    iput-object v0, p0, Lcom/yelp/android/ch/b;->i:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    const/4 v3, 0x0

    sget-object v4, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->HIDE_TOP:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 76
    iget-object v2, p0, Lcom/yelp/android/ch/b;->i:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v2, v0, p3}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Ljava/util/Collection;Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;)V

    .line 79
    const v0, 0x7f0f03ea

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/RoundedImageView;

    iput-object v0, p0, Lcom/yelp/android/ch/b;->b:Lcom/yelp/android/ui/widgets/RoundedImageView;

    .line 80
    const v0, 0x7f0f03eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/RoundedImageView;

    iput-object v0, p0, Lcom/yelp/android/ch/b;->c:Lcom/yelp/android/ui/widgets/RoundedImageView;

    .line 83
    const v0, 0x7f0f03ec

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/DynamicImageView;

    iput-object v0, p0, Lcom/yelp/android/ch/b;->d:Lcom/yelp/android/ui/util/DynamicImageView;

    .line 84
    iget-object v0, p0, Lcom/yelp/android/ch/b;->d:Lcom/yelp/android/ui/util/DynamicImageView;

    invoke-virtual {v0, p4}, Lcom/yelp/android/ui/util/DynamicImageView;->a(Landroid/support/v7/widget/RecyclerView$l;)V

    .line 85
    return-void
.end method

.method private a(Landroid/view/View$OnClickListener;Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View$OnClickListener;
    .locals 6

    .prologue
    .line 276
    new-instance v0, Lcom/yelp/android/ch/b$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ch/b$5;-><init>(Lcom/yelp/android/ch/b;Landroid/view/View$OnClickListener;Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ch/b;)Lcom/yelp/android/ui/widgets/AnimatedToggleButton;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yelp/android/ch/b;->g:Lcom/yelp/android/ui/widgets/AnimatedToggleButton;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 260
    if-lez p1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/yelp/android/ch/b;->g:Lcom/yelp/android/ui/widgets/AnimatedToggleButton;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/AnimatedToggleButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080042

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, p1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/yelp/android/ch/b;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v0, p0, Lcom/yelp/android/ch/b;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ch/b;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 231
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 232
    invoke-direct {p0}, Lcom/yelp/android/ch/b;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p3, p4, v0, p5}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    .line 235
    invoke-virtual {p3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 236
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ch/b;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/yelp/android/ch/b;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ch/b;Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/yelp/android/ch/b;->a(Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/yelp/android/ch/b;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    return-void
.end method

.method private d()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Photo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 239
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 240
    sget-object v1, Lcom/yelp/android/ch/b$6;->a:[I

    iget-object v3, p0, Lcom/yelp/android/ch/b;->j:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/FeedItem;->d()Lcom/yelp/android/ui/activities/ActivityType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/ActivityType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 256
    :cond_0
    return-object v2

    :pswitch_0
    move v1, v0

    .line 242
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ch/b;->j:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/yelp/android/ch/b;->j:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedBusinessPhotoActivity;

    .line 245
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedBusinessPhotoActivity;->d()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_1
    move v1, v0

    .line 249
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ch/b;->j:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/yelp/android/ch/b;->j:Lcom/yelp/android/serializable/FeedItem;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedItem;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedUserPhotoActivity;

    .line 252
    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedUserPhotoActivity;->d()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/yelp/android/ch/b;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ch/b;->d:Lcom/yelp/android/ui/util/DynamicImageView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/DynamicImageView;->getNumberScrolled()I

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/yelp/android/ui/util/DynamicImageView$a;Lcom/yelp/android/ci/f;Lcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/16 v1, 0x8

    const/4 v4, 0x0

    .line 94
    iput-object p1, p0, Lcom/yelp/android/ch/b;->j:Lcom/yelp/android/serializable/FeedItem;

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ch/b;->i:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ch/b;->i:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->setVisibility(I)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ch/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ch/b;->b:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/RoundedImageView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/yelp/android/ch/b;->c:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/RoundedImageView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ch/b;->d:Lcom/yelp/android/ui/util/DynamicImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/DynamicImageView;->setVisibility(I)V

    .line 103
    invoke-direct {p0}, Lcom/yelp/android/ch/b;->d()Ljava/util/ArrayList;

    move-result-object v1

    .line 104
    if-eqz v1, :cond_1

    .line 105
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 106
    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->d()Lcom/yelp/android/ui/activities/ActivityType;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/ui/activities/ActivityType;->USER_PHOTO:Lcom/yelp/android/ui/activities/ActivityType;

    if-ne v0, v2, :cond_2

    .line 107
    invoke-direct {p0}, Lcom/yelp/android/ch/b;->c()V

    .line 111
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ch/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yelp/android/serializable/Photo;

    .line 113
    invoke-virtual {v5}, Lcom/yelp/android/serializable/Photo;->j()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ch/b;->a(I)V

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ch/b;->g:Lcom/yelp/android/ui/widgets/AnimatedToggleButton;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/Photo;->j()Lcom/yelp/android/serializable/Feedback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Feedback;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/AnimatedToggleButton;->setChecked(Z)V

    .line 115
    iget-object v0, p0, Lcom/yelp/android/ch/b;->h:Lcom/yelp/android/ui/util/t;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/Photo;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    const v1, 0x7f02056a

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ch/b;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 119
    iget-object v0, p0, Lcom/yelp/android/ch/b;->i:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    if-eqz v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/yelp/android/ch/b;->i:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ch/b;->i:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Lcom/yelp/android/serializable/Media;)V

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ch/b;->i:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    new-instance v1, Lcom/yelp/android/ch/b$1;

    invoke-direct {v1, p0, p3, p2, v5}, Lcom/yelp/android/ch/b$1;-><init>(Lcom/yelp/android/ch/b;Landroid/view/View$OnClickListener;Landroid/content/Context;Lcom/yelp/android/serializable/Photo;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ch/b;->g:Lcom/yelp/android/ui/widgets/AnimatedToggleButton;

    new-instance v1, Lcom/yelp/android/ch/b$3;

    invoke-direct {v1, p0, v5, p5, p1}, Lcom/yelp/android/ch/b$3;-><init>(Lcom/yelp/android/ch/b;Lcom/yelp/android/serializable/Photo;Lcom/yelp/android/ci/f;Lcom/yelp/android/serializable/FeedItem;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/AnimatedToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v6, p0, Lcom/yelp/android/ch/b;->f:Landroid/widget/TextView;

    new-instance v0, Lcom/yelp/android/ch/b$4;

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ch/b$4;-><init>(Lcom/yelp/android/ch/b;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/serializable/Photo;)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    :cond_1
    :goto_2
    return-void

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ch/b;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ch/b;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/yelp/android/ch/b$2;

    invoke-direct {v1, p0, p3, p2, v5}, Lcom/yelp/android/ch/b$2;-><init>(Lcom/yelp/android/ch/b;Landroid/view/View$OnClickListener;Landroid/content/Context;Lcom/yelp/android/serializable/Photo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 179
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 180
    invoke-direct {p0}, Lcom/yelp/android/ch/b;->c()V

    .line 181
    iget-object v0, p0, Lcom/yelp/android/ch/b;->b:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/RoundedImageView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/yelp/android/ch/b;->c:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/RoundedImageView;->setVisibility(I)V

    .line 183
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    .line 184
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Photo;

    .line 185
    iget-object v2, p0, Lcom/yelp/android/ch/b;->h:Lcom/yelp/android/ui/util/t;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ch/b;->b:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 187
    iget-object v2, p0, Lcom/yelp/android/ch/b;->h:Lcom/yelp/android/ui/util/t;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Photo;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ch/b;->c:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 189
    iget-object v2, p0, Lcom/yelp/android/ch/b;->b:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->k()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, p2, v0, v4}, Lcom/yelp/android/ch/b;->a(Landroid/view/View$OnClickListener;Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/widgets/RoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/yelp/android/ch/b;->c:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Photo;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, p2, v1, v5}, Lcom/yelp/android/ch/b;->a(Landroid/view/View$OnClickListener;Landroid/content/Context;Ljava/lang/String;I)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/RoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 195
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    .line 196
    invoke-direct {p0}, Lcom/yelp/android/ch/b;->c()V

    .line 197
    iget-object v0, p0, Lcom/yelp/android/ch/b;->d:Lcom/yelp/android/ui/util/DynamicImageView;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/util/DynamicImageView;->setVisibility(I)V

    .line 198
    new-instance v0, Lcom/yelp/android/ui/util/z;

    sget v2, Lcom/yelp/android/appdata/n;->e:I

    invoke-direct {v0, v1, p2, v2}, Lcom/yelp/android/ui/util/z;-><init>(Ljava/util/List;Landroid/content/Context;I)V

    .line 199
    iget-object v1, p0, Lcom/yelp/android/ch/b;->d:Lcom/yelp/android/ui/util/DynamicImageView;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/DynamicImageView;->setAdapter(Lcom/yelp/android/ui/util/z;)V

    .line 200
    iget-object v0, p0, Lcom/yelp/android/ch/b;->d:Lcom/yelp/android/ui/util/DynamicImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/DynamicImageView;->setOnPhotoSelectionIntent(Landroid/app/PendingIntent;)V

    .line 201
    iget-object v0, p0, Lcom/yelp/android/ch/b;->d:Lcom/yelp/android/ui/util/DynamicImageView;

    invoke-virtual {v0, p4}, Lcom/yelp/android/ui/util/DynamicImageView;->setItemSelectedListener(Lcom/yelp/android/ui/util/DynamicImageView$a;)V

    goto/16 :goto_2
.end method

.method public b()Lcom/yelp/android/serializable/FeedItem;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/yelp/android/ch/b;->j:Lcom/yelp/android/serializable/FeedItem;

    return-object v0
.end method
