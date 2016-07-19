.class public Lcom/yelp/android/ui/activities/categorypicker/e;
.super Ljava/lang/Object;
.source "CategoryPickerUtils.java"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "cs"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "da"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "de"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "en"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "es"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "fi"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "fr"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "it"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "nb"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "nl"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "sv"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "tr"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/activities/categorypicker/e;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SingleCategory::",
            "Lcom/yelp/android/serializable/BizCategory;",
            ">(",
            "Ljava/util/ArrayList",
            "<TSingleCategory;>;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 48
    const-string/jumbo v1, "extra.category"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 49
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->K()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    sget v1, Lcom/yelp/android/co/a$j;->display_category_subcategory_format:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 57
    :goto_0
    sget-object v3, Lcom/yelp/android/ui/activities/categorypicker/e;->a:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 58
    sget-object v3, Lcom/yelp/android/ui/activities/categorypicker/e;->a:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 59
    const/4 v1, 0x1

    .line 62
    :cond_0
    return v1

    .line 57
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
