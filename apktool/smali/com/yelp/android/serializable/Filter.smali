.class public Lcom/yelp/android/serializable/Filter;
.super Ljava/lang/Object;
.source "Filter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yelp/android/serializable/Filter;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEAL_ALIAS:Ljava/lang/String; = "ActiveDeal"

.field public static final EXTRA_FILTER:Ljava/lang/String; = "extra.filter"

.field public static final HOT_NEW_ALIAS:Ljava/lang/String; = "NewBusiness"


# instance fields
.field protected mAttributes:Lcom/yelp/android/serializable/AttributeFilters;

.field private mBoolPrices:[Z

.field protected mDistance:Lcom/yelp/android/serializable/at;

.field protected mOpenAtTime:Ljava/util/Calendar;

.field protected mSort:Lcom/yelp/android/serializable/Filter$Sort;

.field protected mState:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/serializable/Filter$BusinessState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 363
    new-instance v0, Lcom/yelp/android/serializable/as;

    invoke-direct {v0}, Lcom/yelp/android/serializable/as;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Filter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-class v0, Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/Filter;->mState:Ljava/util/EnumSet;

    .line 49
    sget-object v0, Lcom/yelp/android/serializable/Filter$Sort;->Default:Lcom/yelp/android/serializable/Filter$Sort;

    iput-object v0, p0, Lcom/yelp/android/serializable/Filter;->mSort:Lcom/yelp/android/serializable/Filter$Sort;

    .line 50
    new-instance v0, Lcom/yelp/android/serializable/at;

    const-string/jumbo v1, ""

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/serializable/at;-><init>(Ljava/lang/String;D)V

    iput-object v0, p0, Lcom/yelp/android/serializable/Filter;->mDistance:Lcom/yelp/android/serializable/at;

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yelp/android/serializable/Filter;->mBoolPrices:[Z

    .line 54
    new-instance v0, Lcom/yelp/android/serializable/AttributeFilters;

    invoke-direct {v0}, Lcom/yelp/android/serializable/AttributeFilters;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/Filter;->mAttributes:Lcom/yelp/android/serializable/AttributeFilters;

    .line 55
    return-void

    .line 51
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/AttributeFilters;)V
    .locals 6

    .prologue
    .line 116
    const-class v0, Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/yelp/android/serializable/at;

    const-string/jumbo v0, ""

    const-wide/16 v4, 0x0

    invoke-direct {v3, v0, v4, v5}, Lcom/yelp/android/serializable/at;-><init>(Ljava/lang/String;D)V

    sget-object v4, Lcom/yelp/android/serializable/Filter$Sort;->Default:Lcom/yelp/android/serializable/Filter$Sort;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/serializable/Filter;-><init>(Ljava/util/EnumSet;Ljava/util/Calendar;Lcom/yelp/android/serializable/at;Lcom/yelp/android/serializable/Filter$Sort;Lcom/yelp/android/serializable/AttributeFilters;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/Filter;)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iget-object v0, p1, Lcom/yelp/android/serializable/Filter;->mBoolPrices:[Z

    iput-object v0, p0, Lcom/yelp/android/serializable/Filter;->mBoolPrices:[Z

    .line 98
    iget-object v0, p1, Lcom/yelp/android/serializable/Filter;->mState:Ljava/util/EnumSet;

    iput-object v0, p0, Lcom/yelp/android/serializable/Filter;->mState:Ljava/util/EnumSet;

    .line 99
    iget-object v0, p1, Lcom/yelp/android/serializable/Filter;->mDistance:Lcom/yelp/android/serializable/at;

    iput-object v0, p0, Lcom/yelp/android/serializable/Filter;->mDistance:Lcom/yelp/android/serializable/at;

    .line 100
    iget-object v0, p1, Lcom/yelp/android/serializable/Filter;->mSort:Lcom/yelp/android/serializable/Filter$Sort;

    iput-object v0, p0, Lcom/yelp/android/serializable/Filter;->mSort:Lcom/yelp/android/serializable/Filter$Sort;

    .line 101
    iget-object v0, p1, Lcom/yelp/android/serializable/Filter;->mAttributes:Lcom/yelp/android/serializable/AttributeFilters;

    iput-object v0, p0, Lcom/yelp/android/serializable/Filter;->mAttributes:Lcom/yelp/android/serializable/AttributeFilters;

    .line 102
    iget-object v0, p1, Lcom/yelp/android/serializable/Filter;->mOpenAtTime:Ljava/util/Calendar;

    iput-object v0, p0, Lcom/yelp/android/serializable/Filter;->mOpenAtTime:Ljava/util/Calendar;

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/util/EnumSet;Ljava/util/Calendar;Lcom/yelp/android/serializable/at;Lcom/yelp/android/serializable/Filter$Sort;Lcom/yelp/android/serializable/AttributeFilters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/serializable/Filter$BusinessState;",
            ">;",
            "Ljava/util/Calendar;",
            "Lcom/yelp/android/serializable/at;",
            "Lcom/yelp/android/serializable/Filter$Sort;",
            "Lcom/yelp/android/serializable/AttributeFilters;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/yelp/android/serializable/Filter;->mState:Ljava/util/EnumSet;

    .line 79
    sget-object v0, Lcom/yelp/android/serializable/Filter$BusinessState;->OPEN:Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iput-object p2, p0, Lcom/yelp/android/serializable/Filter;->mOpenAtTime:Ljava/util/Calendar;

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Filter;->buildBooleanPrices()V

    .line 85
    if-nez p3, :cond_1

    new-instance p3, Lcom/yelp/android/serializable/at;

    const-string/jumbo v0, ""

    const-wide/16 v2, 0x0

    invoke-direct {p3, v0, v2, v3}, Lcom/yelp/android/serializable/at;-><init>(Ljava/lang/String;D)V

    :cond_1
    iput-object p3, p0, Lcom/yelp/android/serializable/Filter;->mDistance:Lcom/yelp/android/serializable/at;

    .line 87
    if-nez p4, :cond_2

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Please use one of the known sorting values "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/serializable/Filter$Sort;->values()[Lcom/yelp/android/serializable/Filter$Sort;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_2
    iput-object p4, p0, Lcom/yelp/android/serializable/Filter;->mSort:Lcom/yelp/android/serializable/Filter$Sort;

    .line 93
    iput-object p5, p0, Lcom/yelp/android/serializable/Filter;->mAttributes:Lcom/yelp/android/serializable/AttributeFilters;

    .line 94
    return-void
.end method

.method private getDisplayString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->mBoolPrices:[Z

    array-length v3, v0

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    .line 158
    iget-object v4, p0, Lcom/yelp/android/serializable/Filter;->mBoolPrices:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_0

    .line 159
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Lcom/yelp/android/appdata/LocaleSettings;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    .line 165
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->mState:Ljava/util/EnumSet;

    sget-object v4, Lcom/yelp/android/serializable/Filter$BusinessState;->OPEN:Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-virtual {v0, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->mOpenAtTime:Ljava/util/Calendar;

    if-nez v0, :cond_6

    .line 166
    const v0, 0x7f070278

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->mDistance:Lcom/yelp/android/serializable/at;

    iget-wide v4, v0, Lcom/yelp/android/serializable/at;->b:D

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_3

    .line 176
    const v0, 0x7f070680

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/yelp/android/serializable/Filter;->mDistance:Lcom/yelp/android/serializable/at;

    iget-object v5, v5, Lcom/yelp/android/serializable/at;->a:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->mSort:Lcom/yelp/android/serializable/Filter$Sort;

    sget-object v4, Lcom/yelp/android/serializable/Filter$Sort;->Default:Lcom/yelp/android/serializable/Filter$Sort;

    if-eq v0, v4, :cond_4

    .line 180
    const v0, 0x7f070279

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/yelp/android/serializable/Filter;->mSort:Lcom/yelp/android/serializable/Filter$Sort;

    invoke-virtual {v5, v3}, Lcom/yelp/android/serializable/Filter$Sort;->getLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->mAttributes:Lcom/yelp/android/serializable/AttributeFilters;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributeFilters;->getSuggestedFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AttributeFilter;

    .line 185
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributeFilter;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 186
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributeFilter;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 167
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->mState:Ljava/util/EnumSet;

    sget-object v4, Lcom/yelp/android/serializable/Filter$BusinessState;->OPEN:Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-virtual {v0, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->mOpenAtTime:Ljava/util/Calendar;

    if-eqz v0, :cond_2

    .line 168
    const v0, 0x7f07025f

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/serializable/Filter;->mOpenAtTime:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v0, v4, v6, v7}, Lcom/yelp/android/services/r;->a(Ljava/lang/String;Ljava/util/TimeZone;J)Ljava/lang/String;

    move-result-object v0

    .line 172
    const v4, 0x7f070434

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 190
    :cond_7
    const/4 v0, 0x0

    .line 191
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 192
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 194
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 195
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0e000e

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, ", "

    invoke-static {v7, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    aput-object v0, v6, v10

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 200
    :cond_8
    return-object v0
.end method

.method public static getFilterDisplayString(Lcom/yelp/android/serializable/Filter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Lcom/yelp/android/serializable/Filter;->getFilterDisplayString(Lcom/yelp/android/serializable/Filter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFilterDisplayString(Lcom/yelp/android/serializable/Filter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    if-eqz p0, :cond_0

    .line 213
    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/Filter;->getDisplayString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private nullableObjectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 356
    if-nez p1, :cond_1

    .line 357
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 359
    :goto_0
    return v0

    .line 357
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 359
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected buildBooleanPrices()V
    .locals 5

    .prologue
    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/yelp/android/serializable/Filter;->mBoolPrices:[Z

    .line 64
    sget-object v0, Lcom/yelp/android/serializable/Filter$BusinessState;->$:Lcom/yelp/android/serializable/Filter$BusinessState;

    sget-object v1, Lcom/yelp/android/serializable/Filter$BusinessState;->$$:Lcom/yelp/android/serializable/Filter$BusinessState;

    sget-object v2, Lcom/yelp/android/serializable/Filter$BusinessState;->$$$:Lcom/yelp/android/serializable/Filter$BusinessState;

    sget-object v3, Lcom/yelp/android/serializable/Filter$BusinessState;->$$$$:Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Filter$BusinessState;

    .line 68
    iget-object v3, p0, Lcom/yelp/android/serializable/Filter;->mBoolPrices:[Z

    iget-object v4, p0, Lcom/yelp/android/serializable/Filter;->mState:Ljava/util/EnumSet;

    invoke-virtual {v4, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    aput-boolean v0, v3, v1

    .line 69
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 324
    if-ne p0, p1, :cond_1

    .line 350
    :cond_0
    :goto_0
    return v0

    .line 327
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 328
    goto :goto_0

    .line 330
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/Filter;

    if-nez v2, :cond_3

    move v0, v1

    .line 331
    goto :goto_0

    .line 333
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/Filter;

    .line 334
    iget-object v2, p0, Lcom/yelp/android/serializable/Filter;->mAttributes:Lcom/yelp/android/serializable/AttributeFilters;

    iget-object v3, p1, Lcom/yelp/android/serializable/Filter;->mAttributes:Lcom/yelp/android/serializable/AttributeFilters;

    invoke-direct {p0, v2, v3}, Lcom/yelp/android/serializable/Filter;->nullableObjectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 335
    goto :goto_0

    .line 337
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/Filter;->mState:Ljava/util/EnumSet;

    iget-object v3, p1, Lcom/yelp/android/serializable/Filter;->mState:Ljava/util/EnumSet;

    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 338
    goto :goto_0

    .line 340
    :cond_5
    iget-object v2, p0, Lcom/yelp/android/serializable/Filter;->mDistance:Lcom/yelp/android/serializable/at;

    iget-object v3, p1, Lcom/yelp/android/serializable/Filter;->mDistance:Lcom/yelp/android/serializable/at;

    invoke-direct {p0, v2, v3}, Lcom/yelp/android/serializable/Filter;->nullableObjectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 341
    goto :goto_0

    .line 343
    :cond_6
    iget-object v2, p0, Lcom/yelp/android/serializable/Filter;->mSort:Lcom/yelp/android/serializable/Filter$Sort;

    iget-object v3, p1, Lcom/yelp/android/serializable/Filter;->mSort:Lcom/yelp/android/serializable/Filter$Sort;

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 344
    goto :goto_0

    .line 346
    :cond_7
    iget-object v2, p0, Lcom/yelp/android/serializable/Filter;->mOpenAtTime:Ljava/util/Calendar;

    iget-object v3, p1, Lcom/yelp/android/serializable/Filter;->mOpenAtTime:Ljava/util/Calendar;

    invoke-direct {p0, v2, v3}, Lcom/yelp/android/serializable/Filter;->nullableObjectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 347
    goto :goto_0
.end method

.method public getAttributes()Lcom/yelp/android/serializable/AttributeFilters;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->mAttributes:Lcom/yelp/android/serializable/AttributeFilters;

    return-object v0
.end method

.method public getBusinessState()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/serializable/Filter$BusinessState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->mState:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getDisplayString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/yelp/android/serializable/Filter;->getDisplayString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistance()Lcom/yelp/android/serializable/at;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->mDistance:Lcom/yelp/android/serializable/at;

    return-object v0
.end method

.method public getOpenTime()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->mOpenAtTime:Ljava/util/Calendar;

    return-object v0
.end method

.method public getPrices()[Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->mBoolPrices:[Z

    return-object v0
.end method

.method public getPricesOnly()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/yelp/android/serializable/Filter;->mBoolPrices:[Z

    array-length v2, v2

    :goto_0
    if-ge v0, v2, :cond_1

    .line 139
    iget-object v3, p0, Lcom/yelp/android/serializable/Filter;->mBoolPrices:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    .line 140
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_1
    return-object v1
.end method

.method public getSort()Lcom/yelp/android/serializable/Filter$Sort;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->mSort:Lcom/yelp/android/serializable/Filter$Sort;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 311
    .line 313
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->mAttributes:Lcom/yelp/android/serializable/AttributeFilters;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 315
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yelp/android/serializable/Filter;->mState:Ljava/util/EnumSet;

    invoke-virtual {v2}, Ljava/util/EnumSet;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 316
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->mDistance:Lcom/yelp/android/serializable/at;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 318
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yelp/android/serializable/Filter;->mSort:Lcom/yelp/android/serializable/Filter$Sort;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 319
    return v0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->mAttributes:Lcom/yelp/android/serializable/AttributeFilters;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->mDistance:Lcom/yelp/android/serializable/at;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/at;->hashCode()I

    move-result v0

    goto :goto_1

    .line 318
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/serializable/Filter;->mSort:Lcom/yelp/android/serializable/Filter$Sort;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Filter$Sort;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->mState:Ljava/util/EnumSet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 238
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->mOpenAtTime:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 239
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->mDistance:Lcom/yelp/android/serializable/at;

    iget-object v0, v0, Lcom/yelp/android/serializable/at;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->mDistance:Lcom/yelp/android/serializable/at;

    iget-wide v0, v0, Lcom/yelp/android/serializable/at;->b:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 241
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->mSort:Lcom/yelp/android/serializable/Filter$Sort;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Filter$Sort;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget-object v0, p0, Lcom/yelp/android/serializable/Filter;->mAttributes:Lcom/yelp/android/serializable/AttributeFilters;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 243
    return-void
.end method
