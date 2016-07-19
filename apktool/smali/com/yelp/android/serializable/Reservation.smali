.class public Lcom/yelp/android/serializable/Reservation;
.super Lcom/yelp/android/serializable/_Reservation;
.source "Reservation.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/serializable/Reservation$Provider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/_Reservation;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/yelp/android/serializable/Reservation;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/a",
            "<",
            "Lcom/yelp/android/serializable/Reservation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/yelp/android/serializable/Reservation$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Reservation$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Reservation;->CREATOR:Lcom/yelp/android/serializable/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Reservation;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Reservation;)I
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yelp/android/serializable/Reservation;->a:Ljava/util/Date;

    .line 98
    iget-object v1, p1, Lcom/yelp/android/serializable/Reservation;->a:Ljava/util/Date;

    .line 99
    if-ne v0, v1, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0

    .line 102
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    goto :goto_0

    .line 105
    :cond_1
    if-nez v0, :cond_2

    .line 106
    const/4 v0, -0x1

    goto :goto_0

    .line 108
    :cond_2
    if-nez v1, :cond_3

    .line 109
    const/4 v0, 0x1

    goto :goto_0

    .line 111
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "What does it mean? What does it mean?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/yelp/android/serializable/Reservation;->k:I

    .line 72
    return-void
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Reservation;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/yelp/android/serializable/Reservation;->i:Ljava/lang/String;

    .line 68
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
    .line 21
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Reservation;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/serializable/Reservation;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Reservation;->e()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic c()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->c()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 21
    check-cast p1, Lcom/yelp/android/serializable/Reservation;

    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Reservation;->a(Lcom/yelp/android/serializable/Reservation;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic d()I
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->d()I

    move-result v0

    return v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Z
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->e()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 84
    instance-of v1, p1, Lcom/yelp/android/serializable/Reservation;

    if-nez v1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    check-cast p1, Lcom/yelp/android/serializable/Reservation;

    .line 88
    iget-object v1, p0, Lcom/yelp/android/serializable/Reservation;->a:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/yelp/android/serializable/Reservation;->a:Ljava/util/Date;

    iget-object v2, p1, Lcom/yelp/android/serializable/Reservation;->a:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yelp/android/serializable/Reservation;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/yelp/android/serializable/Reservation;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l()Ljava/util/List;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->l()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic m()Ljava/util/Date;
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Lcom/yelp/android/serializable/_Reservation;->m()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Reservation;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
