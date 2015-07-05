.class public abstract enum Lcom/yelp/android/util/Holiday;
.super Ljava/lang/Enum;
.source "Holiday.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/util/Holiday;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/util/Holiday;

.field public static final enum APRILFOOLS:Lcom/yelp/android/util/Holiday;

.field public static final enum CHRISTMAS:Lcom/yelp/android/util/Holiday;

.field public static final enum HALLOWEEN:Lcom/yelp/android/util/Holiday;

.field public static final enum NORMAL:Lcom/yelp/android/util/Holiday;

.field public static final enum PRIDE_WEEKEND:Lcom/yelp/android/util/Holiday;

.field public static final enum STPATRICKS:Lcom/yelp/android/util/Holiday;

.field public static final enum THANKSGIVING:Lcom/yelp/android/util/Holiday;

.field public static final enum VALENTINES:Lcom/yelp/android/util/Holiday;

.field public static final enum WORLD_CUP:Lcom/yelp/android/util/Holiday;

.field public static mForcedHoliday:Lcom/yelp/android/util/Holiday;

.field private static mPrideBegins:Ljava/util/Calendar;

.field private static mPrideEnds:Ljava/util/Calendar;

.field private static mThanksgivingBegins:Ljava/util/Calendar;

.field private static mThanksgivingEnds:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x5

    .line 12
    new-instance v0, Lcom/yelp/android/util/Holiday$1;

    const-string/jumbo v1, "VALENTINES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/Holiday$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/util/Holiday;->VALENTINES:Lcom/yelp/android/util/Holiday;

    .line 24
    new-instance v0, Lcom/yelp/android/util/Holiday$2;

    const-string/jumbo v1, "STPATRICKS"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/util/Holiday$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/util/Holiday;->STPATRICKS:Lcom/yelp/android/util/Holiday;

    .line 36
    new-instance v0, Lcom/yelp/android/util/Holiday$3;

    const-string/jumbo v1, "APRILFOOLS"

    invoke-direct {v0, v1, v7}, Lcom/yelp/android/util/Holiday$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/util/Holiday;->APRILFOOLS:Lcom/yelp/android/util/Holiday;

    .line 48
    new-instance v0, Lcom/yelp/android/util/Holiday$4;

    const-string/jumbo v1, "HALLOWEEN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/Holiday$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/util/Holiday;->HALLOWEEN:Lcom/yelp/android/util/Holiday;

    .line 61
    new-instance v0, Lcom/yelp/android/util/Holiday$5;

    const-string/jumbo v1, "THANKSGIVING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/Holiday$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/util/Holiday;->THANKSGIVING:Lcom/yelp/android/util/Holiday;

    .line 78
    new-instance v0, Lcom/yelp/android/util/Holiday$6;

    const-string/jumbo v1, "CHRISTMAS"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/util/Holiday$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/util/Holiday;->CHRISTMAS:Lcom/yelp/android/util/Holiday;

    .line 91
    new-instance v0, Lcom/yelp/android/util/Holiday$7;

    const-string/jumbo v1, "WORLD_CUP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/Holiday$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/util/Holiday;->WORLD_CUP:Lcom/yelp/android/util/Holiday;

    .line 105
    new-instance v0, Lcom/yelp/android/util/Holiday$8;

    const-string/jumbo v1, "PRIDE_WEEKEND"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/util/Holiday$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/util/Holiday;->PRIDE_WEEKEND:Lcom/yelp/android/util/Holiday;

    .line 122
    new-instance v0, Lcom/yelp/android/util/Holiday$9;

    const-string/jumbo v1, "NORMAL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/Holiday$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/util/Holiday;->NORMAL:Lcom/yelp/android/util/Holiday;

    .line 11
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/yelp/android/util/Holiday;

    const/4 v1, 0x0

    sget-object v2, Lcom/yelp/android/util/Holiday;->VALENTINES:Lcom/yelp/android/util/Holiday;

    aput-object v2, v0, v1

    sget-object v1, Lcom/yelp/android/util/Holiday;->STPATRICKS:Lcom/yelp/android/util/Holiday;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/util/Holiday;->APRILFOOLS:Lcom/yelp/android/util/Holiday;

    aput-object v1, v0, v7

    const/4 v1, 0x3

    sget-object v2, Lcom/yelp/android/util/Holiday;->HALLOWEEN:Lcom/yelp/android/util/Holiday;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/yelp/android/util/Holiday;->THANKSGIVING:Lcom/yelp/android/util/Holiday;

    aput-object v2, v0, v1

    sget-object v1, Lcom/yelp/android/util/Holiday;->CHRISTMAS:Lcom/yelp/android/util/Holiday;

    aput-object v1, v0, v3

    const/4 v1, 0x6

    sget-object v2, Lcom/yelp/android/util/Holiday;->WORLD_CUP:Lcom/yelp/android/util/Holiday;

    aput-object v2, v0, v1

    sget-object v1, Lcom/yelp/android/util/Holiday;->PRIDE_WEEKEND:Lcom/yelp/android/util/Holiday;

    aput-object v1, v0, v5

    const/16 v1, 0x8

    sget-object v2, Lcom/yelp/android/util/Holiday;->NORMAL:Lcom/yelp/android/util/Holiday;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/util/Holiday;->$VALUES:[Lcom/yelp/android/util/Holiday;

    .line 138
    sput-object v6, Lcom/yelp/android/util/Holiday;->mThanksgivingBegins:Ljava/util/Calendar;

    .line 139
    sput-object v6, Lcom/yelp/android/util/Holiday;->mThanksgivingEnds:Ljava/util/Calendar;

    .line 140
    sput-object v6, Lcom/yelp/android/util/Holiday;->mPrideBegins:Ljava/util/Calendar;

    .line 141
    sput-object v6, Lcom/yelp/android/util/Holiday;->mPrideEnds:Ljava/util/Calendar;

    .line 151
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 152
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v4}, Ljava/util/Calendar;->set(III)V

    .line 154
    :goto_0
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 155
    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 157
    :cond_0
    const/16 v0, 0x8

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->add(II)V

    .line 160
    const/4 v0, -0x3

    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->add(II)V

    .line 161
    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    sput-object v0, Lcom/yelp/android/util/Holiday;->mThanksgivingBegins:Ljava/util/Calendar;

    .line 165
    const/4 v0, 0x6

    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->add(II)V

    .line 166
    sput-object v1, Lcom/yelp/android/util/Holiday;->mThanksgivingEnds:Ljava/util/Calendar;

    .line 169
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 170
    invoke-virtual {v1, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 172
    const/16 v0, 0x1e

    :goto_1
    if-lez v0, :cond_1

    .line 173
    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->set(II)V

    .line 174
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 175
    invoke-virtual {v1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    sput-object v0, Lcom/yelp/android/util/Holiday;->mPrideEnds:Ljava/util/Calendar;

    .line 176
    const/4 v0, -0x2

    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->add(II)V

    .line 177
    sput-object v1, Lcom/yelp/android/util/Holiday;->mPrideBegins:Ljava/util/Calendar;

    .line 181
    :cond_1
    return-void

    .line 172
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/yelp/android/util/Holiday$1;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/util/Holiday;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/yelp/android/util/Holiday;->mThanksgivingBegins:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/yelp/android/util/Holiday;->mThanksgivingEnds:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Lcom/yelp/android/util/Holiday;->isPrideThemeAvailableForCountry()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/yelp/android/util/Holiday;->mPrideBegins:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/yelp/android/util/Holiday;->mPrideEnds:Ljava/util/Calendar;

    return-object v0
.end method

.method public static getHolidayTheme(Ljava/util/Date;)I
    .locals 7

    .prologue
    .line 211
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 214
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 215
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 216
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 218
    const-class v0, Lcom/yelp/android/util/Holiday;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .line 219
    invoke-virtual {v4}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/Holiday;

    .line 220
    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/util/Holiday;->isActive(III)Z

    move-result v6

    if-nez v6, :cond_0

    .line 221
    invoke-virtual {v4, v0}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    :cond_1
    const/4 v0, 0x0

    .line 225
    invoke-virtual {v4}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/Holiday;

    .line 226
    invoke-virtual {v0}, Lcom/yelp/android/util/Holiday;->getThemeResource()I

    move-result v0

    goto :goto_1

    .line 229
    :cond_2
    sget-object v1, Lcom/yelp/android/util/Holiday;->mForcedHoliday:Lcom/yelp/android/util/Holiday;

    if-eqz v1, :cond_3

    .line 230
    sget-object v0, Lcom/yelp/android/util/Holiday;->mForcedHoliday:Lcom/yelp/android/util/Holiday;

    invoke-virtual {v0}, Lcom/yelp/android/util/Holiday;->getThemeResource()I

    move-result v0

    .line 233
    :cond_3
    return v0
.end method

.method private static isPrideThemeAvailableForCountry()Z
    .locals 2

    .prologue
    .line 186
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 187
    const-string/jumbo v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "AT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "BE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "CZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "DK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "FI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "FR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "DE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "IE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "IT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "NL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "NO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "PL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "PT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "CH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "TR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "CA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "MX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/util/Holiday;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/yelp/android/util/Holiday;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/Holiday;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/util/Holiday;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/yelp/android/util/Holiday;->$VALUES:[Lcom/yelp/android/util/Holiday;

    invoke-virtual {v0}, [Lcom/yelp/android/util/Holiday;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/util/Holiday;

    return-object v0
.end method


# virtual methods
.method public abstract getThemeResource()I
.end method

.method public abstract isActive(III)Z
.end method
