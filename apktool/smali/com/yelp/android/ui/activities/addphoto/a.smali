.class public Lcom/yelp/android/ui/activities/addphoto/a;
.super Lcom/yelp/android/ui/util/w;
.source "AllTheUploadedMediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/addphoto/a$a;,
        Lcom/yelp/android/ui/activities/addphoto/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
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

.field private final f:Lcom/yelp/android/ui/activities/addphoto/a$b;

.field private final g:Lcom/yelp/android/analytics/d;

.field private h:Z

.field private final i:Lcom/yelp/android/ui/util/t;

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
    .line 76
    new-instance v0, Lcom/yelp/android/ui/activities/addphoto/MediaStub;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/addphoto/MediaStub;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/activities/addphoto/a;->a:Lcom/yelp/android/serializable/IdentifiableMedia;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/addphoto/a$b;Landroid/view/View$OnClickListener;Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/ui/activities/addphoto/a$b;",
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
    .line 105
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->j:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->k:Ljava/util/List;

    .line 106
    invoke-static {p1}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->i:Lcom/yelp/android/ui/util/t;

    .line 107
    iput-object p2, p0, Lcom/yelp/android/ui/activities/addphoto/a;->f:Lcom/yelp/android/ui/activities/addphoto/a$b;

    .line 108
    iput-object p3, p0, Lcom/yelp/android/ui/activities/addphoto/a;->e:Landroid/view/View$OnClickListener;

    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->e:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->h:Z

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->g:Lcom/yelp/android/analytics/d;

    .line 124
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v2, Lcom/yelp/android/ui/activities/addphoto/a$1;

    iget-object v0, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v1, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-direct {v2, p0, v0, v1}, Lcom/yelp/android/ui/activities/addphoto/a$1;-><init>(Lcom/yelp/android/ui/activities/addphoto/a;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;)V

    iput-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/a;->g:Lcom/yelp/android/analytics/d;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->h:Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;Ljava/lang/String;)Lcom/yelp/android/ui/activities/addphoto/a;
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
            "Lcom/yelp/android/ui/activities/addphoto/a;"
        }
    .end annotation

    .prologue
    .line 465
    new-instance v0, Lcom/yelp/android/ui/activities/addphoto/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, p4, v1}, Lcom/yelp/android/ui/activities/addphoto/a$b;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;Ljava/lang/String;Lcom/yelp/android/serializable/IdentifiableMedia;)V

    .line 467
    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 469
    new-instance v2, Lcom/yelp/android/ui/activities/addphoto/a;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/yelp/android/ui/activities/addphoto/a;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/addphoto/a$b;Landroid/view/View$OnClickListener;Landroid/util/Pair;)V

    return-object v2
.end method

.method private a(Lcom/yelp/android/serializable/Media;Lcom/yelp/android/ui/util/PhotoConfig$Size;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 391
    const/4 v0, 0x0

    .line 392
    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v1}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    check-cast p1, Lcom/yelp/android/serializable/Photo;

    .line 394
    sget-object v0, Lcom/yelp/android/ui/util/PhotoConfig$Aspect;->Square:Lcom/yelp/android/ui/util/PhotoConfig$Aspect;

    invoke-virtual {p1, p2, v0}, Lcom/yelp/android/serializable/Photo;->a(Lcom/yelp/android/ui/util/PhotoConfig$Size;Lcom/yelp/android/ui/util/PhotoConfig$Aspect;)Ljava/lang/String;

    move-result-object v0

    .line 399
    :cond_0
    :goto_0
    return-object v0

    .line 395
    :cond_1
    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v1}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    check-cast p1, Lcom/yelp/android/serializable/Video;

    .line 397
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Video;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/Media;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 359
    const v0, 0x7f0f05d7

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 361
    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v1}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    if-eqz v0, :cond_0

    .line 363
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v1}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 366
    if-eqz v0, :cond_0

    .line 367
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 370
    :cond_2
    const v0, 0x7f0f0501

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/a;->g:Lcom/yelp/android/analytics/d;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/Media;Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 418
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v0}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {p1, v0}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->f:Lcom/yelp/android/ui/activities/addphoto/a$b;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/Media;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 406
    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->g()Ljava/lang/String;

    move-result-object v1

    .line 407
    if-eqz p2, :cond_0

    .line 408
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 409
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    :cond_0
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 412
    return-void

    .line 408
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/Media;Lcom/yelp/android/ui/util/PhotoConfig$Size;Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 381
    invoke-virtual {p3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 382
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/a;->i:Lcom/yelp/android/ui/util/t;

    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/addphoto/a;->a(Lcom/yelp/android/serializable/Media;Lcom/yelp/android/ui/util/PhotoConfig$Size;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/util/u$a;->a(II)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 383
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/addphoto/a;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/addphoto/a;->h:Z

    return p1
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->h:Z

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

    .line 244
    if-nez p2, :cond_1

    .line 245
    const v0, 0x7f030192

    .line 246
    const/4 v1, 0x3

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/addphoto/a;->getItemViewType(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    const v0, 0x7f030193

    .line 249
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 250
    new-instance v0, Lcom/yelp/android/ui/activities/addphoto/a$a;

    invoke-direct {v0, v3}, Lcom/yelp/android/ui/activities/addphoto/a$a;-><init>(I)V

    .line 251
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v2, v1}, Lcom/yelp/android/ui/activities/addphoto/a$a;->a(Landroid/view/View;[I)V

    .line 252
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 254
    :goto_0
    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v0, v0, 0x2

    add-int v1, p1, v0

    .line 255
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/yelp/android/ui/activities/addphoto/a$a;

    .line 256
    const v0, 0x7f0f04fe

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, v7, Lcom/yelp/android/ui/activities/addphoto/a$a;->a:[Lcom/yelp/android/ui/widgets/WebImageView;

    aget-object v4, v0, v5

    iget-object v0, v7, Lcom/yelp/android/ui/activities/addphoto/a$a;->b:[Landroid/widget/TextView;

    aget-object v5, v0, v5

    sget-object v6, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Px_120:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/ui/activities/addphoto/a;->a(ILandroid/view/View;Landroid/view/View;Lcom/yelp/android/ui/widgets/WebImageView;Landroid/widget/TextView;Lcom/yelp/android/ui/util/PhotoConfig$Size;)V

    .line 263
    add-int/lit8 v1, v1, 0x1

    const v0, 0x7f0f0500

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v0, v7, Lcom/yelp/android/ui/activities/addphoto/a$a;->a:[Lcom/yelp/android/ui/widgets/WebImageView;

    aget-object v4, v0, v8

    iget-object v0, v7, Lcom/yelp/android/ui/activities/addphoto/a$a;->b:[Landroid/widget/TextView;

    aget-object v5, v0, v8

    sget-object v6, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Px_120:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/ui/activities/addphoto/a;->a(ILandroid/view/View;Landroid/view/View;Lcom/yelp/android/ui/widgets/WebImageView;Landroid/widget/TextView;Lcom/yelp/android/ui/util/PhotoConfig$Size;)V

    .line 270
    return-object v2

    :cond_1
    move-object v2, p2

    goto :goto_0

    .line 251
    :array_0
    .array-data 4
        0x7f0f04fe
        0x7f0f0500
    .end array-data
.end method

.method public a(I)Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(ILandroid/view/View;Landroid/view/View;Lcom/yelp/android/ui/widgets/WebImageView;Landroid/widget/TextView;Lcom/yelp/android/ui/util/PhotoConfig$Size;)V
    .locals 2

    .prologue
    .line 342
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/addphoto/a;->c(I)Lcom/yelp/android/serializable/IdentifiableMedia;

    move-result-object v0

    .line 344
    invoke-direct {p0, v0, p2, p3}, Lcom/yelp/android/ui/activities/addphoto/a;->a(Lcom/yelp/android/serializable/Media;Landroid/view/View;Landroid/view/View;)V

    .line 345
    invoke-direct {p0, v0, p6, p4}, Lcom/yelp/android/ui/activities/addphoto/a;->a(Lcom/yelp/android/serializable/Media;Lcom/yelp/android/ui/util/PhotoConfig$Size;Landroid/widget/ImageView;)V

    .line 346
    invoke-direct {p0, v0, p4}, Lcom/yelp/android/ui/activities/addphoto/a;->a(Lcom/yelp/android/serializable/Media;Landroid/widget/ImageView;)V

    .line 347
    invoke-direct {p0, v0, p5, p4}, Lcom/yelp/android/ui/activities/addphoto/a;->a(Lcom/yelp/android/serializable/Media;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 349
    const v0, 0x7f0f002f

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setTag(ILjava/lang/Object;)V

    .line 350
    const v0, 0x7f0f0030

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setTag(ILjava/lang/Object;)V

    .line 351
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 127
    const-string/jumbo v0, "extra.media_list"

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/a;->a()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 129
    const-string/jumbo v0, "extra.remove_extra"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/addphoto/a;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/IdentifiableMedia;)V
    .locals 2

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/a;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yelp/android/ui/util/as;->a(Ljava/util/List;Lcom/yelp/android/serializable/b;)I

    move-result v0

    .line 314
    if-ltz v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/a;->notifyDataSetChanged()V

    .line 318
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Photo;)V
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->c:I

    .line 142
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/a;->b()V

    .line 143
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/w;->d(Ljava/lang/Object;)V

    .line 144
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
    .line 436
    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/a;->j:Ljava/util/List;

    .line 437
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 274
    if-nez p2, :cond_1

    .line 275
    const v0, 0x7f030194

    .line 276
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/addphoto/a;->getItemViewType(I)I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/a;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    const v0, 0x7f030197

    .line 279
    :cond_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 280
    new-instance v2, Lcom/yelp/android/ui/activities/addphoto/a$a;

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/activities/addphoto/a$a;-><init>(I)V

    move-object v0, v1

    .line 281
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v5}, Lcom/yelp/android/ui/activities/addphoto/a$a;->a(Landroid/view/ViewGroup;I)V

    .line 282
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    .line 284
    :goto_0
    div-int/lit8 v0, p1, 0x2

    add-int v1, p1, v0

    .line 285
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/addphoto/a$a;

    .line 286
    iget-object v3, v0, Lcom/yelp/android/ui/activities/addphoto/a$a;->a:[Lcom/yelp/android/ui/widgets/WebImageView;

    aget-object v4, v3, v5

    iget-object v0, v0, Lcom/yelp/android/ui/activities/addphoto/a$a;->b:[Landroid/widget/TextView;

    aget-object v5, v0, v5

    sget-object v6, Lcom/yelp/android/ui/util/PhotoConfig$Size;->Large:Lcom/yelp/android/ui/util/PhotoConfig$Size;

    move-object v0, p0

    move-object v3, v2

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/ui/activities/addphoto/a;->a(ILandroid/view/View;Landroid/view/View;Lcom/yelp/android/ui/widgets/WebImageView;Landroid/widget/TextView;Lcom/yelp/android/ui/util/PhotoConfig$Size;)V

    .line 293
    return-object v2

    :cond_1
    move-object v2, p2

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->c:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/a;->b(I)V

    .line 207
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 210
    iput p1, p0, Lcom/yelp/android/ui/activities/addphoto/a;->c:I

    .line 211
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    add-int/lit8 p1, p1, 0x1

    .line 214
    :cond_0
    iput p1, p0, Lcom/yelp/android/ui/activities/addphoto/a;->d:I

    .line 218
    iget v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->c:I

    if-nez v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 219
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->b:Ljava/lang/Integer;

    .line 228
    :goto_0
    return-void

    .line 220
    :cond_1
    iget v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->c:I

    if-nez v0, :cond_2

    if-ne p1, v1, :cond_2

    .line 224
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 226
    :cond_2
    div-int/lit8 v0, p1, 0x3

    mul-int/lit8 v0, v0, 0x2

    rem-int/lit8 v1, p1, 0x3

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->b:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 133
    if-eqz p1, :cond_0

    .line 134
    const-string/jumbo v0, "extra.media_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/a;->a(Ljava/util/List;)V

    .line 136
    const-string/jumbo v0, "extra.remove_extra"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->h:Z

    .line 138
    :cond_0
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/Photo;)V
    .locals 0

    .prologue
    .line 427
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/addphoto/a;->a(Lcom/yelp/android/serializable/Photo;)V

    .line 428
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/a;->notifyDataSetChanged()V

    .line 429
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
    .line 444
    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/a;->k:Ljava/util/List;

    .line 445
    return-void
.end method

.method public c(I)Lcom/yelp/android/serializable/IdentifiableMedia;
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/a;->a()Ljava/util/List;

    move-result-object v0

    .line 298
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 299
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/IdentifiableMedia;

    .line 301
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/addphoto/a;->a:Lcom/yelp/android/serializable/IdentifiableMedia;

    goto :goto_0
.end method

.method public c()Ljava/util/List;
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
    .line 432
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->j:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/util/List;
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
    .line 440
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->k:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->b:Ljava/lang/Integer;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/a;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/addphoto/a;->a(I)Lcom/yelp/android/serializable/Photo;

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

    .line 185
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/a;->getCount()I

    move-result v5

    .line 186
    add-int/lit8 v4, v5, -0x1

    if-ne p1, v4, :cond_1

    move v4, v0

    .line 187
    :goto_0
    if-eqz v4, :cond_5

    .line 188
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/a;->e()Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne v5, v0, :cond_2

    move v0, v1

    .line 198
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v4, v2

    .line 186
    goto :goto_0

    .line 190
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/a;->e()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/yelp/android/ui/activities/addphoto/a;->d:I

    rem-int/lit8 v4, v4, 0x3

    if-eq v4, v3, :cond_0

    .line 192
    :cond_3
    iget v4, p0, Lcom/yelp/android/ui/activities/addphoto/a;->d:I

    rem-int/lit8 v4, v4, 0x3

    if-ne v4, v3, :cond_4

    move v0, v2

    .line 193
    goto :goto_1

    .line 194
    :cond_4
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/addphoto/a;->e()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 195
    rem-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1

    .line 198
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
    .line 232
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/addphoto/a;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 239
    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/addphoto/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    .line 235
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/addphoto/a;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 232
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
    .line 148
    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public t_()I
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/a;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
