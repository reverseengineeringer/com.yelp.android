.class public Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;
.super Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;
.source "PhotoPageFragment.java"


# instance fields
.field private b:Lcom/yelp/android/serializable/Photo;

.field private c:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private g:Lcom/bumptech/glide/j;

.field private h:Lcom/yelp/android/ui/activities/photoviewer/am;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/Photo;)Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;-><init>()V

    .line 40
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 41
    const-string/jumbo v2, "extra.photo"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 44
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)Lcom/yelp/android/ui/activities/photoviewer/am;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->h:Lcom/yelp/android/ui/activities/photoviewer/am;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->i_()V

    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->d:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->b:Lcom/yelp/android/serializable/Photo;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->b:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getLargestUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->b:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getLargestUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 94
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->b:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Photo;->getSmallUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->g:Lcom/bumptech/glide/j;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->b:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Photo;->getSmallUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/d;->j()Lcom/bumptech/glide/b;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/ai;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->e:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2}, Lcom/yelp/android/ui/activities/photoviewer/ai;-><init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/b;->a(Lcom/yelp/android/ag/j;)Lcom/yelp/android/ag/j;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->b:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getLargestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->g:Lcom/bumptech/glide/j;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->b:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Photo;->getLargestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/d;->j()Lcom/bumptech/glide/b;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/aj;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->c:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-direct {v1, p0, v2}, Lcom/yelp/android/ui/activities/photoviewer/aj;-><init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/b;->a(Lcom/yelp/android/ag/j;)Lcom/yelp/android/ag/j;

    .line 127
    :cond_1
    return-void

    .line 90
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->e:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->b:Lcom/yelp/android/serializable/Photo;

    return-object v0
.end method

.method public a(Lcom/yelp/android/ui/activities/photoviewer/am;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->h:Lcom/yelp/android/ui/activities/photoviewer/am;

    .line 135
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 50
    invoke-static {p0}, Lcom/bumptech/glide/h;->a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/j;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->g:Lcom/bumptech/glide/j;

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 56
    const v1, 0x7f0300b9

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 57
    const v1, 0x7f0c02c9

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->e:Landroid/widget/ImageView;

    .line 58
    const v1, 0x7f0c02c8

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->d:Landroid/widget/ImageView;

    .line 59
    const v1, 0x7f0c00c6

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->c:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    .line 61
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->c:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    new-instance v3, Lcom/yelp/android/ui/activities/photoviewer/ag;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/photoviewer/ag;-><init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)V

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->setTapListener(Lcom/yelp/android/ui/widgets/ao;)V

    .line 70
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "extra.photo"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Photo;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->b:Lcom/yelp/android/serializable/Photo;

    .line 71
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->b()V

    .line 73
    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/ah;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/photoviewer/ah;-><init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-object v0
.end method
