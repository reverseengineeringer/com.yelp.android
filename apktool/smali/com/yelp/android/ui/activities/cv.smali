.class Lcom/yelp/android/ui/activities/cv;
.super Landroid/widget/BaseAdapter;
.source "ActivityMediaBrowser.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Lcom/bumptech/glide/j;

.field private final e:Lcom/yelp/android/ui/util/z;

.field private final f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 376
    iput-object p1, p0, Lcom/yelp/android/ui/activities/cv;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 507
    new-instance v0, Lcom/yelp/android/ui/activities/cx;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/cx;-><init>(Lcom/yelp/android/ui/activities/cv;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/cv;->f:Landroid/view/View$OnClickListener;

    .line 377
    invoke-static {p2}, Lcom/bumptech/glide/h;->c(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/cv;->d:Lcom/bumptech/glide/j;

    .line 378
    iput-object p3, p0, Lcom/yelp/android/ui/activities/cv;->b:Ljava/util/ArrayList;

    .line 379
    iput-boolean p4, p0, Lcom/yelp/android/ui/activities/cv;->c:Z

    .line 380
    new-instance v0, Lcom/yelp/android/ui/util/z;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/z;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/cv;->e:Lcom/yelp/android/ui/util/z;

    .line 381
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/cv;)Lcom/bumptech/glide/j;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cv;->d:Lcom/bumptech/glide/j;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/yelp/android/serializable/Media;
    .locals 1

    .prologue
    .line 411
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/cv;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 414
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cv;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 388
    iget-object v1, p0, Lcom/yelp/android/ui/activities/cv;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->g(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/cv;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->c(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v1

    if-nez v1, :cond_0

    .line 389
    add-int/lit8 v0, v0, 0x1

    .line 391
    :cond_0
    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/cv;->a(I)Lcom/yelp/android/serializable/Media;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 420
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cv;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->g(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/cv;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/cv;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->c(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Lcom/yelp/android/appdata/webrequests/MediaRequest;

    move-result-object v0

    if-nez v0, :cond_0

    .line 403
    const/4 v0, 0x1

    .line 405
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 444
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/cv;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 445
    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030053

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 447
    :cond_0
    const v0, 0x7f0c01cd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 448
    iget-object v1, p0, Lcom/yelp/android/ui/activities/cv;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    :cond_1
    :goto_0
    return-object p2

    .line 451
    :cond_2
    if-nez p2, :cond_3

    .line 452
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03015c

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 454
    new-instance v0, Lcom/yelp/android/ui/activities/cy;

    invoke-direct {v0, p0, p2}, Lcom/yelp/android/ui/activities/cy;-><init>(Lcom/yelp/android/ui/activities/cv;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 463
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/cv;->e:Lcom/yelp/android/ui/util/z;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/z;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 465
    check-cast p3, Landroid/widget/GridView;

    invoke-virtual {p3}, Landroid/widget/GridView;->getColumnWidth()I

    move-result v0

    .line 466
    iget-object v1, p0, Lcom/yelp/android/ui/activities/cv;->e:Lcom/yelp/android/ui/util/z;

    invoke-virtual {v1, v0, v0}, Lcom/yelp/android/ui/util/z;->a(II)V

    .line 469
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/cy;

    .line 470
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/cv;->a(I)Lcom/yelp/android/serializable/Media;

    move-result-object v4

    .line 471
    iget-object v1, p0, Lcom/yelp/android/ui/activities/cv;->e:Lcom/yelp/android/ui/util/z;

    iget-object v5, v0, Lcom/yelp/android/ui/activities/cy;->a:Landroid/widget/ImageView;

    new-instance v6, Lcom/yelp/android/ui/activities/cw;

    invoke-direct {v6, p0, v4}, Lcom/yelp/android/ui/activities/cw;-><init>(Lcom/yelp/android/ui/activities/cv;Lcom/yelp/android/serializable/Media;)V

    invoke-virtual {v1, v5, v6}, Lcom/yelp/android/ui/util/z;->a(Landroid/view/View;Lcom/yelp/android/ui/util/cu;)V

    .line 491
    iget-object v5, v0, Lcom/yelp/android/ui/activities/cy;->b:Landroid/widget/ImageView;

    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v4, v1}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 494
    invoke-interface {v4}, Lcom/yelp/android/serializable/Media;->getFeedbackPositiveCount()I

    move-result v1

    .line 495
    iget-boolean v5, p0, Lcom/yelp/android/ui/activities/cv;->c:Z

    if-eqz v5, :cond_1

    .line 496
    if-nez v1, :cond_5

    .line 497
    iget-object v0, v0, Lcom/yelp/android/ui/activities/cy;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v1, v3

    .line 491
    goto :goto_1

    .line 499
    :cond_5
    iget-object v1, v0, Lcom/yelp/android/ui/activities/cy;->c:Landroid/widget/TextView;

    invoke-interface {v4}, Lcom/yelp/android/serializable/Media;->getFeedbackPositiveCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v0, v0, Lcom/yelp/android/ui/activities/cy;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x2

    return v0
.end method
