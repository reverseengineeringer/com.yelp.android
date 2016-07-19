.class public Lcom/yelp/android/ui/util/z;
.super Landroid/support/v7/widget/RecyclerView$a;
.source "MediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/util/z$a;,
        Lcom/yelp/android/ui/util/z$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$a",
        "<",
        "Landroid/support/v7/widget/RecyclerView$u;",
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

.field private c:Lcom/yelp/android/ui/util/ag;

.field private d:Lcom/yelp/android/ui/util/ag;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

.field private j:Lcom/yelp/android/ui/util/t;

.field private final k:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/serializable/MediaPayload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/Video;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/util/z;->h:I

    .line 264
    new-instance v0, Lcom/yelp/android/ui/util/z$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/z$2;-><init>(Lcom/yelp/android/ui/util/z;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/z;->k:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 59
    iput-object p1, p0, Lcom/yelp/android/ui/util/z;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/ui/util/z;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->A()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/z;->b:Ljava/util/List;

    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->A()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/util/z;->f:I

    .line 62
    if-eqz p2, :cond_0

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/z;->h()V

    .line 66
    invoke-static {p3}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/z;->j:Lcom/yelp/android/ui/util/t;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/util/z;->g:I

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/Media;",
            ">;",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$a;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/util/z;->h:I

    .line 264
    new-instance v0, Lcom/yelp/android/ui/util/z$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/util/z$2;-><init>(Lcom/yelp/android/ui/util/z;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/z;->k:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/z;->b:Ljava/util/List;

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/util/z;->f:I

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/util/z;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 74
    invoke-static {p2}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/z;->j:Lcom/yelp/android/ui/util/t;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/util/z;->g:I

    .line 76
    iput p3, p0, Lcom/yelp/android/ui/util/z;->h:I

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/z;Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;)Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/yelp/android/ui/util/z;->i:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/z;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->a:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/z;I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/z;->c(I)V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/util/z;)Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/util/z;)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/yelp/android/ui/util/z;->e:I

    return v0
.end method

.method private c(I)V
    .locals 5

    .prologue
    .line 248
    iget v0, p0, Lcom/yelp/android/ui/util/z;->e:I

    if-le p1, v0, :cond_0

    .line 249
    iput p1, p0, Lcom/yelp/android/ui/util/z;->e:I

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->i:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    if-nez v0, :cond_1

    .line 254
    new-instance v0, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/util/z;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/util/z;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x32

    iget-object v4, p0, Lcom/yelp/android/ui/util/z;->k:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/z;->i:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    .line 260
    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->i:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 262
    :cond_1
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/util/z;->e:I

    .line 236
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->i:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->i:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;->a(Z)V

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/util/z;->i:Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    .line 243
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->a:Lcom/yelp/android/serializable/YelpBusiness;

    if-nez v0, :cond_0

    .line 167
    iget v0, p0, Lcom/yelp/android/ui/util/z;->f:I

    .line 170
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/util/z;->f:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(I)I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->a:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/z;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 82
    const/4 v0, 0x1

    .line 84
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$u;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 90
    packed-switch p2, :pswitch_data_0

    .line 104
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 92
    :pswitch_0
    new-instance v0, Lcom/yelp/android/ui/util/z$b;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301c9

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/z$b;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 99
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005e

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 102
    new-instance v0, Lcom/yelp/android/ui/util/z$a;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/z$a;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/app/PendingIntent;Lcom/yelp/android/ui/util/aa;)V
    .locals 2

    .prologue
    .line 219
    new-instance v0, Lcom/yelp/android/ui/util/ag;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/yelp/android/ui/util/ag;-><init>(Landroid/app/PendingIntent;ZLcom/yelp/android/ui/util/aa;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/z;->c:Lcom/yelp/android/ui/util/ag;

    .line 220
    new-instance v0, Lcom/yelp/android/ui/util/ag;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p2}, Lcom/yelp/android/ui/util/ag;-><init>(Landroid/app/PendingIntent;ZLcom/yelp/android/ui/util/aa;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/z;->d:Lcom/yelp/android/ui/util/ag;

    .line 221
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$u;I)V
    .locals 5

    .prologue
    .line 109
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/util/z;->a(I)I

    move-result v0

    if-nez v0, :cond_6

    .line 110
    iget v0, p0, Lcom/yelp/android/ui/util/z;->g:I

    if-lt p2, v0, :cond_0

    .line 111
    add-int/lit8 v0, p2, 0x1

    iput v0, p0, Lcom/yelp/android/ui/util/z;->g:I

    .line 113
    :cond_0
    check-cast p1, Lcom/yelp/android/ui/util/z$b;

    .line 116
    if-nez p2, :cond_1

    iget v0, p0, Lcom/yelp/android/ui/util/z;->h:I

    if-ltz v0, :cond_1

    .line 117
    iget-object v0, p1, Lcom/yelp/android/ui/util/z$b;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 119
    iget v1, p0, Lcom/yelp/android/ui/util/z;->h:I

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->setMargins(IIII)V

    .line 125
    :cond_1
    const/4 v0, 0x0

    .line 128
    iget-object v1, p0, Lcom/yelp/android/ui/util/z;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_7

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    move-object v1, v0

    .line 131
    :goto_0
    if-nez v1, :cond_3

    .line 132
    iget-object v0, p1, Lcom/yelp/android/ui/util/z$b;->l:Landroid/widget/ImageView;

    const v2, 0x7f020419

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    :goto_1
    iget-object v2, p1, Lcom/yelp/android/ui/util/z$b;->m:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v1, v0}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object v0, p1, Lcom/yelp/android/ui/util/z$b;->a:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 139
    iget-object v2, p1, Lcom/yelp/android/ui/util/z$b;->a:Landroid/view/View;

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->d:Lcom/yelp/android/ui/util/ag;

    :goto_3
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    :cond_2
    :goto_4
    return-void

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->j:Lcom/yelp/android/ui/util/t;

    invoke-interface {v1}, Lcom/yelp/android/serializable/Media;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    iget-object v2, p1, Lcom/yelp/android/ui/util/z$b;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    goto :goto_1

    .line 136
    :cond_4
    const/16 v0, 0x8

    goto :goto_2

    .line 139
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->c:Lcom/yelp/android/ui/util/ag;

    goto :goto_3

    .line 141
    :cond_6
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/util/z;->a(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 142
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$u;->a:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/util/z$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/util/z$1;-><init>(Lcom/yelp/android/ui/util/z;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :cond_7
    move-object v1, v0

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/Media;)V
    .locals 3

    .prologue
    .line 210
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 212
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->b:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 216
    :cond_1
    return-void
.end method

.method public a(Lcom/yelp/android/ui/util/DynamicImageView$a;)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->c:Lcom/yelp/android/ui/util/ag;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->c:Lcom/yelp/android/ui/util/ag;

    iput-object p1, v0, Lcom/yelp/android/ui/util/ag;->c:Lcom/yelp/android/ui/util/DynamicImageView$a;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->d:Lcom/yelp/android/ui/util/ag;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->d:Lcom/yelp/android/ui/util/ag;

    iput-object p1, v0, Lcom/yelp/android/ui/util/ag;->c:Lcom/yelp/android/ui/util/DynamicImageView$a;

    .line 207
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
    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->b:Ljava/util/List;

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/yelp/android/ui/util/z;->j()V

    .line 181
    iget v0, p0, Lcom/yelp/android/ui/util/z;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yelp/android/ui/util/z;->f:I

    .line 182
    invoke-direct {p0}, Lcom/yelp/android/ui/util/z;->i()V

    .line 183
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/z;->c()V

    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/z;->c(I)V

    .line 185
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/yelp/android/ui/util/z;->j()V

    .line 190
    iget v0, p0, Lcom/yelp/android/ui/util/z;->f:I

    if-lez v0, :cond_0

    .line 191
    iget v0, p0, Lcom/yelp/android/ui/util/z;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/util/z;->f:I

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/util/z;->i()V

    .line 194
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/z;->c()V

    .line 195
    iget v0, p0, Lcom/yelp/android/ui/util/z;->f:I

    if-lez v0, :cond_1

    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/z;->c(I)V

    .line 198
    :cond_1
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/yelp/android/ui/util/z;->g:I

    return v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/yelp/android/ui/util/z;->f:I

    if-ge v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/yelp/android/ui/util/z;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/z;->c(I)V

    .line 231
    :cond_0
    return-void
.end method
