.class public Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;
.super Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;
.source "PhotoPageFragment.java"


# instance fields
.field private b:Lcom/yelp/android/serializable/Photo;

.field private c:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/yelp/android/ui/util/t;

.field private g:Lcom/yelp/android/ui/activities/photoviewer/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/Photo;)Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;-><init>()V

    .line 39
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 40
    const-string/jumbo v2, "extra.photo"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 41
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)Lcom/yelp/android/ui/activities/photoviewer/a$a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->g:Lcom/yelp/android/ui/activities/photoviewer/a$a;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->H_()V

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->d:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->b:Lcom/yelp/android/serializable/Photo;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->b:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->b:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->t()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->b:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Photo;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->f:Lcom/yelp/android/ui/util/t;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->b:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Photo;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment$3;-><init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(Lcom/yelp/android/ui/util/t$c;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->b:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->f:Lcom/yelp/android/ui/util/t;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->b:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Photo;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment$4;-><init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(Lcom/yelp/android/ui/util/t$c;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->c:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 131
    :cond_1
    return-void

    .line 98
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)Lcom/yelp/android/ui/widgets/ScaleWebImageView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->c:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->b:Lcom/yelp/android/serializable/Photo;

    return-object v0
.end method

.method public a(Lcom/yelp/android/ui/activities/photoviewer/a$a;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->g:Lcom/yelp/android/ui/activities/photoviewer/a$a;

    .line 139
    return-void
.end method

.method public k()Lcom/yelp/android/serializable/Media;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->a()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 49
    invoke-static {p0}, Lcom/yelp/android/ui/util/t;->a(Landroid/support/v4/app/Fragment;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->f:Lcom/yelp/android/ui/util/t;

    .line 50
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 57
    const v1, 0x7f0300d4

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 58
    const v1, 0x7f0f032f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->e:Landroid/widget/ImageView;

    .line 59
    const v1, 0x7f0f032e

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->d:Landroid/widget/ImageView;

    .line 60
    const v1, 0x7f0f0113

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->c:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    .line 62
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->c:Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    new-instance v3, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment$1;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment$1;-><init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)V

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->setTapListener(Lcom/yelp/android/ui/widgets/ScaleWebImageView$c;)V

    .line 72
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v3, "extra.photo"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Photo;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->b:Lcom/yelp/android/serializable/Photo;

    .line 73
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->b()V

    .line 75
    new-instance v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment$2;-><init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-object v0
.end method
