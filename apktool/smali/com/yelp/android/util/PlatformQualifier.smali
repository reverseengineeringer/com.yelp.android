.class public abstract enum Lcom/yelp/android/util/PlatformQualifier;
.super Ljava/lang/Enum;
.source "PlatformQualifier.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/util/PlatformQualifier;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/util/PlatformQualifier;

.field public static final enum SensisYellowPages:Lcom/yelp/android/util/PlatformQualifier;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/yelp/android/util/PlatformQualifier$1;

    const-string/jumbo v1, "SensisYellowPages"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/PlatformQualifier$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/util/PlatformQualifier;->SensisYellowPages:Lcom/yelp/android/util/PlatformQualifier;

    .line 13
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/yelp/android/util/PlatformQualifier;

    sget-object v1, Lcom/yelp/android/util/PlatformQualifier;->SensisYellowPages:Lcom/yelp/android/util/PlatformQualifier;

    aput-object v1, v0, v2

    sput-object v0, Lcom/yelp/android/util/PlatformQualifier;->$VALUES:[Lcom/yelp/android/util/PlatformQualifier;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/yelp/android/util/PlatformQualifier$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/util/PlatformQualifier;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/util/PlatformQualifier;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/yelp/android/util/PlatformQualifier;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/PlatformQualifier;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/util/PlatformQualifier;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/yelp/android/util/PlatformQualifier;->$VALUES:[Lcom/yelp/android/util/PlatformQualifier;

    invoke-virtual {v0}, [Lcom/yelp/android/util/PlatformQualifier;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/util/PlatformQualifier;

    return-object v0
.end method


# virtual methods
.method abstract isQualified(Landroid/content/Context;)Z
.end method

.method public final qualifies(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 30
    invoke-static {p1}, Lcom/yelp/android/appdata/BaseYelpApplication;->d(Landroid/content/Context;)Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->x()Lcom/yelp/android/appdata/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/j;->a(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/util/PlatformQualifier;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/util/PlatformQualifier;->isQualified(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method
