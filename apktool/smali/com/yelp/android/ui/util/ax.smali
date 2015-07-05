.class public Lcom/yelp/android/ui/util/ax;
.super Landroid/support/v7/widget/bi;
.source "MediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/bi",
        "<",
        "Landroid/support/v7/widget/ce;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/serializable/YelpBusiness;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/yelp/android/ui/util/br;

.field private d:Lcom/yelp/android/ui/util/br;

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

.field private i:Lcom/bumptech/glide/j;

.field private final j:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/Video;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Landroid/support/v7/widget/bi;-><init>()V

    .line 236
    new-instance v0, Lcom/yelp/android/ui/util/az;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/az;-><init>(Lcom/yelp/android/ui/util/ax;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/ax;->j:Lcom/yelp/android/appdata/webrequests/m;

    .line 61
    iput-object p1, p0, Lcom/yelp/android/ui/util/ax;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/ui/util/ax;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getPhotosAndVideosCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/ax;->b:Ljava/util/List;

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getPhotosAndVideosCount()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/util/ax;->f:I

    .line 64
    if-eqz p2, :cond_0

    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getPhotosAndVideosCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 68
    invoke-direct {p0, v2}, Lcom/yelp/android/ui/util/ax;->c(I)V

    .line 70
    :cond_1
    invoke-static {p3}, Lcom/bumptech/glide/h;->c(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/ax;->i:Lcom/bumptech/glide/j;

    .line 71
    iput v2, p0, Lcom/yelp/android/ui/util/ax;->g:I

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/Media;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/support/v7/widget/bi;-><init>()V

    .line 236
    new-instance v0, Lcom/yelp/android/ui/util/az;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/az;-><init>(Lcom/yelp/android/ui/util/ax;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/ax;->j:Lcom/yelp/android/appdata/webrequests/m;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/ax;->b:Ljava/util/List;

    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/util/ax;->f:I

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/util/ax;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 78
    invoke-static {p2}, Lcom/bumptech/glide/h;->c(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/ax;->i:Lcom/bumptech/glide/j;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/util/ax;->g:I

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/ax;Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/yelp/android/ui/util/ax;->h:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/ax;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->a:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/ax;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/ax;->c(I)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/util/ax;)Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/util/ax;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/yelp/android/ui/util/ax;->e:I

    return v0
.end method

.method private c(I)V
    .locals 5

    .prologue
    .line 224
    iget v0, p0, Lcom/yelp/android/ui/util/ax;->e:I

    if-le p1, v0, :cond_0

    .line 225
    iput p1, p0, Lcom/yelp/android/ui/util/ax;->e:I

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->h:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    if-nez v0, :cond_1

    .line 230
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/util/ax;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/util/ax;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x32

    iget-object v4, p0, Lcom/yelp/android/ui/util/ax;->j:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/ax;->h:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    .line 232
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->h:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 234
    :cond_1
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/util/ax;->e:I

    .line 212
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->h:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->h:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->cancel(Z)V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/util/ax;->h:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    .line 219
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->a:Lcom/yelp/android/serializable/YelpBusiness;

    if-nez v0, :cond_0

    .line 149
    iget v0, p0, Lcom/yelp/android/ui/util/ax;->f:I

    .line 152
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/util/ax;->f:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->a:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ax;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 85
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ce;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    packed-switch p2, :pswitch_data_0

    .line 102
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 95
    :pswitch_0
    new-instance v0, Lcom/yelp/android/ui/util/bb;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03015f

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/bb;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 98
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030054

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 100
    new-instance v0, Lcom/yelp/android/ui/util/ba;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/ba;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/app/PendingIntent;Lcom/yelp/android/ui/util/bc;)V
    .locals 2

    .prologue
    .line 201
    new-instance v0, Lcom/yelp/android/ui/util/br;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/yelp/android/ui/util/br;-><init>(Landroid/app/PendingIntent;ZLcom/yelp/android/ui/util/bc;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/ax;->c:Lcom/yelp/android/ui/util/br;

    .line 202
    new-instance v0, Lcom/yelp/android/ui/util/br;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p2}, Lcom/yelp/android/ui/util/br;-><init>(Landroid/app/PendingIntent;ZLcom/yelp/android/ui/util/bc;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/ax;->d:Lcom/yelp/android/ui/util/br;

    .line 203
    return-void
.end method

.method public a(Landroid/support/v7/widget/ce;I)V
    .locals 3

    .prologue
    .line 107
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/util/ax;->a(I)I

    move-result v0

    if-nez v0, :cond_5

    .line 108
    iget v0, p0, Lcom/yelp/android/ui/util/ax;->g:I

    if-lt p2, v0, :cond_0

    .line 109
    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/yelp/android/ui/util/ax;->g:I

    .line 111
    :cond_0
    check-cast p1, Lcom/yelp/android/ui/util/bb;

    .line 112
    const/4 v0, 0x0

    .line 115
    iget-object v1, p0, Lcom/yelp/android/ui/util/ax;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_6

    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    move-object v1, v0

    .line 118
    :goto_0
    if-nez v1, :cond_2

    .line 119
    iget-object v0, p1, Lcom/yelp/android/ui/util/bb;->j:Landroid/widget/ImageView;

    const v2, 0x7f0202f2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    :goto_1
    iget-object v2, p1, Lcom/yelp/android/ui/util/bb;->k:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v1, v0}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v0, p1, Lcom/yelp/android/ui/util/bb;->a:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 126
    iget-object v2, p1, Lcom/yelp/android/ui/util/bb;->a:Landroid/view/View;

    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->d:Lcom/yelp/android/ui/util/br;

    :goto_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    :cond_1
    :goto_4
    return-void

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->i:Lcom/bumptech/glide/j;

    invoke-interface {v1}, Lcom/yelp/android/serializable/Media;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    iget-object v2, p1, Lcom/yelp/android/ui/util/bb;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/d;->a(Landroid/widget/ImageView;)Lcom/yelp/android/ag/j;

    goto :goto_1

    .line 123
    :cond_3
    const/16 v0, 0x8

    goto :goto_2

    .line 126
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->c:Lcom/yelp/android/ui/util/br;

    goto :goto_3

    .line 128
    :cond_5
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/util/ax;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 129
    iget-object v0, p1, Landroid/support/v7/widget/ce;->a:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/util/ay;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/util/ay;-><init>(Lcom/yelp/android/ui/util/ax;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_6
    move-object v1, v0

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/Media;)V
    .locals 3

    .prologue
    .line 192
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 194
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->b:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 198
    :cond_1
    return-void
.end method

.method public a(Lcom/yelp/android/ui/util/w;)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->c:Lcom/yelp/android/ui/util/br;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->c:Lcom/yelp/android/ui/util/br;

    iput-object p1, v0, Lcom/yelp/android/ui/util/br;->c:Lcom/yelp/android/ui/util/w;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->d:Lcom/yelp/android/ui/util/br;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->d:Lcom/yelp/android/ui/util/br;

    iput-object p1, v0, Lcom/yelp/android/ui/util/br;->c:Lcom/yelp/android/ui/util/w;

    .line 189
    :cond_1
    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yelp/android/ui/util/ax;->b:Ljava/util/List;

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/yelp/android/ui/util/ax;->i()V

    .line 163
    iget v0, p0, Lcom/yelp/android/ui/util/ax;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/util/ax;->f:I

    .line 164
    invoke-direct {p0}, Lcom/yelp/android/ui/util/ax;->h()V

    .line 165
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ax;->c()V

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/ax;->c(I)V

    .line 167
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/yelp/android/ui/util/ax;->i()V

    .line 172
    iget v0, p0, Lcom/yelp/android/ui/util/ax;->f:I

    if-lez v0, :cond_0

    .line 173
    iget v0, p0, Lcom/yelp/android/ui/util/ax;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/util/ax;->f:I

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/util/ax;->h()V

    .line 176
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ax;->c()V

    .line 177
    iget v0, p0, Lcom/yelp/android/ui/util/ax;->f:I

    if-lez v0, :cond_1

    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/ax;->c(I)V

    .line 180
    :cond_1
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/yelp/android/ui/util/ax;->g:I

    return v0
.end method
