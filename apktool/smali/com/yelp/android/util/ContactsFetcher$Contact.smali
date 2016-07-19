.class public abstract Lcom/yelp/android/util/ContactsFetcher$Contact;
.super Ljava/lang/Object;
.source "ContactsFetcher.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/util/ContactsFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Contact"
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Ljava/lang/String;

.field protected c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p0, p1}, Lcom/yelp/android/util/ContactsFetcher$Contact;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->a:Ljava/lang/String;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->b:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->a:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->c:Landroid/graphics/Bitmap;

    .line 90
    return-void
.end method

.method protected abstract b(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0, p1}, Lcom/yelp/android/util/ContactsFetcher$Contact;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->b:Ljava/lang/String;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract d(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public e(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->c:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0, p1}, Lcom/yelp/android/util/ContactsFetcher$Contact;->f(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->c:Landroid/graphics/Bitmap;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected abstract f(Landroid/content/Context;)Landroid/graphics/Bitmap;
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/util/ContactsFetcher$Contact;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 84
    return-void
.end method
