.class public Lcom/yelp/android/serializable/Video;
.super Lcom/yelp/android/serializable/_Video;
.source "Video.java"

# interfaces
.implements Lcom/yelp/android/serializable/IdentifiableMedia;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/serializable/Video$Provider;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/Video;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private n:Lcom/yelp/android/serializable/Feedback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/yelp/android/serializable/Video$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Video$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Video;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Video;-><init>()V

    .line 70
    new-instance v0, Lcom/yelp/android/serializable/Feedback;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Feedback;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/Video;->n:Lcom/yelp/android/serializable/Feedback;

    .line 71
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Video;->a(Landroid/os/Parcel;)V

    .line 100
    const-class v0, Lcom/yelp/android/serializable/Feedback;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Feedback;

    iput-object v0, p0, Lcom/yelp/android/serializable/Video;->n:Lcom/yelp/android/serializable/Feedback;

    .line 101
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Video;->a(Lorg/json/JSONObject;)V

    .line 94
    new-instance v0, Lcom/yelp/android/serializable/Feedback;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/yelp/android/serializable/Video;->l:I

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/Feedback;-><init>(Ljava/util/List;I)V

    iput-object v0, p0, Lcom/yelp/android/serializable/Video;->n:Lcom/yelp/android/serializable/Feedback;

    .line 95
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/yelp/android/serializable/Video;->k:Z

    .line 165
    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Video;->j()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->a()V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Video;->j()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->b()V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/serializable/Media$MediaType;)Z
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Media$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(Lcom/yelp/android/serializable/b;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 78
    instance-of v1, p1, Lcom/yelp/android/serializable/Video;

    if-nez v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    check-cast p1, Lcom/yelp/android/serializable/Video;

    .line 82
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Video;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Video;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/serializable/Video;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yelp/android/serializable/Video;->b:Lcom/yelp/android/serializable/Passport;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/yelp/android/serializable/Video;->b:Lcom/yelp/android/serializable/Passport;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->p()Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/yelp/android/serializable/Video$Provider;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/yelp/android/serializable/Video;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/serializable/Video$Provider;->access$000(Ljava/lang/String;)Lcom/yelp/android/serializable/Video$Provider;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()I
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->d()I

    move-result v0

    return v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()I
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->e()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 132
    if-ne p0, p1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 136
    goto :goto_0

    .line 138
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/Video;

    if-nez v2, :cond_3

    move v0, v1

    .line 139
    goto :goto_0

    .line 141
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/Video;

    .line 142
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Video;->c()Lcom/yelp/android/serializable/Video$Provider;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Video;->c()Lcom/yelp/android/serializable/Video$Provider;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/Video$Provider;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 143
    goto :goto_0

    .line 145
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/Video;->c:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 146
    iget-object v2, p1, Lcom/yelp/android/serializable/Video;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 147
    goto :goto_0

    .line 149
    :cond_5
    iget-object v2, p0, Lcom/yelp/android/serializable/Video;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/Video;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 150
    goto :goto_0
.end method

.method public bridge synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Ljava/util/Date;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->h()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 124
    .line 126
    iget-object v0, p0, Lcom/yelp/android/serializable/Video;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 127
    return v0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Video;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic i()Lcom/yelp/android/serializable/Passport;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->i()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/yelp/android/serializable/Feedback;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/serializable/Video;->n:Lcom/yelp/android/serializable/Feedback;

    return-object v0
.end method

.method public bridge synthetic k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Video;->c()Lcom/yelp/android/serializable/Video$Provider;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/Video$Provider;->OOYALA:Lcom/yelp/android/serializable/Video$Provider;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Video$Provider;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic n()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->n()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o()Z
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->o()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    invoke-super {p0}, Lcom/yelp/android/serializable/_Video;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Video;->writeToParcel(Landroid/os/Parcel;I)V

    .line 106
    iget-object v0, p0, Lcom/yelp/android/serializable/Video;->n:Lcom/yelp/android/serializable/Feedback;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 107
    return-void
.end method
