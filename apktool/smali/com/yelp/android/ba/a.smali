.class public Lcom/yelp/android/ba/a;
.super Ljava/lang/Object;
.source "FeedBusinessPhotoViewHolder.java"


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

.field private final c:Lcom/yelp/android/ui/widgets/RoundedImageView;

.field private final d:Lcom/yelp/android/ui/widgets/RoundedImageView;

.field private final e:Lcom/yelp/android/ui/util/DynamicImageView;

.field private final f:Landroid/view/View;

.field private final g:Lcom/bumptech/glide/j;

.field private h:Lcom/yelp/android/serializable/BizPhotoFeedEntry;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;ILcom/yelp/android/ui/activities/photoviewer/ad;Landroid/support/v7/widget/bt;Lcom/bumptech/glide/j;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p6, p0, Lcom/yelp/android/ba/a;->g:Lcom/bumptech/glide/j;

    .line 44
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ba/a;->f:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcom/yelp/android/ba/a;->f:Landroid/view/View;

    const v2, 0x7f0c028f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ba/a;->a:Landroid/widget/ImageView;

    .line 49
    iget-object v0, p0, Lcom/yelp/android/ba/a;->f:Landroid/view/View;

    const v2, 0x7f0c017a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    iput-object v0, p0, Lcom/yelp/android/ba/a;->b:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    .line 50
    iget-object v0, p0, Lcom/yelp/android/ba/a;->b:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    move v2, v1

    move v4, v3

    move v5, v3

    move v6, v1

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(ZZZZZZLcom/yelp/android/ui/activities/photoviewer/ad;)V

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ba/a;->b:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Z)V

    .line 54
    iget-object v0, p0, Lcom/yelp/android/ba/a;->f:Landroid/view/View;

    const v1, 0x7f0c032f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/RoundedImageView;

    iput-object v0, p0, Lcom/yelp/android/ba/a;->c:Lcom/yelp/android/ui/widgets/RoundedImageView;

    .line 55
    iget-object v0, p0, Lcom/yelp/android/ba/a;->f:Landroid/view/View;

    const v1, 0x7f0c0330

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/RoundedImageView;

    iput-object v0, p0, Lcom/yelp/android/ba/a;->d:Lcom/yelp/android/ui/widgets/RoundedImageView;

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ba/a;->f:Landroid/view/View;

    const v1, 0x7f0c0290

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/DynamicImageView;

    iput-object v0, p0, Lcom/yelp/android/ba/a;->e:Lcom/yelp/android/ui/util/DynamicImageView;

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ba/a;->e:Lcom/yelp/android/ui/util/DynamicImageView;

    invoke-virtual {v0, p5}, Lcom/yelp/android/ui/util/DynamicImageView;->a(Landroid/support/v7/widget/bt;)V

    .line 60
    return-void
.end method

.method private a(Landroid/view/View$OnClickListener;Landroid/content/Context;Lcom/yelp/android/serializable/BizPhotoFeedEntry;Ljava/lang/String;I)Landroid/view/View$OnClickListener;
    .locals 7

    .prologue
    .line 147
    new-instance v0, Lcom/yelp/android/ba/c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ba/c;-><init>(Lcom/yelp/android/ba/a;Landroid/view/View$OnClickListener;Landroid/content/Context;Lcom/yelp/android/serializable/BizPhotoFeedEntry;Ljava/lang/String;I)V

    return-object v0
.end method

.method private a(Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/content/Context;Lcom/yelp/android/serializable/BizPhotoFeedEntry;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 138
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 139
    invoke-virtual {p4}, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->getMedia()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p3, p5, v0, p6}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    .line 141
    invoke-virtual {p3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 142
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ba/a;Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/content/Context;Lcom/yelp/android/serializable/BizPhotoFeedEntry;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p6}, Lcom/yelp/android/ba/a;->a(Landroid/view/View$OnClickListener;Landroid/view/View;Landroid/content/Context;Lcom/yelp/android/serializable/BizPhotoFeedEntry;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yelp/android/ba/a;->h:Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->getMedia()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 127
    const/4 v0, -0x1

    .line 129
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ba/a;->e:Lcom/yelp/android/ui/util/DynamicImageView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/DynamicImageView;->getNumberScrolled()I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/serializable/BizPhotoFeedEntry;Landroid/view/View$OnClickListener;Lcom/yelp/android/ui/util/w;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/16 v1, 0x8

    const/4 v5, 0x0

    .line 71
    iput-object p2, p0, Lcom/yelp/android/ba/a;->h:Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ba/a;->b:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/yelp/android/ba/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/yelp/android/ba/a;->c:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/RoundedImageView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ba/a;->d:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/RoundedImageView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/yelp/android/ba/a;->e:Lcom/yelp/android/ui/util/DynamicImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/DynamicImageView;->setVisibility(I)V

    .line 78
    invoke-virtual {p2}, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->getMedia()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 79
    iget-object v0, p0, Lcom/yelp/android/ba/a;->b:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/yelp/android/ba/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    invoke-virtual {p2}, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->getMedia()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yelp/android/serializable/Photo;

    .line 82
    iget-object v0, p0, Lcom/yelp/android/ba/a;->g:Lcom/bumptech/glide/j;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/Photo;->getLargestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    const v1, 0x7f0203e0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d;->a(I)Lcom/bumptech/glide/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ba/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/yelp/android/ag/j;

    .line 85
    iget-object v0, p0, Lcom/yelp/android/ba/a;->b:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Lcom/yelp/android/serializable/Media;)V

    .line 86
    iget-object v6, p0, Lcom/yelp/android/ba/a;->b:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    new-instance v0, Lcom/yelp/android/ba/b;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ba/b;-><init>(Lcom/yelp/android/ba/a;Landroid/view/View$OnClickListener;Landroid/content/Context;Lcom/yelp/android/serializable/BizPhotoFeedEntry;Lcom/yelp/android/serializable/Photo;)V

    invoke-virtual {v6, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p2}, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->getMedia()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ba/a;->c:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/widgets/RoundedImageView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ba/a;->d:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/widgets/RoundedImageView;->setVisibility(I)V

    .line 95
    invoke-virtual {p2}, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->getMedia()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    .line 96
    invoke-virtual {p2}, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->getMedia()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/yelp/android/serializable/Photo;

    .line 97
    iget-object v1, p0, Lcom/yelp/android/ba/a;->g:Lcom/bumptech/glide/j;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getLargestUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/d;->c()Lcom/bumptech/glide/c;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ba/a;->c:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/yelp/android/ag/j;

    .line 101
    iget-object v1, p0, Lcom/yelp/android/ba/a;->g:Lcom/bumptech/glide/j;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/Photo;->getLargestUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/d;->c()Lcom/bumptech/glide/c;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ba/a;->d:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/yelp/android/ag/j;

    .line 105
    iget-object v7, p0, Lcom/yelp/android/ba/a;->c:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getBusinessId()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ba/a;->a(Landroid/view/View$OnClickListener;Landroid/content/Context;Lcom/yelp/android/serializable/BizPhotoFeedEntry;Ljava/lang/String;I)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/yelp/android/ui/widgets/RoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v7, p0, Lcom/yelp/android/ba/a;->d:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/Photo;->getBusinessId()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ba/a;->a(Landroid/view/View$OnClickListener;Landroid/content/Context;Lcom/yelp/android/serializable/BizPhotoFeedEntry;Ljava/lang/String;I)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/yelp/android/ui/widgets/RoundedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p2}, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->getMedia()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/yelp/android/ba/a;->e:Lcom/yelp/android/ui/util/DynamicImageView;

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/util/DynamicImageView;->setVisibility(I)V

    .line 111
    new-instance v0, Lcom/yelp/android/ui/util/ax;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->getMedia()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/ui/util/ax;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 112
    iget-object v1, p0, Lcom/yelp/android/ba/a;->e:Lcom/yelp/android/ui/util/DynamicImageView;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/DynamicImageView;->setAdapter(Lcom/yelp/android/ui/util/ax;)V

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ba/a;->e:Lcom/yelp/android/ui/util/DynamicImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/DynamicImageView;->setOnPhotoSelectionIntent(Landroid/app/PendingIntent;)V

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ba/a;->e:Lcom/yelp/android/ui/util/DynamicImageView;

    invoke-virtual {v0, p4}, Lcom/yelp/android/ui/util/DynamicImageView;->setItemSelectedListener(Lcom/yelp/android/ui/util/w;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/FeedEntry;Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/yelp/android/ui/util/w;)V
    .locals 1

    .prologue
    .line 64
    check-cast p1, Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    iput-object p1, p0, Lcom/yelp/android/ba/a;->h:Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    .line 65
    iget-object v0, p0, Lcom/yelp/android/ba/a;->h:Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/yelp/android/ba/a;->a(Landroid/content/Context;Lcom/yelp/android/serializable/BizPhotoFeedEntry;Landroid/view/View$OnClickListener;Lcom/yelp/android/ui/util/w;)V

    .line 66
    return-void
.end method

.method public b()Lcom/yelp/android/serializable/BizPhotoFeedEntry;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yelp/android/ba/a;->h:Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    return-object v0
.end method
