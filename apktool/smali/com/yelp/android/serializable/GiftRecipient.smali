.class public Lcom/yelp/android/serializable/GiftRecipient;
.super Lcom/yelp/android/serializable/_GiftRecipient;
.source "GiftRecipient.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/serializable/GiftRecipient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/yelp/android/serializable/GiftRecipient$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/GiftRecipient$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/GiftRecipient;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/yelp/android/serializable/_GiftRecipient;-><init>()V

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/serializable/GiftRecipient$1;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/yelp/android/serializable/GiftRecipient;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/GiftRecipient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p2, p3, p5, p4}, Lcom/yelp/android/serializable/_GiftRecipient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p1, Lcom/yelp/android/serializable/GiftRecipient;->e:Ljava/util/UUID;

    iput-object v0, p0, Lcom/yelp/android/serializable/GiftRecipient;->e:Ljava/util/UUID;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/yelp/android/serializable/_GiftRecipient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/GiftRecipient;->e:Ljava/util/UUID;

    .line 25
    return-void
.end method


# virtual methods
.method public a()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/yelp/android/serializable/GiftRecipient;->e:Ljava/util/UUID;

    return-object v0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_GiftRecipient;->a(Landroid/os/Parcel;)V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/GiftRecipient;->e:Ljava/util/UUID;

    .line 60
    return-void
.end method

.method public bridge synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_GiftRecipient;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_GiftRecipient;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_GiftRecipient;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_GiftRecipient;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_GiftRecipient;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 78
    if-ne p0, p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 81
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 82
    goto :goto_0

    .line 84
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/GiftRecipient;

    if-nez v2, :cond_3

    move v0, v1

    .line 85
    goto :goto_0

    .line 87
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/GiftRecipient;

    .line 88
    iget-object v2, p0, Lcom/yelp/android/serializable/GiftRecipient;->e:Ljava/util/UUID;

    if-nez v2, :cond_4

    .line 89
    iget-object v2, p1, Lcom/yelp/android/serializable/GiftRecipient;->e:Ljava/util/UUID;

    if-eqz v2, :cond_0

    move v0, v1

    .line 90
    goto :goto_0

    .line 92
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/GiftRecipient;->e:Ljava/util/UUID;

    iget-object v3, p1, Lcom/yelp/android/serializable/GiftRecipient;->e:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 93
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 70
    .line 72
    iget-object v0, p0, Lcom/yelp/android/serializable/GiftRecipient;->e:Ljava/util/UUID;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 73
    return v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/GiftRecipient;->e:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_GiftRecipient;->writeToParcel(Landroid/os/Parcel;I)V

    .line 65
    iget-object v0, p0, Lcom/yelp/android/serializable/GiftRecipient;->e:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    return-void
.end method
