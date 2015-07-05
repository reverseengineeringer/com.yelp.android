.class public Lcom/yelp/android/ui/activities/addphoto/i;
.super Lcom/yelp/android/ui/util/au;
.source "AllTheUploadedMediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/IdentifiableMedia;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/yelp/android/serializable/IdentifiableMedia;


# instance fields
.field private b:Ljava/lang/Integer;

.field private c:I

.field private d:I

.field private final e:Landroid/view/View$OnClickListener;

.field private final f:Lcom/yelp/android/ui/activities/addphoto/l;

.field private final g:Lcom/yelp/android/analytics/d;

.field private h:Z

.field private final i:Lcom/bumptech/glide/j;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/yelp/android/ui/activities/addphoto/MediaStub;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/addphoto/MediaStub;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/activities/addphoto/i;->a:Lcom/yelp/android/serializable/IdentifiableMedia;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/addphoto/l;Landroid/view/View$OnClickListener;Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/ui/activities/addphoto/l;",
            "Landroid/view/View$OnClickListener;",
            "Landroid/util/Pair",
            "<",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/i;->j:Ljava/util/List;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/i;->k:Ljava/util/List;

    .line 109
    invoke-static {p1}, Lcom/bumptech/glide/h;->c(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/i;->i:Lcom/bumptech/glide/j;

    .line 110
    iput-object p2, p0, Lcom/yelp/android/ui/activities/addphoto/i;->f:Lcom/yelp/android/ui/activities/addphoto/l;

    .line 111
    iput-object p3, p0, Lcom/yelp/android/ui/activities/addphoto/i;->e:Landroid/view/View$OnClickListener;

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/i;->e:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/i;->h:Z

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/i;->g:Lcom/yelp/android/analytics/d;

    .line 127
    :goto_0
    return-void

    .line 116
    :cond_0
    new-instance v2, Lcom/yelp/android/ui/activities/addphoto/j;

    iget-object v0, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v1, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-direct {v2, p0, v0, v1}, Lcom/yelp/android/ui/activities/addphoto/j;-><init>(Lcom/yelp/android/ui/activities/addphoto/i;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;)V

    iput-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/i;->g:Lcom/yelp/android/analytics/d;

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/i;->h:Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;Ljava/lang/String;)Lcom/yelp/android/ui/activities/addphoto/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View$OnClickListener;",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/yelp/android/ui/activities/addphoto/i;"
        }
    .end annotation

    .prologue
    .line 431
    new-instance v0, Lcom/yelp/android/ui/activities/addphoto/l;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, p4, v1}, Lcom/yelp/android/ui/activities/addphoto/l;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;Ljava/lang/String;Lcom/yelp/android/serializable/IdentifiableMedia;)V

    .line 433
    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 435
    new-instance v2, Lcom/yelp/android/ui/activities/addphoto/i;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/yelp/android/ui/activities/addphoto/i;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/addphoto/l;Landroid/view/View$OnClickListener;Landroid/util/Pair;)V

    return-object v2
.end method

.method private a(Lcom/yelp/android/serializable/Media;Lcom/yelp/android/ui/util/PhotoConfig$Size;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 358
    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v1}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    check-cast p1, Lcom/yelp/android/serializable/Photo;

    .line 360
    sget-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;->Square:Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

    invoke-virtual {p1, p2, v0}, Lcom/yelp/android/serializable/Photo;->getCustomUrl(Lcom/yelp/android/ui/util/PhotoConfig$Size;Lcom/yelp/android/ui/util/PhotoConfig$Aspect;)Ljava/lang/String;

    move-result-object v0

    .line 365
    :cond_0
    :goto_0
    return-object v0

    .line 361
    :cond_1
    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v1}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    check-cast p1, Lcom/yelp/android/serializable/Video;

    .line 363
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Video;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/Media;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 327
    const v0, 0x7f0c04d0

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 329
    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v1}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 338
    :goto_0
    return-void

    .line 331
    :cond_0
    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v1}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 332
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 334
    :cond_1
    const v0, 0x7f0c041d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/i;->g:Lcom/yelp/android/analytics/d;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/Media;Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 384
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v0}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v0}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/i;->f:Lcom/yelp/android/ui/activities/addphoto/l;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    :goto_0
    return-void

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/i;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/Media;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 372
    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->getCaption()Ljava/lang/String;

    move-result-object v1

    .line 373
    if-eqz p2, :cond_0

    .line 374
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    :cond_0
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 378
    return-void

    .line 374
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/Media;Lcom/yelp/android/ui/util/PhotoConfig$Size;Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 345
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/i;->i:Lcom/bumptech/glide/j;

    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/addphoto/i;->a(Lcom/yelp/android/serializable/Media;Lcom/yelp/android/ui/util/PhotoConfig$Size;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/util/RemoteImageExceptionCallback;->INSTANCE:Lcom/yelp/android/util/RemoteImageExceptionCallback;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/request/c;)Lcom/bumptech/glide/c;

    move-result-object v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2, v0}, Lcom/bumptech/glide/c;->a(II)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/yelp/android/ag/j;

    .line 350
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/addphoto/i;Z)Z
    .locals 0

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/addphoto/i;->h:Z

    return p1
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/i;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 233
    if-nez p2, :cond_1

    .line 234
    const v0, 0x7f03012f

    .line 235
    const/4 v1, 0x3

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/addphoto/i;->getItemViewType(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/i;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    const v0, 0x7f030130

    .line 238
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 239
    new-instance v0, Lcom/yelp/android/ui/activities/addphoto/k;

    invoke-direct {v0, v3}, Lcom/yelp/android/ui/activities/addphoto/k;-><init>(I)V

    .line 240
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v2, v1}, Lcom/yelp/android/ui/activities/addphoto/k;->a(Landroid/view/View;[I)V

    .line 241
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 243
    :goto_0
    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v0, v0, 0x2

    add-int v1, p1, v0

    .line 244
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/yelp/android/ui/activities/addphoto/k;

    .line 245
    const v0, 0x7f0c041a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, v7, Lcom/yelp/android/ui/activities/addphoto/k;->a:[Lcom/yelp/android/ui/widgets/WebImageView;

    aget-object v4, v0, v5

    iget-object v0, v7, Lcom/yelp/android/ui/activities/addphoto/k;->b:[Landroid/widget/TextView;

    aget-object v5, v0, v5

    sget-object v6, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Px_120:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/ui/activities/addphoto/i;->a(ILandroid/view/View;Landroid/view/View;Lcom/yelp/android/ui/widgets/WebImageView;Landroid/widget/TextView;Lcom/yelp/android/ui/util/PhotoConfig$Size;)V

    .line 247
    add-int/lit8 v1, v1, 0x1

    const v0, 0x7f0c041c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, v7, Lcom/yelp/android/ui/activities/addphoto/k;->a:[Lcom/yelp/android/ui/widgets/WebImageView;

    aget-object v4, v0, v8

    iget-object v0, v7, Lcom/yelp/android/ui/activities/addphoto/k;->b:[Landroid/widget/TextView;

    aget-object v5, v0, v8

    sget-object v6, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Px_120:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/ui/activities/addphoto/i;->a(ILandroid/view/View;Landroid/view/View;Lcom/yelp/android/ui/widgets/WebImageView;Landroid/widget/TextView;Lcom/yelp/android/ui/util/PhotoConfig$Size;)V

    .line 249
    return-object v2

    :cond_1
    move-object v2, p2

    goto :goto_0

    .line 240
    :array_0
    .array-data 4
        0x7f0c041a
        0x7f0c041c
    .end array-data
.end method

.method public a(I)Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(ILandroid/view/View;Landroid/view/View;Lcom/yelp/android/ui/widgets/WebImageView;Landroid/widget/TextView;Lcom/yelp/android/ui/util/PhotoConfig$Size;)V
    .locals 2

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/addphoto/i;->c(I)Lcom/yelp/android/serializable/IdentifiableMedia;

    move-result-object v0

    .line 312
    invoke-direct {p0, v0, p2, p3}, Lcom/yelp/android/ui/activities/addphoto/i;->a(Lcom/yelp/android/serializable/Media;Landroid/view/View;Landroid/view/View;)V

    .line 313
    invoke-direct {p0, v0, p6, p4}, Lcom/yelp/android/ui/activities/addphoto/i;->a(Lcom/yelp/android/serializable/Media;Lcom/yelp/android/ui/util/PhotoConfig$Size;Landroid/widget/ImageView;)V

    .line 314
    invoke-direct {p0, v0, p4}, Lcom/yelp/android/ui/activities/addphoto/i;->a(Lcom/yelp/android/serializable/Media;Landroid/widget/ImageView;)V

    .line 315
    invoke-direct {p0, v0, p5, p4}, Lcom/yelp/android/ui/activities/addphoto/i;->a(Lcom/yelp/android/serializable/Media;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 317
    const v0, 0x7f0c002a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setTag(ILjava/lang/Object;)V

    .line 318
    const v0, 0x7f0c002b

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/i;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setTag(ILjava/lang/Object;)V

    .line 319
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 130
    const-string/jumbo v0, "extra.media_list"

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/i;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 131
    const-string/jumbo v0, "extra.remove_extra"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/addphoto/i;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 132
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/IdentifiableMedia;)V
    .locals 2

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/i;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/util/List;Lcom/yelp/android/serializable/ay;)I

    move-result v0

    .line 287
    if-ltz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/i;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/i;->notifyDataSetChanged()V

    .line 291
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Photo;)V
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/yelp/android/ui/activities/addphoto/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/addphoto/i;->c:I

    .line 143
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/i;->f_()V

    .line 144
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/au;->c(Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 393
    new-instance v0, Lcom/yelp/android/serializable/Photo$TempPhoto;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/yelp/android/serializable/Photo$TempPhoto;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0, p3}, Lcom/yelp/android/serializable/Photo;->setTempId(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/i;->a(Lcom/yelp/android/serializable/Photo;)V

    .line 397
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/i;->notifyDataSetChanged()V

    .line 398
    return-void
.end method

.method public a_(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/i;->j:Ljava/util/List;

    .line 406
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 253
    if-nez p2, :cond_1

    .line 254
    const v0, 0x7f030131

    .line 255
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/addphoto/i;->getItemViewType(I)I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/i;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    const v0, 0x7f030134

    .line 258
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 259
    new-instance v2, Lcom/yelp/android/ui/activities/addphoto/k;

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/activities/addphoto/k;-><init>(I)V

    move-object v0, v1

    .line 260
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v5}, Lcom/yelp/android/ui/activities/addphoto/k;->a(Landroid/view/ViewGroup;I)V

    .line 261
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 263
    :goto_0
    div-int/lit8 v0, p1, 0x2

    add-int v1, p1, v0

    .line 264
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/addphoto/k;

    .line 265
    iget-object v3, v0, Lcom/yelp/android/ui/activities/addphoto/k;->a:[Lcom/yelp/android/ui/widgets/WebImageView;

    aget-object v4, v3, v5

    iget-object v0, v0, Lcom/yelp/android/ui/activities/addphoto/k;->b:[Landroid/widget/TextView;

    aget-object v5, v0, v5

    sget-object v6, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Large:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    move-object v0, p0

    move-object v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/ui/activities/addphoto/i;->a(ILandroid/view/View;Landroid/view/View;Lcom/yelp/android/ui/widgets/WebImageView;Landroid/widget/TextView;Lcom/yelp/android/ui/util/PhotoConfig$Size;)V

    .line 266
    return-object v2

    :cond_1
    move-object v2, p2

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Photo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/i;->j:Ljava/util/List;

    return-object v0
.end method

.method public b(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 199
    iput p1, p0, Lcom/yelp/android/ui/activities/addphoto/i;->c:I

    .line 200
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    add-int/lit8 p1, p1, 0x1

    .line 203
    :cond_0
    iput p1, p0, Lcom/yelp/android/ui/activities/addphoto/i;->d:I

    .line 207
    iget v0, p0, Lcom/yelp/android/ui/activities/addphoto/i;->c:I

    if-nez v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 208
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/i;->b:Ljava/lang/Integer;

    .line 217
    :goto_0
    return-void

    .line 209
    :cond_1
    iget v0, p0, Lcom/yelp/android/ui/activities/addphoto/i;->c:I

    if-nez v0, :cond_2

    if-ne p1, v1, :cond_2

    .line 213
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/i;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 215
    :cond_2
    div-int/lit8 v0, p1, 0x3

    mul-int/lit8 v0, v0, 0x2

    rem-int/lit8 v1, p1, 0x3

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/i;->b:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 136
    const-string/jumbo v0, "extra.media_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/i;->a(Ljava/util/List;)V

    .line 137
    const-string/jumbo v0, "extra.remove_extra"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/i;->h:Z

    .line 139
    :cond_0
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 413
    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/i;->k:Ljava/util/List;

    .line 414
    return-void
.end method

.method public c(I)Lcom/yelp/android/serializable/IdentifiableMedia;
    .locals 2

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/i;->a()Ljava/util/List;

    move-result-object v0

    .line 271
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 272
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/IdentifiableMedia;

    .line 274
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/addphoto/i;->a:Lcom/yelp/android/serializable/IdentifiableMedia;

    goto :goto_0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Video;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/i;->k:Ljava/util/List;

    return-object v0
.end method

.method public f_()V
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/yelp/android/ui/activities/addphoto/i;->c:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/i;->b(I)V

    .line 196
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/i;->b:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/yelp/android/ui/util/au;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/i;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/addphoto/i;->a(I)Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 6

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 174
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/i;->getCount()I

    move-result v5

    .line 175
    add-int/lit8 v4, v5, -0x1

    if-ne p1, v4, :cond_1

    move v4, v0

    .line 176
    :goto_0
    if-eqz v4, :cond_5

    .line 177
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/i;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne v5, v0, :cond_2

    move v0, v1

    .line 187
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v4, v2

    .line 175
    goto :goto_0

    .line 179
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/i;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/yelp/android/ui/activities/addphoto/i;->d:I

    rem-int/lit8 v4, v4, 0x3

    if-eq v4, v3, :cond_0

    .line 181
    :cond_3
    iget v4, p0, Lcom/yelp/android/ui/activities/addphoto/i;->d:I

    rem-int/lit8 v4, v4, 0x3

    if-ne v4, v3, :cond_4

    move v0, v2

    .line 182
    goto :goto_1

    .line 183
    :cond_4
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/i;->d()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 184
    rem-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1

    .line 187
    :cond_5
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v3

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/addphoto/i;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 228
    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/addphoto/i;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 224
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/addphoto/i;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method
