.class public Lcom/yelp/android/serializable/User;
.super Lcom/yelp/android/serializable/_User;
.source "User.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/yelp/android/serializable/DisplayableAsUserBadge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/serializable/User$Gender;,
        Lcom/yelp/android/serializable/User$EliteYear;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/a",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private V:[Lcom/yelp/android/serializable/RankTitle;

.field private W:Lcom/yelp/android/serializable/YelpCheckIn;

.field private X:Lcom/yelp/android/serializable/User$Gender;

.field private Y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Z:[Lcom/yelp/android/serializable/User$EliteYear;

.field private aa:Lcom/yelp/android/serializable/FeatureSet;

.field private ab:Z

.field private ac:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 592
    new-instance v0, Lcom/yelp/android/serializable/User$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/User$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/a;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/yelp/android/serializable/_User;-><init>()V

    .line 250
    invoke-static {}, Lcom/yelp/android/serializable/RankTitle$Rank;->values()[Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/yelp/android/serializable/RankTitle;

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->V:[Lcom/yelp/android/serializable/RankTitle;

    .line 310
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/serializable/User;->x:I

    .line 311
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->Y:Ljava/util/Map;

    .line 312
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/yelp/android/serializable/User$EliteYear;

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->Z:[Lcom/yelp/android/serializable/User$EliteYear;

    .line 313
    new-instance v0, Lcom/yelp/android/serializable/FeatureSet;

    invoke-direct {v0}, Lcom/yelp/android/serializable/FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->aa:Lcom/yelp/android/serializable/FeatureSet;

    .line 314
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)V
    .locals 3

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/yelp/android/serializable/User;-><init>()V

    .line 292
    iput-object p1, p0, Lcom/yelp/android/serializable/User;->f:Ljava/lang/String;

    .line 293
    iput p7, p0, Lcom/yelp/android/serializable/User;->y:I

    .line 294
    iput p8, p0, Lcom/yelp/android/serializable/User;->A:I

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    new-instance v1, Lcom/yelp/android/serializable/Photo$TempPhoto;

    const/4 v2, 0x0

    invoke-direct {v1, p9, v2}, Lcom/yelp/android/serializable/Photo$TempPhoto;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    iput-object v0, p0, Lcom/yelp/android/serializable/User;->b:Ljava/util/List;

    .line 300
    sget-object v0, Lcom/yelp/android/serializable/User$Gender;->MALE:Lcom/yelp/android/serializable/User$Gender;

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->X:Lcom/yelp/android/serializable/User$Gender;

    .line 301
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/serializable/User;->x:I

    .line 302
    iput-object p2, p0, Lcom/yelp/android/serializable/User;->k:Ljava/lang/String;

    .line 303
    iput-object p3, p0, Lcom/yelp/android/serializable/User;->n:Ljava/lang/String;

    .line 304
    iput-boolean p6, p0, Lcom/yelp/android/serializable/User;->ab:Z

    .line 305
    iput-object p4, p0, Lcom/yelp/android/serializable/User;->g:Ljava/lang/String;

    .line 306
    iput-object p5, p0, Lcom/yelp/android/serializable/User;->h:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/yelp/android/serializable/DisplayableAsUserBadge;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/yelp/android/serializable/DisplayableAsUserBadge;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 765
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->a()Ljava/lang/String;

    move-result-object v2

    .line 766
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 774
    :goto_0
    return-object v0

    .line 769
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayableAsUserBadge;

    .line 770
    invoke-interface {v0}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 774
    goto :goto_0
.end method

.method public static a([I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->ab()I

    move-result v2

    .line 40
    array-length v3, p0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, p0, v1

    .line 41
    if-ne v4, v2, :cond_1

    .line 42
    const/4 v0, 0x1

    .line 45
    :cond_0
    return v0

    .line 40
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static j()Ljava/util/Date;
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->ab()I

    move-result v1

    .line 56
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 57
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic A()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->A()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic B()[I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->B()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic C()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->C()I

    move-result v0

    return v0
.end method

.method public bridge synthetic D()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->D()I

    move-result v0

    return v0
.end method

.method public bridge synthetic E()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->E()I

    move-result v0

    return v0
.end method

.method public bridge synthetic F()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->F()I

    move-result v0

    return v0
.end method

.method public bridge synthetic G()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->G()I

    move-result v0

    return v0
.end method

.method public bridge synthetic H()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->H()I

    move-result v0

    return v0
.end method

.method public bridge synthetic I()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->I()I

    move-result v0

    return v0
.end method

.method public bridge synthetic J()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->J()I

    move-result v0

    return v0
.end method

.method public bridge synthetic K()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->K()I

    move-result v0

    return v0
.end method

.method public bridge synthetic L()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->L()I

    move-result v0

    return v0
.end method

.method public bridge synthetic M()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->M()I

    move-result v0

    return v0
.end method

.method public bridge synthetic N()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->N()I

    move-result v0

    return v0
.end method

.method public bridge synthetic O()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->O()I

    move-result v0

    return v0
.end method

.method public bridge synthetic P()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->P()I

    move-result v0

    return v0
.end method

.method public bridge synthetic Q()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->Q()I

    move-result v0

    return v0
.end method

.method public bridge synthetic R()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->R()I

    move-result v0

    return v0
.end method

.method public bridge synthetic S()Z
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->S()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic T()Z
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->T()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic U()Z
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->U()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic V()Z
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->V()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic W()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->W()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic X()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->X()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->Y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->Z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yelp/android/serializable/RankTitle$Rank;)Lcom/yelp/android/serializable/RankTitle;
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->V:[Lcom/yelp/android/serializable/RankTitle;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/RankTitle$Rank;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/yelp/android/serializable/User;->ad()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Lcom/yelp/android/serializable/User;->F:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/serializable/User;->F:I

    .line 341
    return-void
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 633
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_User;->a(Landroid/os/Parcel;)V

    .line 634
    sget-object v0, Lcom/yelp/android/serializable/RankTitle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/RankTitle;

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->V:[Lcom/yelp/android/serializable/RankTitle;

    .line 635
    invoke-static {}, Lcom/yelp/android/serializable/User$Gender;->values()[Lcom/yelp/android/serializable/User$Gender;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->X:Lcom/yelp/android/serializable/User$Gender;

    .line 636
    const-class v0, Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->W:Lcom/yelp/android/serializable/YelpCheckIn;

    .line 637
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 638
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 639
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 640
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 641
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->Y:Ljava/util/Map;

    .line 642
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    .line 643
    iget-object v5, p0, Lcom/yelp/android/serializable/User;->Y:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 644
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/yelp/android/serializable/User;->Y:Ljava/util/Map;

    .line 646
    :cond_0
    iget-object v5, p0, Lcom/yelp/android/serializable/User;->Y:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->Y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 649
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->Y:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->Y:Ljava/util/Map;

    .line 651
    :cond_2
    sget-object v0, Lcom/yelp/android/serializable/User$EliteYear;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/User$EliteYear;

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->Z:[Lcom/yelp/android/serializable/User$EliteYear;

    .line 652
    const-class v0, Lcom/yelp/android/serializable/FeatureSet;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeatureSet;

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->aa:Lcom/yelp/android/serializable/FeatureSet;

    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 654
    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/User;->ab:Z

    .line 655
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/User;->ac:I

    .line 656
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpCheckIn;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/yelp/android/serializable/User;->W:Lcom/yelp/android/serializable/YelpCheckIn;

    .line 505
    if-eqz p1, :cond_0

    .line 506
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->j()V

    .line 508
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/yelp/android/serializable/User;->o:Ljava/lang/String;

    .line 512
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 660
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_User;->a(Lorg/json/JSONObject;)V

    .line 662
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    .line 663
    new-instance v3, Lcom/yelp/android/serializable/Passport;

    invoke-direct {v3}, Lcom/yelp/android/serializable/Passport;-><init>()V

    iput-object v3, v0, Lcom/yelp/android/serializable/Photo;->g:Lcom/yelp/android/serializable/Passport;

    .line 664
    iget-object v0, v0, Lcom/yelp/android/serializable/Photo;->g:Lcom/yelp/android/serializable/Passport;

    iget-object v3, p0, Lcom/yelp/android/serializable/User;->f:Ljava/lang/String;

    iput-object v3, v0, Lcom/yelp/android/serializable/Passport;->c:Ljava/lang/String;

    goto :goto_0

    .line 668
    :cond_0
    const-string/jumbo v0, "location_rank_titles"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 669
    if-eqz v2, :cond_3

    .line 670
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v0, v1

    .line 671
    :goto_1
    if-ge v0, v3, :cond_3

    .line 672
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 673
    if-eqz v4, :cond_1

    .line 674
    const-string/jumbo v5, "title"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/yelp/android/serializable/RankTitle$Rank;->rankForString(Ljava/lang/String;)Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v5

    .line 675
    if-nez v5, :cond_2

    .line 671
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 678
    :cond_2
    new-instance v6, Lcom/yelp/android/serializable/RankTitle;

    const-string/jumbo v7, "location_names"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    invoke-static {v7}, Lcom/yelp/parcelgen/JsonUtil;->getStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v7

    const-string/jumbo v8, "location_count"

    invoke-virtual {v4, v8, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v6, v7, v4}, Lcom/yelp/android/serializable/RankTitle;-><init>(Ljava/util/List;I)V

    .line 683
    iget-object v4, p0, Lcom/yelp/android/serializable/User;->V:[Lcom/yelp/android/serializable/RankTitle;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/RankTitle$Rank;->ordinal()I

    move-result v5

    aput-object v6, v4, v5

    goto :goto_2

    .line 688
    :cond_3
    const-string/jumbo v0, "f"

    iget-object v2, p0, Lcom/yelp/android/serializable/User;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 689
    sget-object v0, Lcom/yelp/android/serializable/User$Gender;->FEMALE:Lcom/yelp/android/serializable/User$Gender;

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->X:Lcom/yelp/android/serializable/User$Gender;

    .line 694
    :goto_3
    const-string/jumbo v0, "profile_bio"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 695
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->Y:Ljava/util/Map;

    .line 696
    const-string/jumbo v0, "profile_bio"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 697
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 698
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 700
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 701
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 702
    iget-object v5, p0, Lcom/yelp/android/serializable/User;->Y:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 691
    :cond_4
    sget-object v0, Lcom/yelp/android/serializable/User$Gender;->MALE:Lcom/yelp/android/serializable/User$Gender;

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->X:Lcom/yelp/android/serializable/User$Gender;

    goto :goto_3

    .line 706
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->d:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yelp/android/serializable/User;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 707
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->Y:Ljava/util/Map;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    const v3, 0x7f0705d1

    invoke-virtual {v2, v3}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/serializable/User;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->Y:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 712
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->Y:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->Y:Ljava/util/Map;

    .line 716
    :cond_7
    invoke-virtual {p0}, Lcom/yelp/android/serializable/User;->B()[I

    move-result-object v2

    .line 717
    if-eqz v2, :cond_9

    .line 719
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 721
    array-length v0, v2

    new-array v0, v0, [Lcom/yelp/android/serializable/User$EliteYear;

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->Z:[Lcom/yelp/android/serializable/User$EliteYear;

    .line 722
    array-length v3, v2

    move v0, v1

    :goto_5
    if-ge v0, v3, :cond_8

    .line 723
    iget-object v1, p0, Lcom/yelp/android/serializable/User;->Z:[Lcom/yelp/android/serializable/User$EliteYear;

    new-instance v4, Lcom/yelp/android/serializable/User$EliteYear;

    aget v5, v2, v0

    add-int/lit8 v6, v0, 0x1

    invoke-static {v6}, Lcom/yelp/android/serializable/User$EliteYear$TYPE;->getBadgeByYear(I)Lcom/yelp/android/serializable/User$EliteYear$TYPE;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/yelp/android/serializable/User$EliteYear;-><init>(ILcom/yelp/android/serializable/User$EliteYear$TYPE;)V

    aput-object v4, v1, v0

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 726
    :cond_8
    invoke-static {v2}, Lcom/yelp/android/serializable/User;->a([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/User;->ab:Z

    .line 728
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->aa:Lcom/yelp/android/serializable/FeatureSet;

    iget-object v1, p0, Lcom/yelp/android/serializable/User;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/FeatureSet;->a(Ljava/util/List;)V

    .line 729
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 401
    iput-boolean p1, p0, Lcom/yelp/android/serializable/User;->w:Z

    .line 402
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->aa:Lcom/yelp/android/serializable/FeatureSet;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/FeatureSet;->a(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic aa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->aa()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ab()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->ab()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->ac()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->ad()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ae()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->ae()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic af()Lcom/yelp/android/serializable/PersonalStats;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->af()Lcom/yelp/android/serializable/PersonalStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ag()Ljava/util/List;
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->ag()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/yelp/android/serializable/RankTitle$Rank;)I
    .locals 1

    .prologue
    .line 499
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/User;->a(Lcom/yelp/android/serializable/RankTitle$Rank;)Lcom/yelp/android/serializable/RankTitle;

    move-result-object v0

    .line 500
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankTitle;->a()I

    move-result v0

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 356
    iput p1, p0, Lcom/yelp/android/serializable/User;->ac:I

    .line 357
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 413
    iput-boolean p1, p0, Lcom/yelp/android/serializable/User;->u:Z

    .line 414
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/User;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->f()Ljava/lang/String;

    move-result-object v0

    .line 331
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/yelp/android/serializable/User;->O:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/serializable/User;->O:I

    .line 361
    return-void
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 417
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/yelp/android/serializable/User;->S:I

    .line 418
    return-void

    .line 417
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/yelp/android/serializable/User;->A:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/serializable/User;->A:I

    .line 365
    return-void
.end method

.method public d(Z)V
    .locals 1

    .prologue
    .line 421
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/yelp/android/serializable/User;->R:I

    .line 422
    return-void

    .line 421
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 733
    const/4 v0, 0x0

    return v0
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lcom/yelp/android/serializable/User;->y:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/serializable/User;->y:I

    .line 377
    return-void
.end method

.method public e(Z)V
    .locals 1

    .prologue
    .line 425
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/yelp/android/serializable/User;->T:I

    .line 426
    return-void

    .line 425
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 571
    if-ne p0, p1, :cond_1

    .line 588
    :cond_0
    :goto_0
    return v0

    .line 574
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 575
    goto :goto_0

    .line 577
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/User;

    if-nez v2, :cond_3

    move v0, v1

    .line 578
    goto :goto_0

    .line 580
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/User;

    .line 581
    iget-object v2, p0, Lcom/yelp/android/serializable/User;->f:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 582
    iget-object v2, p1, Lcom/yelp/android/serializable/User;->f:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 583
    goto :goto_0

    .line 585
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/User;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/User;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 586
    goto :goto_0
.end method

.method public f(I)V
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/yelp/android/serializable/User;->G:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/serializable/User;->G:I

    .line 381
    return-void
.end method

.method public f(Z)V
    .locals 0

    .prologue
    .line 515
    iput-boolean p1, p0, Lcom/yelp/android/serializable/User;->v:Z

    .line 516
    return-void
.end method

.method public g(I)V
    .locals 0

    .prologue
    .line 397
    iput p1, p0, Lcom/yelp/android/serializable/User;->N:I

    .line 398
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/yelp/android/serializable/User;->ab:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 563
    .line 565
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 566
    return v0

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->f:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic j_()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->j_()I

    move-result v0

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/yelp/android/serializable/User;->ac:I

    return v0
.end method

.method public bridge synthetic k_()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->k_()I

    move-result v0

    return v0
.end method

.method public l()V
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/yelp/android/serializable/User;->A:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yelp/android/serializable/User;->A:I

    .line 369
    return-void
.end method

.method public l_()I
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lcom/yelp/android/serializable/User;->F:I

    return v0
.end method

.method public m()V
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/yelp/android/serializable/User;->H:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yelp/android/serializable/User;->H:I

    .line 373
    return-void
.end method

.method public bridge synthetic m_()I
    .locals 1

    .prologue
    .line 28
    invoke-super {p0}, Lcom/yelp/android/serializable/_User;->m_()I

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lcom/yelp/android/serializable/User;->x:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n_()I
    .locals 2

    .prologue
    .line 385
    iget v0, p0, Lcom/yelp/android/serializable/User;->F:I

    iget v1, p0, Lcom/yelp/android/serializable/User;->O:I

    add-int/2addr v0, v1

    return v0
.end method

.method public o()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 429
    iget v1, p0, Lcom/yelp/android/serializable/User;->S:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 433
    iget v1, p0, Lcom/yelp/android/serializable/User;->R:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 437
    iget v1, p0, Lcom/yelp/android/serializable/User;->T:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Lcom/yelp/android/serializable/YelpCheckIn;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->W:Lcom/yelp/android/serializable/YelpCheckIn;

    return-object v0
.end method

.method public s()Ljava/util/Date;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->a:Ljava/util/Date;

    return-object v0
.end method

.method public t()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->Y:Ljava/util/Map;

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/User$EliteYear;",
            ">;"
        }
    .end annotation

    .prologue
    .line 464
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->Z:[Lcom/yelp/android/serializable/User$EliteYear;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public v()Lcom/yelp/android/serializable/User$EliteYear;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->Z:[Lcom/yelp/android/serializable/User$EliteYear;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 469
    const/4 v0, 0x0

    .line 471
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->Z:[Lcom/yelp/android/serializable/User$EliteYear;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User$EliteYear;

    goto :goto_0
.end method

.method public w()Z
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->X:Lcom/yelp/android/serializable/User$Gender;

    sget-object v1, Lcom/yelp/android/serializable/User$Gender;->MALE:Lcom/yelp/android/serializable/User$Gender;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 617
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_User;->writeToParcel(Landroid/os/Parcel;I)V

    .line 618
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->V:[Lcom/yelp/android/serializable/RankTitle;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 619
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->X:Lcom/yelp/android/serializable/User$Gender;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User$Gender;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->W:Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 621
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/serializable/User;->Y:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 622
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/serializable/User;->Y:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 623
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 624
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 625
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->Z:[Lcom/yelp/android/serializable/User$EliteYear;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 626
    iget-object v0, p0, Lcom/yelp/android/serializable/User;->aa:Lcom/yelp/android/serializable/FeatureSet;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 627
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/yelp/android/serializable/User;->ab:Z

    aput-boolean v1, v0, v3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 628
    iget v0, p0, Lcom/yelp/android/serializable/User;->ac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    return-void
.end method

.method public x()I
    .locals 1

    .prologue
    .line 491
    sget-object v0, Lcom/yelp/android/serializable/RankTitle$Rank;->REGULAR:Lcom/yelp/android/serializable/RankTitle$Rank;

    invoke-virtual {p0, v0}, Lcom/yelp/android/serializable/User;->b(Lcom/yelp/android/serializable/RankTitle$Rank;)I

    move-result v0

    return v0
.end method

.method public y()V
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lcom/yelp/android/serializable/User;->D:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/yelp/android/serializable/User;->D:I

    .line 520
    return-void
.end method

.method public z()V
    .locals 1

    .prologue
    .line 754
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/serializable/User;->W:Lcom/yelp/android/serializable/YelpCheckIn;

    .line 755
    return-void
.end method
