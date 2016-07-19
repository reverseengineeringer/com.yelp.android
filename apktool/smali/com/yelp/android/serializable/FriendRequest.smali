.class public Lcom/yelp/android/serializable/FriendRequest;
.super Lcom/yelp/android/serializable/_FriendRequest;
.source "FriendRequest.java"

# interfaces
.implements Lcom/yelp/android/serializable/DisplayableAsUserBadge;


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/a",
            "<",
            "Lcom/yelp/android/serializable/FriendRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/yelp/android/serializable/FriendRequest$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/FriendRequest$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/FriendRequest;->CREATOR:Lcom/yelp/android/serializable/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yelp/android/serializable/_FriendRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/yelp/android/serializable/FriendRequest;->j()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ad()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_FriendRequest;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic a(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_FriendRequest;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/yelp/android/serializable/FriendRequest;->j()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_FriendRequest;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 20
    if-ne p0, p1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v0

    .line 23
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 24
    goto :goto_0

    .line 26
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/FriendRequest;

    if-nez v2, :cond_3

    move v0, v1

    .line 27
    goto :goto_0

    .line 29
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/FriendRequest;

    .line 30
    iget-object v2, p0, Lcom/yelp/android/serializable/FriendRequest;->c:Lcom/yelp/android/serializable/User;

    if-nez v2, :cond_4

    .line 31
    iget-object v2, p1, Lcom/yelp/android/serializable/FriendRequest;->c:Lcom/yelp/android/serializable/User;

    if-eqz v2, :cond_0

    move v0, v1

    .line 32
    goto :goto_0

    .line 34
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/FriendRequest;->c:Lcom/yelp/android/serializable/User;

    iget-object v3, p1, Lcom/yelp/android/serializable/FriendRequest;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/User;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 35
    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/yelp/android/serializable/FriendRequest;->j()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->h()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 12
    .line 14
    iget-object v0, p0, Lcom/yelp/android/serializable/FriendRequest;->c:Lcom/yelp/android/serializable/User;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 15
    return v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/FriendRequest;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/yelp/android/serializable/FriendRequest;->j()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_FriendRequest;->j()Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method

.method public j_()I
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/yelp/android/serializable/FriendRequest;->j()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->j_()I

    move-result v0

    return v0
.end method

.method public bridge synthetic k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_FriendRequest;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k_()I
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/yelp/android/serializable/FriendRequest;->j()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->k_()I

    move-result v0

    return v0
.end method

.method public l_()I
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/yelp/android/serializable/FriendRequest;->j()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->M()I

    move-result v0

    return v0
.end method

.method public m_()I
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/yelp/android/serializable/FriendRequest;->j()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->m_()I

    move-result v0

    return v0
.end method

.method public n_()I
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/yelp/android/serializable/FriendRequest;->j()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->n_()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_FriendRequest;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
