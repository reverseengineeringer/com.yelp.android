.class public Lcom/yelp/android/ui/activities/photoviewer/a;
.super Lcom/yelp/android/ui/util/l;
.source "PhotoPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/photoviewer/a$1;,
        Lcom/yelp/android/ui/activities/photoviewer/a$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final b:Ljava/util/Map;
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

.field private c:Lcom/yelp/android/ui/activities/photoviewer/a$a;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/yelp/android/serializable/YelpBusiness;

.field private i:Z

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/activities/photoviewer/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/l;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/l;-><init>(Landroid/support/v4/app/l;)V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->i:Z

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->f:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->e:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->g:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->b:Ljava/util/Map;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->j:I

    .line 78
    iput-object p2, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->h:Lcom/yelp/android/serializable/YelpBusiness;

    .line 79
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 387
    const-string/jumbo v0, "Modifying the media list resulted in not having a unique identifier for every item"

    .line 389
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 393
    const-string/jumbo v2, "PhotoPagerAdapter"

    invoke-static {v2, v0, v1}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 396
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 4

    .prologue
    const/4 v0, -0x2

    .line 164
    instance-of v1, p1, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;

    if-eqz v1, :cond_1

    .line 165
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 186
    :cond_0
    :goto_0
    return v0

    .line 168
    :cond_1
    check-cast p1, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;

    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/photoviewer/MediaBaseFragment;->k()Lcom/yelp/android/serializable/Media;

    move-result-object v2

    .line 169
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 172
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 177
    if-eqz v2, :cond_0

    .line 181
    sget-object v3, Lcom/yelp/android/serializable/Media$MediaType;->AD:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v2, v3}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->i:Z

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 186
    goto :goto_0
.end method

.method public a()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 207
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->h:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v1, :cond_0

    .line 208
    const-string/jumbo v1, "Business Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->h:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :cond_0
    const-string/jumbo v1, " mAdCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    const-string/jumbo v1, " mAdIndices: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    const-string/jumbo v1, " mMediaList size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    const-string/jumbo v1, " mMediaList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    const-string/jumbo v1, " mPagerItems size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    const-string/jumbo v1, " mPagerItems: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    invoke-static {}, Lcom/yelp/android/au/a;->e()Lcom/yelp/android/au/a;

    move-result-object v1

    iget-object v1, v1, Lcom/yelp/android/au/a;->c:Lcom/crashlytics/android/core/e;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/core/e;->a(Ljava/lang/String;)V

    .line 225
    invoke-super {p0}, Lcom/yelp/android/ui/util/l;->a()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->h:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;

    move-result-object v1

    .line 127
    :cond_0
    :goto_0
    return-object v1

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_6

    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 97
    :goto_1
    if-eqz v0, :cond_5

    .line 98
    sget-object v2, Lcom/yelp/android/serializable/Media$MediaType;->AD:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v2}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    check-cast v0, Lcom/yelp/android/serializable/PhotoAdsResponse;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->a(Lcom/yelp/android/serializable/PhotoAdsResponse;)Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;

    move-result-object v1

    goto :goto_0

    .line 100
    :cond_2
    sget-object v2, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v2}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 101
    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->a(Lcom/yelp/android/serializable/Photo;)Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    move-result-object v1

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->c:Lcom/yelp/android/ui/activities/photoviewer/a$a;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->a(Lcom/yelp/android/ui/activities/photoviewer/a$a;)V

    goto :goto_0

    .line 104
    :cond_3
    sget-object v2, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v2}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 105
    check-cast v0, Lcom/yelp/android/serializable/Video;

    .line 108
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Video;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;

    .line 109
    if-nez v1, :cond_0

    .line 110
    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/a$1;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Video;->c()Lcom/yelp/android/serializable/Video$Provider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Video$Provider;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 116
    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;->a(Lcom/yelp/android/serializable/Video;)Lcom/yelp/android/ui/activities/photoviewer/BrightcoveVideoFragment;

    move-result-object v1

    .line 119
    :goto_2
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->c:Lcom/yelp/android/ui/activities/photoviewer/a$a;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->a(Lcom/yelp/android/ui/activities/photoviewer/a$a;)V

    .line 120
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Video;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 112
    :pswitch_0
    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;->a(Lcom/yelp/android/serializable/Video;)Lcom/yelp/android/ui/activities/photoviewer/OoyalaVideoFragment;

    move-result-object v1

    goto :goto_2

    .line 124
    :cond_4
    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->a(Lcom/yelp/android/serializable/Photo;)Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    move-result-object v1

    goto :goto_0

    .line 127
    :cond_5
    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->a(Lcom/yelp/android/serializable/Photo;)Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    move-result-object v1

    goto :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_1

    .line 110
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;

    return-object v0
.end method

.method public a(ILcom/yelp/android/serializable/Media;)V
    .locals 3

    .prologue
    .line 287
    invoke-static {}, Lcom/yelp/android/au/a;->e()Lcom/yelp/android/au/a;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/au/a;->c:Lcom/crashlytics/android/core/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting media at index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/e;->a(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->f:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, p1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 299
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 300
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 302
    goto :goto_0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/a;->i()V

    .line 305
    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/l;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 195
    if-eqz v0, :cond_0

    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v1}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Media;)V
    .locals 3

    .prologue
    .line 329
    invoke-static {}, Lcom/yelp/android/au/a;->e()Lcom/yelp/android/au/a;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/au/a;->c:Lcom/crashlytics/android/core/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Adding media to end of list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/e;->a(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->d:Ljava/util/Map;

    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/a;->i()V

    .line 334
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/photoviewer/a$a;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->c:Lcom/yelp/android/ui/activities/photoviewer/a$a;

    .line 362
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
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
    .line 271
    invoke-static {}, Lcom/yelp/android/au/a;->e()Lcom/yelp/android/au/a;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/au/a;->c:Lcom/crashlytics/android/core/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting media list to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/e;->a(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 273
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->d:Ljava/util/Map;

    .line 276
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 277
    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->d:Ljava/util/Map;

    sget-object v3, Lcom/yelp/android/ui/activities/photoviewer/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/a;->i()V

    .line 280
    return-void
.end method

.method public b()I
    .locals 2

    .prologue
    .line 230
    iget v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->j:I

    .line 231
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 235
    const/16 v0, 0x3e8

    .line 242
    :cond_0
    :goto_0
    return v0

    .line 238
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->h:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v1, :cond_0

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b(ILcom/yelp/android/serializable/Media;)V
    .locals 3

    .prologue
    .line 315
    invoke-static {}, Lcom/yelp/android/au/a;->e()Lcom/yelp/android/au/a;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/au/a;->c:Lcom/crashlytics/android/core/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Adding photo ad at index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/e;->a(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->d:Ljava/util/Map;

    sget-object v1, Lcom/yelp/android/ui/activities/photoviewer/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :goto_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/a;->i()V

    .line 326
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Lcom/yelp/android/serializable/Media;)Z
    .locals 3

    .prologue
    .line 344
    invoke-static {}, Lcom/yelp/android/au/a;->e()Lcom/yelp/android/au/a;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/au/a;->c:Lcom/crashlytics/android/core/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Removing media: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/e;->a(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 347
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 348
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/a;->i()V

    .line 349
    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public d(I)J
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 141
    sget-object v0, Lcom/yelp/android/ui/activities/photoviewer/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    int-to-long v0, v0

    .line 149
    :goto_0
    return-wide v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 144
    if-nez v0, :cond_1

    .line 146
    const-string/jumbo v0, "Object in media list does not have a unique id."

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    sget-object v0, Lcom/yelp/android/ui/activities/photoviewer/a;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public e(I)Lcom/yelp/android/serializable/Media;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 266
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/LoadingItem;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/photoviewer/LoadingItem;-><init>()V

    goto :goto_0
.end method

.method public e()Ljava/util/Collection;
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
    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->i:Z

    .line 370
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/a;->c()V

    .line 371
    return-void
.end method

.method public f(I)V
    .locals 3

    .prologue
    .line 337
    invoke-static {}, Lcom/yelp/android/au/a;->e()Lcom/yelp/android/au/a;

    move-result-object v0

    iget-object v0, v0, Lcom/yelp/android/au/a;->c:Lcom/crashlytics/android/core/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Removing photo ad at position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/e;->a(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 339
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/photoviewer/a;->i()V

    .line 341
    return-void
.end method

.method public g()Ljava/util/List;
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
    .line 380
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public g(I)V
    .locals 0

    .prologue
    .line 357
    iput p1, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->j:I

    .line 358
    return-void
.end method

.method public h(I)Z
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/a;->h:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/a;->b()I

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
