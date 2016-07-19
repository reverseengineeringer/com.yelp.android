.class public Lcom/yelp/android/serializable/Passport;
.super Lcom/yelp/android/serializable/_Passport;
.source "Passport.java"

# interfaces
.implements Lcom/yelp/android/serializable/DisplayableAsUserBadge;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/Passport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private l:Lcom/yelp/android/serializable/FeatureSet;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/yelp/android/serializable/Passport$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Passport$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Passport;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Passport;-><init>()V

    .line 21
    new-instance v0, Lcom/yelp/android/serializable/FeatureSet;

    invoke-direct {v0}, Lcom/yelp/android/serializable/FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/Passport;->l:Lcom/yelp/android/serializable/FeatureSet;

    .line 22
    return-void
.end method

.method protected static a(Lcom/yelp/android/appdata/webrequests/co;)Lcom/yelp/android/serializable/Passport;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lcom/yelp/android/serializable/Passport;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Passport;-><init>()V

    .line 31
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/co;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/Passport;->c:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/co;->r()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/Passport;->m:Ljava/lang/String;

    .line 33
    return-object v0
.end method

.method public static a(ZIIILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 156
    const-string/jumbo v0, ""

    .line 158
    if-nez p0, :cond_0

    .line 159
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    .line 162
    :cond_0
    if-nez p2, :cond_1

    .line 165
    const v0, 0x7f08001f

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p4, v0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 167
    :cond_1
    if-nez p1, :cond_2

    if-lez p2, :cond_2

    .line 169
    const v0, 0x7f080032

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p4, v0, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_2
    const v0, 0x7f070482

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p4, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(ZLcom/yelp/android/serializable/YelpBusinessReview;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->y()I

    move-result v0

    .line 134
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->x()I

    move-result v1

    .line 135
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->g()I

    move-result v2

    .line 137
    invoke-static {p0, v0, v1, v2, p2}, Lcom/yelp/android/serializable/Passport;->a(ZIIILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yelp/android/serializable/Passport;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Passport;->a(Landroid/os/Parcel;)V

    .line 82
    const-class v0, Lcom/yelp/android/serializable/FeatureSet;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeatureSet;

    iput-object v0, p0, Lcom/yelp/android/serializable/Passport;->l:Lcom/yelp/android/serializable/FeatureSet;

    .line 83
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Passport;->a(Lorg/json/JSONObject;)V

    .line 88
    iget-object v0, p0, Lcom/yelp/android/serializable/Passport;->l:Lcom/yelp/android/serializable/FeatureSet;

    iget-object v1, p0, Lcom/yelp/android/serializable/Passport;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/FeatureSet;->a(Ljava/util/List;)V

    .line 89
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/serializable/Passport;->l:Lcom/yelp/android/serializable/FeatureSet;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/FeatureSet;->a(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yelp/android/serializable/Passport;->b:Lcom/yelp/android/serializable/Photo;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/yelp/android/serializable/Passport;->b:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->f()Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Passport;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Passport;->l()[I

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/services/f;->a([I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yelp/android/serializable/Passport;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Passport;->q()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Passport;->q()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->f()Ljava/lang/String;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Passport;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic j_()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->j_()I

    move-result v0

    return v0
.end method

.method public bridge synthetic k()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->k()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k_()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->k_()I

    move-result v0

    return v0
.end method

.method public bridge synthetic l()[I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->l()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l_()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->l_()I

    move-result v0

    return v0
.end method

.method public bridge synthetic m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m_()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->m_()I

    move-result v0

    return v0
.end method

.method public bridge synthetic n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n_()I
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Passport;->m_()I

    move-result v0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Passport;->l_()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic q()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->q()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Passport;->writeToParcel(Landroid/os/Parcel;I)V

    .line 76
    iget-object v0, p0, Lcom/yelp/android/serializable/Passport;->l:Lcom/yelp/android/serializable/FeatureSet;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 77
    return-void
.end method
