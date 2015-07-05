.class public Lcom/yelp/android/appdata/LocaleSettings;
.super Ljava/lang/Object;
.source "LocaleSettings.java"


# static fields
.field public static final a:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:[Ljava/util/Locale;

.field public static final d:[Ljava/util/Locale;

.field public static final e:[Ljava/util/Locale;

.field public static final f:[Ljava/util/Locale;

.field public static final g:[Ljava/util/Locale;

.field public static final h:[Ljava/util/Locale;

.field public static final i:[Ljava/util/Locale;

.field public static final j:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Currency;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:[Ljava/util/Locale;


# instance fields
.field private l:Landroid/content/SharedPreferences;

.field private m:Ljava/util/Locale;

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 96
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    .line 97
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    sget-object v1, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    sget-object v1, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    sget-object v1, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    sget-object v1, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "BE"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "CH"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "ES"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "IE"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "NL"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "AT"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "AU"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "SE"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "DK"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "NO"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "FI"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "SG"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "PL"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "TR"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "NZ"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "CZ"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "BR"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "PT"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "MX"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "JP"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "AR"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "CL"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "HK"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "TW"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "MY"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    const-string/jumbo v1, "PH"

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/yelp/android/appdata/z;

    invoke-direct {v1}, Lcom/yelp/android/appdata/z;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    .line 159
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    sget-object v1, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    sget-object v1, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    sget-object v1, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    sget-object v1, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "cs"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "da"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "de"

    const-string/jumbo v3, "AT"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "de"

    const-string/jumbo v3, "CH"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "en"

    const-string/jumbo v3, "AU"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "en"

    const-string/jumbo v3, "BE"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "en"

    const-string/jumbo v3, "HK"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "en"

    const-string/jumbo v3, "IE"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "en"

    const-string/jumbo v3, "MY"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "en"

    const-string/jumbo v3, "NZ"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "en"

    const-string/jumbo v3, "PH"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "en"

    const-string/jumbo v3, "SG"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "es"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "es"

    const-string/jumbo v3, "AR"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "es"

    const-string/jumbo v3, "CL"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "es"

    const-string/jumbo v3, "MX"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "es"

    const-string/jumbo v3, "US"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "fi"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "fil"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "fr"

    const-string/jumbo v3, "BE"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "fr"

    const-string/jumbo v3, "CA"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "fr"

    const-string/jumbo v3, "CH"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "it"

    const-string/jumbo v3, "CH"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "ja"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "ms"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "nb"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "nl"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "nl"

    const-string/jumbo v3, "BE"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "pl"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "pt"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "pt"

    const-string/jumbo v3, "PT"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "sv"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "sv"

    const-string/jumbo v3, "FI"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "tl"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "tr"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "zh"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "zh"

    const-string/jumbo v3, "CN"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "zh"

    const-string/jumbo v3, "TW"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 204
    new-array v0, v7, [Ljava/util/Locale;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    aput-object v1, v0, v5

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yelp/android/appdata/LocaleSettings;->c:[Ljava/util/Locale;

    .line 208
    new-array v0, v6, [Ljava/util/Locale;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/appdata/LocaleSettings;->d:[Ljava/util/Locale;

    .line 212
    new-array v0, v6, [Ljava/util/Locale;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/appdata/LocaleSettings;->e:[Ljava/util/Locale;

    .line 217
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/util/Locale;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "AR"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "BE"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "BR"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v7

    const/4 v1, 0x3

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, ""

    const-string/jumbo v4, "CL"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, ""

    const-string/jumbo v4, "HK"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, ""

    const-string/jumbo v4, "IE"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, ""

    const-string/jumbo v4, "IT"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, ""

    const-string/jumbo v4, "NO"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, ""

    const-string/jumbo v4, "NZ"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, ""

    const-string/jumbo v4, "PH"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, ""

    const-string/jumbo v4, "PT"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, ""

    const-string/jumbo v4, "SE"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, ""

    const-string/jumbo v4, "TR"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, ""

    const-string/jumbo v4, "TW"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v3, "es"

    const-string/jumbo v4, "US"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/appdata/LocaleSettings;->f:[Ljava/util/Locale;

    .line 240
    new-array v0, v7, [Ljava/util/Locale;

    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    aput-object v1, v0, v5

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "HK"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    sput-object v0, Lcom/yelp/android/appdata/LocaleSettings;->g:[Ljava/util/Locale;

    .line 245
    new-array v0, v6, [Ljava/util/Locale;

    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yelp/android/appdata/LocaleSettings;->h:[Ljava/util/Locale;

    .line 249
    new-array v0, v7, [Ljava/util/Locale;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    aput-object v1, v0, v5

    sget-object v1, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yelp/android/appdata/LocaleSettings;->i:[Ljava/util/Locale;

    .line 254
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/yelp/android/appdata/LocaleSettings;->j:Ljava/util/TreeMap;

    .line 255
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->j:Ljava/util/TreeMap;

    const-string/jumbo v1, "CH"

    const-string/jumbo v2, "USD"

    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    new-array v0, v7, [Ljava/util/Locale;

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "HK"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "TW"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v6

    sput-object v0, Lcom/yelp/android/appdata/LocaleSettings;->k:[Ljava/util/Locale;

    .line 261
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/LocaleSettings;->a(Ljava/util/Locale;)V

    .line 290
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 463
    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 375
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 376
    invoke-static {v0}, Lcom/yelp/android/appdata/LocaleSettings;->d(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 378
    :cond_0
    return-object v1
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 467
    const-string/jumbo v0, "HK"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/yelp/android/appdata/LocaleSettings;->l:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 627
    const-string/jumbo v0, "yelp.android.locale"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/LocaleSettings;->l:Landroid/content/SharedPreferences;

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/LocaleSettings;->l:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static final c(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 2

    .prologue
    .line 382
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    invoke-virtual {v0, p0}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 384
    sget-object v1, Lcom/yelp/android/appdata/LocaleSettings;->b:Ljava/util/TreeSet;

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 385
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 388
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 471
    invoke-static {p0}, Lcom/yelp/android/appdata/LocaleSettings;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method private static d(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 368
    const-string/jumbo v0, "category_%s"

    .line 369
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 370
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 476
    sget-object v2, Lcom/yelp/android/appdata/LocaleSettings;->k:[Ljava/util/Locale;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 477
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 478
    const/4 v0, 0x1

    .line 481
    :cond_0
    return v0

    .line 476
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 490
    sget-object v2, Lcom/yelp/android/appdata/LocaleSettings;->g:[Ljava/util/Locale;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 491
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 492
    const/4 v0, 0x1

    .line 495
    :cond_0
    return v0

    .line 490
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 503
    sget-object v2, Lcom/yelp/android/appdata/LocaleSettings;->h:[Ljava/util/Locale;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 504
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 505
    const/4 v0, 0x1

    .line 508
    :cond_0
    return v0

    .line 503
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private l()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 418
    sget-object v2, Lcom/yelp/android/appdata/LocaleSettings;->c:[Ljava/util/Locale;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 419
    iget-object v5, p0, Lcom/yelp/android/appdata/LocaleSettings;->m:Ljava/util/Locale;

    invoke-virtual {v5, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/appdata/LocaleSettings;->m:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 424
    :cond_0
    :goto_1
    return v0

    .line 418
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/yelp/android/appdata/LocaleSettings;->m:Ljava/util/Locale;

    invoke-static {v0}, Lcom/yelp/android/appdata/LocaleSettings;->c(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    .line 364
    invoke-static {v0}, Lcom/yelp/android/appdata/LocaleSettings;->d(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 556
    invoke-virtual {p0}, Lcom/yelp/android/appdata/LocaleSettings;->g()Ljava/lang/String;

    move-result-object v2

    .line 557
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 558
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 560
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 527
    if-nez p2, :cond_0

    .line 528
    const-string/jumbo v0, ""

    .line 531
    :goto_0
    return-object v0

    .line 530
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 531
    sget v1, Lcom/yelp/android/bf/j;->dollar_signs:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/yelp/android/appdata/LocaleSettings;->n:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 535
    if-nez p2, :cond_0

    .line 536
    const-string/jumbo v0, ""

    .line 550
    :goto_0
    return-object v0

    .line 544
    :cond_0
    if-eqz p3, :cond_1

    .line 545
    new-instance v0, Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 547
    sget v2, Lcom/yelp/android/bf/j;->dollar_signs:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/LocaleSettings;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 550
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/appdata/LocaleSettings;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 583
    invoke-direct {p0, p2}, Lcom/yelp/android/appdata/LocaleSettings;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 584
    const-string/jumbo v1, "distance_unit"

    invoke-virtual {p1}, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 585
    return-void
.end method

.method public a(Ljava/util/Locale;)V
    .locals 2

    .prologue
    .line 309
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v0, p0, Lcom/yelp/android/appdata/LocaleSettings;->m:Ljava/util/Locale;

    .line 310
    if-nez p1, :cond_0

    .line 311
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 313
    :cond_0
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Valid locale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->i(Ljava/lang/Object;Ljava/lang/String;)I

    .line 315
    iput-object p1, p0, Lcom/yelp/android/appdata/LocaleSettings;->m:Ljava/util/Locale;

    .line 318
    :cond_1
    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/LocaleSettings;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/LocaleSettings;->n:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 404
    sget-object v0, Lcom/yelp/android/appdata/x;->a:[I

    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/LocaleSettings;->b(Landroid/content/Context;)Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 410
    invoke-direct {p0}, Lcom/yelp/android/appdata/LocaleSettings;->l()Z

    move-result v0

    :goto_0
    return v0

    .line 406
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 408
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Landroid/content/Context;)Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;
    .locals 3

    .prologue
    .line 588
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->AUTOMATIC:Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->ordinal()I

    move-result v0

    .line 589
    invoke-direct {p0, p1}, Lcom/yelp/android/appdata/LocaleSettings;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "distance_unit"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 591
    invoke-static {}, Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;->values()[Lcom/yelp/android/appdata/LocaleSettings$DISTANCE_UNIT;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public b(Ljava/util/Locale;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 322
    const-string/jumbo v0, "$"

    .line 324
    :try_start_0
    sget-object v0, Lcom/yelp/android/appdata/LocaleSettings;->j:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Currency;

    .line 325
    if-nez v0, :cond_6

    .line 326
    invoke-static {p1}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0

    move-object v1, v0

    .line 328
    :goto_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 331
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 335
    :cond_0
    :goto_1
    invoke-virtual {v1, p1}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 340
    const-string/jumbo v2, "\u00a4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 341
    invoke-virtual {v1}, Ljava/util/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v0

    .line 343
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 344
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Currency;->getSymbol(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 347
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 349
    :cond_3
    const-string/jumbo v0, "$"

    .line 359
    :cond_4
    :goto_2
    return-object v0

    .line 332
    :cond_5
    sget-object v0, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/util/Locale;)Ljava/util/Currency;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    sget-object p1, Ljava/util/Locale;->CANADA:Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 351
    :catch_0
    move-exception v0

    .line 356
    const-string/jumbo v0, "$"

    goto :goto_2

    :cond_6
    move-object v1, v0

    goto :goto_0
.end method

.method public c()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 392
    sget-object v2, Lcom/yelp/android/appdata/LocaleSettings;->d:[Ljava/util/Locale;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 393
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/appdata/LocaleSettings;->m:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 394
    const/4 v0, 0x1

    .line 397
    :cond_0
    return v0

    .line 392
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public d()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 428
    sget-object v2, Lcom/yelp/android/appdata/LocaleSettings;->e:[Ljava/util/Locale;

    .line 429
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    .line 430
    iget-object v5, p0, Lcom/yelp/android/appdata/LocaleSettings;->m:Ljava/util/Locale;

    invoke-virtual {v5, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/appdata/LocaleSettings;->m:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 435
    :cond_0
    :goto_1
    return v0

    .line 429
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public e()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 439
    sget-object v2, Lcom/yelp/android/appdata/LocaleSettings;->f:[Ljava/util/Locale;

    .line 440
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 446
    iget-object v5, p0, Lcom/yelp/android/appdata/LocaleSettings;->m:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 459
    :cond_0
    :goto_1
    return v0

    .line 454
    :cond_1
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/yelp/android/appdata/LocaleSettings;->m:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 440
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public f()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 512
    iget-object v1, p0, Lcom/yelp/android/appdata/LocaleSettings;->m:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 514
    sget-object v3, Lcom/yelp/android/appdata/LocaleSettings;->i:[Ljava/util/Locale;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 515
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 516
    const/4 v0, 0x1

    .line 519
    :cond_0
    return v0

    .line 514
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/yelp/android/appdata/LocaleSettings;->n:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/yelp/android/appdata/LocaleSettings;->m:Ljava/util/Locale;

    return-object v0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/yelp/android/appdata/LocaleSettings;->m:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/yelp/android/appdata/LocaleSettings;->m:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/yelp/android/appdata/LocaleSettings;->m:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
