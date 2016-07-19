.class public Lcom/yelp/android/serializable/Ranking;
.super Lcom/yelp/android/serializable/_Ranking;
.source "Ranking.java"

# interfaces
.implements Lcom/yelp/android/serializable/DisplayableAsUserBadge;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/Ranking;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/yelp/android/serializable/Ranking$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Ranking$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Ranking;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Ranking;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Ranking;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Ranking;->a(Landroid/os/Parcel;)V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Ranking;->m:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 92
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/Ranking;->o:Z

    .line 93
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 97
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Ranking;->a(Lorg/json/JSONObject;)V

    .line 98
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 99
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Ranking;->n()I

    move-result v1

    .line 100
    const v2, 0x7f0701b2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/appdata/AppData;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/serializable/Ranking;->m:Ljava/lang/String;

    .line 101
    const v2, 0x7f0701b3

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/appdata/AppData;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Ranking;->n:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Ranking;->l()[I

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/services/f;->a([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/Ranking;->o:Z

    .line 103
    return-void
.end method

.method public bridge synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Ranking;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Ranking;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Ranking;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/yelp/android/serializable/Ranking;->o:Z

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Ranking;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Ranking;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/serializable/Ranking;->m:Ljava/lang/String;

    return-object v0
.end method

.method public j_()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/yelp/android/serializable/Ranking;->g:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yelp/android/serializable/Ranking;->n:Ljava/lang/String;

    return-object v0
.end method

.method public k_()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/yelp/android/serializable/Ranking;->f:I

    return v0
.end method

.method public bridge synthetic l()[I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Ranking;->l()[I

    move-result-object v0

    return-object v0
.end method

.method public l_()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/yelp/android/serializable/Ranking;->i:I

    return v0
.end method

.method public bridge synthetic m()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Ranking;->m()I

    move-result v0

    return v0
.end method

.method public m_()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/yelp/android/serializable/Ranking;->h:I

    return v0
.end method

.method public bridge synthetic n()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_Ranking;->n()I

    move-result v0

    return v0
.end method

.method public n_()I
    .locals 2

    .prologue
    .line 64
    iget v0, p0, Lcom/yelp/android/serializable/Ranking;->i:I

    iget v1, p0, Lcom/yelp/android/serializable/Ranking;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Ranking;->writeToParcel(Landroid/os/Parcel;I)V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/serializable/Ranking;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/yelp/android/serializable/Ranking;->o:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 85
    return-void
.end method
