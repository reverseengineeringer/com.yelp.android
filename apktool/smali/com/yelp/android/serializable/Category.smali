.class public Lcom/yelp/android/serializable/Category;
.super Ljava/lang/Object;
.source "Category.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/ah",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mDatabaseId:I

.field private mName:Ljava/lang/String;

.field private mNumChildren:I

.field private mParent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/yelp/android/serializable/u;

    invoke-direct {v0}, Lcom/yelp/android/serializable/u;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Category;->CREATOR:Lcom/yelp/android/serializable/ah;

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/Category;)V
    .locals 4

    .prologue
    .line 21
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Category;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Category;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Category;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Category;->getDatabaseId()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/yelp/android/serializable/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/yelp/android/serializable/Category;->mName:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/yelp/android/serializable/Category;->mAlias:Ljava/lang/String;

    .line 27
    iput p3, p0, Lcom/yelp/android/serializable/Category;->mDatabaseId:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/serializable/Category;->mNumChildren:I

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p4}, Lcom/yelp/android/serializable/Category;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/yelp/android/serializable/Category;->mParent:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 142
    if-ne p0, p1, :cond_1

    .line 143
    const/4 v0, 0x1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    if-eqz p1, :cond_0

    .line 148
    instance-of v1, p1, Lcom/yelp/android/serializable/Category;

    if-eqz v1, :cond_0

    .line 151
    check-cast p1, Lcom/yelp/android/serializable/Category;

    .line 152
    iget-object v1, p0, Lcom/yelp/android/serializable/Category;->mAlias:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/yelp/android/serializable/Category;->mAlias:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/serializable/Category;->mAlias:Ljava/lang/String;

    iget-object v1, p1, Lcom/yelp/android/serializable/Category;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/serializable/Category;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabaseId()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/yelp/android/serializable/Category;->mDatabaseId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/serializable/Category;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumChildren()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/yelp/android/serializable/Category;->mNumChildren:I

    return v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/serializable/Category;->mParent:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 130
    .line 132
    iget-object v0, p0, Lcom/yelp/android/serializable/Category;->mAlias:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 133
    return v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Category;->mAlias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setNumChildren(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, Lcom/yelp/android/serializable/Category;->mNumChildren:I

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yelp/android/serializable/Category;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 109
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/yelp/android/serializable/Category;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 111
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/yelp/android/serializable/Category;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/Category;->mAlias:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 114
    const-string/jumbo v1, "category_filter"

    iget-object v2, p0, Lcom/yelp/android/serializable/Category;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    :cond_1
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/serializable/Category;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/yelp/android/serializable/Category;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/yelp/android/serializable/Category;->mParent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget v0, p0, Lcom/yelp/android/serializable/Category;->mDatabaseId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v0, p0, Lcom/yelp/android/serializable/Category;->mNumChildren:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return-void
.end method
