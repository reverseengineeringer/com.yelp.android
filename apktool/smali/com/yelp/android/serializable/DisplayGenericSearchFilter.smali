.class public Lcom/yelp/android/serializable/DisplayGenericSearchFilter;
.super Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;
.source "DisplayGenericSearchFilter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/yelp/android/serializable/DisplayGenericSearchFilter;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/DisplayGenericSearchFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/yelp/android/serializable/DisplayGenericSearchFilter$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/DisplayGenericSearchFilter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    if-eqz p0, :cond_4

    .line 34
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    .line 37
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->e()Z

    move-result v3

    if-nez v3, :cond_0

    .line 39
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->a()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "RestaurantsPriceRange2."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 41
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "RestaurantsPriceRange2."

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 44
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/yelp/android/appdata/LocaleSettings;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->c()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->OpenNow:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 51
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->h()Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;

    .line 53
    invoke-virtual {v0}, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 55
    invoke-static {v3}, Lcom/yelp/android/services/f;->a(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v3

    .line 56
    const/16 v4, 0xc

    invoke-virtual {v0}, Lcom/yelp/android/serializable/OpenNowGenericSearchFilter;->g()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->add(II)V

    .line 58
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v4, 0x7f0702b6

    invoke-virtual {v0, v4}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v0, v4, v6, v7}, Lcom/yelp/android/services/f;->a(Ljava/lang/String;Ljava/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    const v4, 0x7f070459

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/yelp/android/appdata/AppData;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 68
    :cond_2
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v3, 0x7f0702ca

    invoke-virtual {v0, v3}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 71
    :cond_3
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 76
    :cond_4
    return-object v1
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;)I
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->f()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->f()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    :cond_1
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0

    .line 83
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->f()Z

    move-result v0

    if-nez v0, :cond_3

    .line 84
    const/4 v0, -0x1

    goto :goto_0

    .line 86
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->h()Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/GenericSearchFilter;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->a(Landroid/os/Parcel;)V

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
    .line 25
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->c()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->c()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Boolean:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->c()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->OpenNow:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->c()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Platform:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->c()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;->Reservation:Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->h()Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/GenericSearchFilter;->a()Lcom/yelp/android/serializable/GenericSearchFilter$FilterType;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 25
    check-cast p1, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;

    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->a(Lcom/yelp/android/serializable/DisplayGenericSearchFilter;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->h()Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/GenericSearchFilter;->c()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->describeContents()I

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->i()Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilter;->i()Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()Z
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->f()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Lcom/yelp/android/serializable/GenericSearchFilter;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->h()Lcom/yelp/android/serializable/GenericSearchFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic i()Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->i()Lcom/yelp/android/serializable/DisplayGenericSearchFilterParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_DisplayGenericSearchFilter;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
