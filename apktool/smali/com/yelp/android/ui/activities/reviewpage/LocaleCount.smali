.class public Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;
.super Ljava/lang/Object;
.source "LocaleCount.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mCount:I

.field public final mLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/af;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/reviewpage/af;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;->mLocale:Ljava/util/Locale;

    .line 26
    iput p2, p0, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;->mCount:I

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;->mLocale:Ljava/util/Locale;

    .line 21
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;->mCount:I

    .line 22
    return-void
.end method

.method public static listToMap(Ljava/util/ArrayList;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    if-nez p0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    .line 68
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 69
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;

    .line 70
    iget-object v3, v0, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;->mLocale:Ljava/util/Locale;

    iget v0, v0, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;->mCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 72
    goto :goto_0
.end method

.method public static mapToList(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    .line 57
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 59
    new-instance v3, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;

    invoke-direct {v3, v0}, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;-><init>(Ljava/util/Map$Entry;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 61
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;->mLocale:Ljava/util/Locale;

    invoke-static {p1, v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->writeLocaleToParcel(Landroid/os/Parcel;Ljava/util/Locale;)V

    .line 50
    iget v0, p0, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    return-void
.end method
