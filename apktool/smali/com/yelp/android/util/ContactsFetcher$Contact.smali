.class public abstract Lcom/yelp/android/util/ContactsFetcher$Contact;
.super Ljava/lang/Object;
.source "ContactsFetcher.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mEmail:Ljava/lang/String;

.field protected mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmail(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->mEmail:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lcom/yelp/android/util/ContactsFetcher$Contact;->loadEmail(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->mEmail:Ljava/lang/String;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0, p1}, Lcom/yelp/android/util/ContactsFetcher$Contact;->loadName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->mName:Ljava/lang/String;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0, p1}, Lcom/yelp/android/util/ContactsFetcher$Contact;->loadPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->mBitmap:Landroid/graphics/Bitmap;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected abstract loadEmail(Landroid/content/Context;)Ljava/lang/String;
.end method

.method protected abstract loadName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method protected abstract loadPhoto(Landroid/content/Context;)Landroid/graphics/Bitmap;
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->mEmail:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->mName:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->mBitmap:Landroid/graphics/Bitmap;

    .line 89
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 83
    return-void
.end method
