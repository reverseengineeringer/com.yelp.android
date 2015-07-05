.class public Lcom/yelp/android/appdata/n;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field protected final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private final e:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private h:Lcom/yelp/android/appdata/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/yelp/android/appdata/n;->a:Landroid/content/Context;

    .line 53
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 55
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/n;->d:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/yelp/android/appdata/n;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/n;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v4, :cond_1

    .line 57
    :cond_0
    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/yelp/android/appdata/n;->d:Ljava/lang/String;

    .line 60
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/appdata/n;->a(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/appdata/n;->e:Ljava/util/LinkedHashMap;

    .line 62
    const-string/jumbo v0, "YelpWebView/%s Android/%s YelpApp/%s (x-screen-scale %s;)"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/yelp/android/appdata/n;->l()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/yelp/android/appdata/n;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {}, Lcom/yelp/android/appdata/ao;->a()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 67
    const-string/jumbo v2, "Version/1 Yelp/v%s Carrier/%s Model/%s OSBuild/%s Android/%s"

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/appdata/n;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/yelp/android/appdata/BaseYelpApplication;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v5

    iget-object v3, p0, Lcom/yelp/android/appdata/n;->d:Ljava/lang/String;

    aput-object v3, v0, v4

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v3, v0, v6

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v3, v0, v7

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v3, v0, v8

    invoke-virtual {p0, v0}, Lcom/yelp/android/appdata/n;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 82
    iput-object v0, p0, Lcom/yelp/android/appdata/n;->f:Ljava/lang/String;

    .line 83
    iput-object v1, p0, Lcom/yelp/android/appdata/n;->g:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/yelp/android/appdata/o;

    invoke-direct {v0, p1}, Lcom/yelp/android/appdata/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/appdata/n;->h:Lcom/yelp/android/appdata/o;

    .line 85
    return-void
.end method

.method private static a(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 360
    const-string/jumbo v1, "  TypeName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string/jumbo v1, "  SubTypeName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string/jumbo v1, "  Available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 368
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string/jumbo v1, "  Connected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 371
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string/jumbo v1, "  Establishing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 374
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string/jumbo v1, "  Extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/util/Locale;Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {p0, v1}, Lcom/yelp/android/appdata/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/appdata/n;->b:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/yelp/android/appdata/n;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/appdata/n;->c:Ljava/lang/String;

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    const-string/jumbo v2, "ywsid"

    invoke-virtual {v0, v2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string/jumbo v2, "device"

    iget-object v3, p0, Lcom/yelp/android/appdata/n;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string/jumbo v2, "y_device"

    iget-object v3, p0, Lcom/yelp/android/appdata/n;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string/jumbo v2, "device_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string/jumbo v1, "app_version"

    iget-object v2, p0, Lcom/yelp/android/appdata/n;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/yelp/android/appdata/BaseYelpApplication;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v1, Lcom/yelp/android/appdata/LocaleSettings;->a:Ljava/util/TreeSet;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const-string/jumbo v1, "cc"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_0
    const-string/jumbo v1, "lang"

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-object v0
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 443
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)Z
    .locals 1

    .prologue
    .line 455
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/p;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/p;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 264
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    const-string/jumbo v1, "== Yelp Version Info =="

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Yelp Version #: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/yelp/android/appdata/n;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/yelp/android/appdata/BaseYelpApplication;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    const-string/jumbo v1, "== OS Version =="

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Version.Inc: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Version.Rel: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Version.SDK: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Device ID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/yelp/android/appdata/n;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Y Device ID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/yelp/android/appdata/n;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fingerprint: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Tags: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Host: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Time: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v4, Landroid/os/Build;->TIME:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    const-string/jumbo v1, "== Device Manufacturer =="

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Brand: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Device: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Model: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Board: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Display: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    const-string/jumbo v1, "== Carrier =="

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Network Operator: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/yelp/android/appdata/n;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    const-string/jumbo v1, "== Location Info =="

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    const-string/jumbo v1, "Location logging no longer exists."

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 318
    const-string/jumbo v0, "== Current Net Info =="

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    const/4 v1, 0x0

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/appdata/n;->a:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_0

    .line 330
    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 343
    const-string/jumbo v1, "== User Agent =="

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-virtual {p0}, Lcom/yelp/android/appdata/n;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 350
    const-string/jumbo v1, "== Log In Info =="

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-interface {p1}, Lcom/yelp/android/appdata/p;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    return-object v2

    .line 323
    :catch_0
    move-exception v0

    .line 324
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error fetching connectivity manager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_0

    .line 332
    :cond_0
    const-string/jumbo v0, "No network is active on device!"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 335
    :cond_1
    const-string/jumbo v0, "Error fetching connectivity manager: null"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yelp/android/appdata/n;->e:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/yelp/android/appdata/n;->e:Ljava/util/LinkedHashMap;

    const-string/jumbo v1, "ywsid"

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/appdata/n;->h:Lcom/yelp/android/appdata/o;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/o;->a()Z

    move-result v0

    return v0
.end method

.method public varargs a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 118
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 119
    aget-object v1, p1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    :try_start_0
    aget-object v1, p1, v0

    const-string/jumbo v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    const-string/jumbo v2, "DeviceInfo"

    const-string/jumbo v3, "Could not encode argument into URL"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    const-string/jumbo v1, ""

    aput-object v1, p1, v0

    goto :goto_1

    .line 128
    :cond_1
    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/yelp/android/appdata/n;->a:Landroid/content/Context;

    const-string/jumbo v1, "DeviceInfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 178
    const-string/jumbo v0, "KEY_Y_DEVICE_ID"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "y_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "KEY_Y_DEVICE_ID"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 152
    iget-object v0, p0, Lcom/yelp/android/appdata/n;->a:Landroid/content/Context;

    const-string/jumbo v1, "DeviceInfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 153
    const-string/jumbo v0, "KEY_UNKNOWN_ID"

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_1

    move-object p1, v0

    .line 168
    :cond_0
    :goto_0
    return-object p1

    .line 160
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "9774d56d682e549c"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "KEY_UNKNOWN_ID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/yelp/android/appdata/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/yelp/android/appdata/n;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/yelp/android/e/m;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/e/m",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 200
    iget-object v0, p0, Lcom/yelp/android/appdata/n;->a:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 202
    const/16 v2, 0x11

    invoke-static {v2}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 208
    :goto_0
    new-instance v0, Lcom/yelp/android/e/m;

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/yelp/android/e/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 205
    :cond_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method public e()J
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 219
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/yelp/android/appdata/n;->a:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 222
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 223
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 225
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    .line 241
    :goto_0
    return-wide v0

    .line 228
    :cond_0
    const-wide/16 v0, -0x1

    .line 230
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string/jumbo v3, "/proc/meminfo"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 232
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v3, v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 233
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 234
    const-string/jumbo v4, "\\s+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 235
    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit16 v0, v2, 0x400

    int-to-long v0, v0

    .line 237
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public f()J
    .locals 4

    .prologue
    .line 251
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 252
    iget-object v0, p0, Lcom/yelp/android/appdata/n;->a:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 254
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 256
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public g()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/yelp/android/appdata/n;->e:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public h()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 382
    .line 384
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/appdata/n;->a:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    if-nez v0, :cond_0

    move v0, v1

    .line 398
    :goto_0
    return v0

    .line 385
    :catch_0
    move-exception v0

    move v0, v1

    .line 386
    goto :goto_0

    .line 393
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_1

    .line 395
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 398
    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/yelp/android/appdata/n;->f:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 470
    iget-object v0, p0, Lcom/yelp/android/appdata/n;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/yelp/android/appdata/n;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "operator"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 474
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/n;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method k()Z
    .locals 3

    .prologue
    .line 482
    iget-object v0, p0, Lcom/yelp/android/appdata/n;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/yelp/android/appdata/n;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "operator"

    iget-object v2, p0, Lcom/yelp/android/appdata/n;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 486
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected l()F
    .locals 1

    .prologue
    .line 490
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method
