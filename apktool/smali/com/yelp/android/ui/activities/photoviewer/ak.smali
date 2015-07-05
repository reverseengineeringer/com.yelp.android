.class public Lcom/yelp/android/ui/activities/photoviewer/ak;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "PhotoPagerAdapter.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lcom/yelp/android/ui/activities/photoviewer/am;

.field private e:Lcom/yelp/android/serializable/YelpBusiness;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ak;->b:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ak;->a:Ljava/util/Map;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ak;->c:I

    .line 48
    iput-object p2, p0, Lcom/yelp/android/ui/activities/photoviewer/ak;->e:Lcom/yelp/android/serializable/YelpBusiness;

    .line 49
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ak;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;

    return-object v0
.end method

.method public a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ak;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 140
    iput p1, p0, Lcom/yelp/android/ui/activities/photoviewer/ak;->c:I

    .line 141
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/photoviewer/am;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/ak;->d:Lcom/yelp/android/ui/activities/photoviewer/am;

    .line 161
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 136
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/ak;->b:Ljava/util/List;

    .line 137
    return-void
.end method

.method public b(I)Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ak;->e:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/ak;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ak;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ak;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 121
    if-eqz v0, :cond_0

    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v1}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ak;->a:Ljava/util/Map;

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 145
    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ak;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 149
    const v0, 0x7fffffff

    .line 155
    :goto_0
    return v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ak;->e:Lcom/yelp/android/serializable/YelpBusiness;

    if-nez v0, :cond_1

    .line 152
    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ak;->c:I

    goto :goto_0

    .line 155
    :cond_1
    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ak;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/ak;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ak;->e:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;

    move-result-object v1

    .line 87
    :cond_0
    :goto_0
    return-object v1

    .line 56
    :cond_1
    const/4 v0, 0x0

    .line 57
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ak;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ak;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 66
    :cond_2
    if-eqz v0, :cond_3

    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v1}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 67
    check-cast v0, Lcom/yelp/android/serializable/Video;

    .line 70
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ak;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Video;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;

    .line 71
    if-nez v1, :cond_0

    .line 72
    sget-object v2, Lcom/yelp/android/ui/activities/photoviewer/al;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Video;->getProvider()Lcom/yelp/android/serializable/Video$Provider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Video$Provider;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 80
    :goto_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/ak;->d:Lcom/yelp/android/ui/activities/photoviewer/am;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->a(Lcom/yelp/android/ui/activities/photoviewer/am;)V

    .line 81
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/ak;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Video;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 74
    :pswitch_0
    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->a(Lcom/yelp/android/serializable/Video;)Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;

    move-result-object v1

    goto :goto_1

    .line 77
    :pswitch_1
    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->a(Lcom/yelp/android/serializable/Video;)Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;

    move-result-object v1

    goto :goto_1

    .line 85
    :cond_3
    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->a(Lcom/yelp/android/serializable/Photo;)Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    move-result-object v1

    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ak;->d:Lcom/yelp/android/ui/activities/photoviewer/am;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->a(Lcom/yelp/android/ui/activities/photoviewer/am;)V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    instance-of v1, p1, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    if-eqz v1, :cond_2

    .line 101
    check-cast p1, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->a()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    .line 106
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/ak;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 107
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-nez v0, :cond_3

    .line 109
    :cond_1
    const/4 v0, -0x2

    .line 112
    :goto_1
    return v0

    .line 102
    :cond_2
    instance-of v1, p1, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;

    if-eqz v1, :cond_0

    .line 103
    check-cast p1, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->q()Lcom/yelp/android/serializable/Video;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 112
    goto :goto_1
.end method
