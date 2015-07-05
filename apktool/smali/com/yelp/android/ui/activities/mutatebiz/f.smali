.class public Lcom/yelp/android/ui/activities/mutatebiz/f;
.super Ljava/lang/Object;
.source "AddressUtils.java"


# direct methods
.method static a(Landroid/location/Address;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 37
    invoke-virtual {p0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {v1, v1}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 41
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    invoke-virtual {v1}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v0

    .line 44
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 45
    invoke-virtual {p0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_2
    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;Landroid/location/Address;)Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v2

    :goto_0
    if-gt v0, v2, :cond_1

    .line 17
    invoke-virtual {p1, v0}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 21
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_1
    return-object v1
.end method

.method public static varargs a(Landroid/location/Address;[Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 51
    .line 52
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    .line 53
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 54
    invoke-virtual {p0, v0, v3}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 52
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_1
    return-void
.end method

.method public static a(Landroid/location/Address;Landroid/location/Address;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v0

    invoke-virtual {p1}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 62
    :goto_0
    invoke-virtual {p0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v2

    if-gt v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p0, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 61
    goto :goto_0

    .line 65
    :cond_1
    return v0
.end method

.method public static b(Ljava/lang/CharSequence;Landroid/location/Address;)Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/f;->a(Ljava/lang/CharSequence;Landroid/location/Address;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 31
    :cond_0
    invoke-static {p1}, Lcom/yelp/android/ui/activities/mutatebiz/f;->a(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    return-object v0
.end method
